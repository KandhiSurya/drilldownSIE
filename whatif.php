<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>What If - Kalkulator Produktivitas Padi</title>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <style type="text/css">
        /* Mengganti latar belakang website */
        body {
            background-color:rgb(145, 255, 154); /* Ganti dengan warna yang diinginkan */
            /* background-image: url('path/to/your/image.jpg'); */ /* Uncomment jika ingin menggunakan gambar */
            background-size: cover; /* Menyesuaikan ukuran gambar agar memenuhi layar */
            background-repeat: no-repeat; /* Menghindari pengulangan gambar */
        }
        .nav-buttons {
            margin: 20px;
            text-align: center;
        }
        .nav-buttons a {
            padding: 10px 20px;
            margin: 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .nav-buttons a:hover {
            background-color: #45a049;
        }
        .form-container {
            text-align: center;
            margin: 20px;
        }
        select, input, button {
            padding: 10px;
            font-size: 16px;
            margin: 10px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>

<h1 style="text-align: center;">What If Kalkulator Produktivitas Padi</h1>

<!-- Form untuk memilih data -->
<div class="form-container">
    <form method="POST">
        <label for="data-type">Pilih Data yang Akan Diubah:</label>
        <select id="data-type" name="data-type" required>
            <option value="luas_lahan">Luas Lahan</option>
            <option value="produksi">Produksi</option>
        </select><br>

        <label for="kabupaten_kota">Pilih Kabupaten/Kota:</label>
        <select id="kabupaten_kota" name="kabupaten_kota" required>
            <option value="Surabaya">Surabaya</option>
            <option value="Sidoarjo">Sidoarjo</option>
            <option value="Mojokerto">Mojokerto</option>
            <option value="Malang">Malang</option>
            <option value="Pacitan">Pacitan</option>
            
        </select><br>

        <label for="rentang_tahun">Pilih Rentang Tahun:</label>
        <select id="rentang_tahun" name="rentang_tahun" required>
            <option value="2022">2022</option>
            <option value="2023">2023</option>
        </select><br>

        <div id="input-data">
          <!-- Placeholder untuk input data yang berubah (Luas Lahan atau Produksi) -->
        </div>

        <button type="submit" name="calculate">Hitung Produktivitas</button>
    </form>
</div>

<?php
if (isset($_POST['calculate'])) {
    $dataType = $_POST['data-type'];
    $kabupatenKota = $_POST['kabupaten_kota'];
    $rentangTahun = $_POST['rentang_tahun'];

    // Koneksi ke database
    $host = "localhost";
    $user = "root";
    $password = "";
    $db = "tanaman_pangan";
    $koneksi = new mysqli($host, $user, $password, $db) or die("Gagal koneksi");

    // Ambil data sesuai pilihan pengguna
    if ($dataType == "luas_lahan") {
        // Ambil data luas panen dan input produksi dari pengguna
        $inputProduksi = $_POST['produksi'];
        $queryLuasLahan = "
            SELECT SUM(nilai) AS luas_lahan
            FROM luas_panen
            WHERE komoditi = 'Padi' AND tahun = '$rentangTahun' AND kabupaten_kota = '$kabupatenKota'
        ";
        $resultLuasLahan = mysqli_query($koneksi, $queryLuasLahan);
        $luasLahanData = mysqli_fetch_assoc($resultLuasLahan)['luas_lahan'];
        
        // Hitung produktivitas
        $produktivitas = (($inputProduksi) / $luasLahanData) * 10;
    } else {
        // Ambil data produksi dan input luas lahan dari pengguna
        $inputLuasLahan = $_POST['luas_lahan'];
        $queryProduksi = "
            SELECT SUM(nilai) AS produksi
            FROM produksi
            WHERE komoditi = 'Padi' AND tahun = '$rentangTahun' AND kabupaten_kota = '$kabupatenKota'
        ";
        $resultProduksi = mysqli_query($koneksi, $queryProduksi);
        $produksiData = mysqli_fetch_assoc($resultProduksi)['produksi'];
        
        // Hitung produktivitas
        $produktivitas = (($produksiData) / $inputLuasLahan) * 10;
    }

    // Tampilkan hasil dalam tabel
    echo "<h2 style='text-align: center;'>Hasil Kalkulasi Produktivitas</h2>";
    echo "<table><tr><th>Kabupaten/Kota</th><th>Tahun</th><th>Data yang Diubah</th><th>Produktivitas (%)</th></tr>";
    echo "<tr><td>$kabupatenKota</td><td>$rentangTahun</td><td>" . ($dataType == "luas_lahan" ? number_format($inputProduksi, 2) : number_format($inputLuasLahan, 2)) . "</td><td>" . number_format($produktivitas, 2) . "</td></tr></table>";

    // Grafik hasil
    echo "<div id='container' style='width: 80%; height: 400px; margin: 0 auto;'></div>";

    echo "<script type='text/javascript'>
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Produktivitas Padi di $kabupatenKota Tahun $rentangTahun'
            },
            xAxis: {
                categories: ['Produktivitas']
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Produktivitas (%)'
                }
            },
            series: [{
                name: 'Produktivitas',
                data: [" . number_format($produktivitas, 2) . "]
              }]
          });
      </script>";
}
?>

<!-- Navigation buttons -->
<div class="nav-buttons">
    <a href="index.php">Kembali ke halaman utama</a>
</div>

<script>
// Script untuk menampilkan input yang berbeda berdasarkan pilihan
const dataTypeSelect = document.getElementById('data-type');
const inputDataDiv = document.getElementById('input-data');

dataTypeSelect.addEventListener('change', function() {
    if (this.value == 'luas_lahan') {
      inputDataDiv.innerHTML = `
          <label for="produksi">Masukkan Nilai Produksi (Ton):</label>
          <input type="number" id="produksi" name="produksi" required>
      `;
    } else {
      inputDataDiv.innerHTML = `
          <label for="luas_lahan">Masukkan Luas Lahan (Ha):</label>
          <input type="number" id="luas_lahan" name="luas_lahan" required>
      `;
   }
});

// Trigger perubahan awal
dataTypeSelect.dispatchEvent(new Event('change'));
</script>

</body>
</html>

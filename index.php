<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DrillDown Luas dan hasil produksi padi - Jawa Timur 2022-2023</title>

        <style type="text/css">
            /* Add custom styles if necessary */
            .nav-buttons {
                margin: 20px;
                text-align: center;
            }
            .nav-buttons a {
                padding: 10px 20px;
                margin: 10px;
                background-color:rgb(0, 0, 0);
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-size: 16px;
            }
            .nav-buttons a:hover {
                background-color:rgb(69, 70, 160);
            }
        </style>
    </head>
    <body>

        <script src="code/highcharts.js"></script>
        <script src="code/modules/data.js"></script>
        <script src="code/modules/drilldown.js"></script>

        <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

        <script type="text/javascript">
            Highcharts.chart('container', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: '<b>Data Luas Lahan dan Produksi Padi <br/>Tahun 2022-2023</b>'
                },
                subtitle: {
                    text: 'Jawa Timur'
                },
                accessibility: {
                    announceNewData: {
                        enabled: true
                    }
                },
                xAxis: {
                    type: 'category'
                },
                yAxis: {
                    title: {
                        text: 'persentase'
                    }
                },
                legend: {
                    enabled: false
                },
                plotOptions: {
                    series: {
                        borderWidth: 0,
                        dataLabels: {
                            enabled: true,
                            format: '{point.y:.2f}%'
                        }
                    }
                },

                tooltip: {
                    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> dari total<br/>'
                },

                "series": [
                    {   
                        "name": "Luas Lahan",
                        "colorByPoint": true,
                        "data": [
                        <?php
                        $host="localhost";
                        $user="root";
                        $password="";
                        $db = "tanaman_pangan";
                        $koneksi = new mysqli($host, $user, $password, $db) or die("Gagal koneksi");

                        $query = mysqli_query($koneksi, "
                            SELECT b.*, ((jumlah/total)*100) as prosentase 
                            FROM (
                                SELECT a.*, (SELECT SUM(nilai) FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023) total 
                                FROM (
                                    SELECT kabupaten_kota, 'Ha' AS 'satuan', rentang_tahun, MAX(tahun) tahun, SUM(nilai) AS jumlah
                                    FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 
                                    GROUP BY kabupaten_kota
                                ) a
                            ) b") or die(mysqli_error());

                        while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                        ?>
                        {
                            "name": "<?php echo $data['kabupaten_kota']; ?>",
                            "colorByPoint": true,
                            "y": parseFloat("<?php echo $data['prosentase']; ?>"),
                            "drilldown": "<?php echo $data['kabupaten_kota']; ?>-luas-lahan"
                        },
                        <?php } ?>
                        ]
                    },
                    {   
                        "name": "Produksi",
                        "colorByPoint": true,
                        "data": [
                        <?php
                        $query = mysqli_query($koneksi, "
                            SELECT b.*, ((jumlah/total)*100) as prosentase 
                            FROM (
                                SELECT a.*, (SELECT SUM(nilai) FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023) total 
                                FROM (
                                    SELECT kabupaten_kota, 'Ton' AS 'satuan', rentang_tahun, MAX(tahun) tahun, SUM(nilai) AS jumlah
                                    FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 
                                    GROUP BY kabupaten_kota
                                ) a
                            ) b") or die(mysqli_error());

                            while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                            ?>
                            {
                                "name": "<?php echo $data['kabupaten_kota']; ?>",
                                "colorByPoint": true,
                                "y": parseFloat("<?php echo $data['prosentase']; ?>"),
                                "drilldown": "<?php echo $data['kabupaten_kota']; ?>-produksi"
                            },
                            <?php } ?>
                            ]
                        }
                    ], 
                "drilldown": { 
                    "series": [
                    <?php
                    // Drilldown untuk Luas Lahan
                    $query = mysqli_query($koneksi, "
                        SELECT b.*, ((jumlah/total)*100) AS prosentase FROM(
                            SELECT a.*, (SELECT SUM(nilai) FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023) total
                            FROM (
                                SELECT id, kabupaten_kota, 'Ha' AS 'satuan', rentang_tahun, MAX(tahun) tahun, SUM(nilai) AS jumlah
                                FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023
                                GROUP BY kabupaten_kota
                            ) a
                        ) b") or die(mysqli_error());

                    while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)){
                        $tr = $data['kabupaten_kota'];
                    ?>
                    {       
                        "name": "<?php echo $data['kabupaten_kota']; ?> (Luas Lahan)", 
                        "colorByPoint": true,
                        "id": "<?php echo $data['kabupaten_kota']; ?>-luas-lahan",
                        "data": [ 
                        <?php
                        $query1 = mysqli_query($koneksi, "
                            SELECT b.*, ((jumlah/total)*100) as prosentase FROM(
                                SELECT a.*, (SELECT SUM(nilai) FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 AND kabupaten_kota='$tr') total
                                FROM (
                                    SELECT kabupaten_kota, 'Ha' AS 'satuan', rentang_tahun, tahun, nilai AS jumlah
                                    FROM luas_panen WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 AND kabupaten_kota='$tr'
                                ) a
                            ) b") or die(mysqli_error());

                        while ($data1 = mysqli_fetch_array($query1, MYSQLI_ASSOC)){
                            echo "[".$data1['tahun'].",".$data1['prosentase']."],";   
                        } 
                        ?>
                        ]
                    },<?php } ?>

                    // Drilldown untuk Produksi
                    <?php
                    $query = mysqli_query($koneksi, "
                        SELECT b.*, ((jumlah/total)*100) AS prosentase FROM(
                            SELECT a.*, (SELECT SUM(nilai) FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023) total
                            FROM (
                                SELECT id, kabupaten_kota, 'Ton' AS 'satuan', rentang_tahun, MAX(tahun) tahun, SUM(nilai) AS jumlah
                                FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023
                                GROUP BY kabupaten_kota
                            ) a
                        ) b") or die(mysqli_error());

                    while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)){
                        $tr = $data['kabupaten_kota'];
                    ?>
                    {       
                        "name": "<?php echo $data['kabupaten_kota']; ?> (Produksi)", 
                        "colorByPoint": true,
                        "id": "<?php echo $data['kabupaten_kota']; ?>-produksi",
                        "data": [ 
                        <?php
                        $query1 = mysqli_query($koneksi, "
                            SELECT b.*, ((jumlah/total)*100) as prosentase FROM(
                                SELECT a.*, (SELECT SUM(nilai) FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 AND kabupaten_kota='$tr') total
                                FROM (
                                    SELECT kabupaten_kota, 'Ton' AS 'satuan', rentang_tahun, tahun, nilai AS jumlah
                                    FROM produksi WHERE komoditi='Padi' AND tahun BETWEEN 2022 AND 2023 AND kabupaten_kota='$tr'
                                ) a
                            ) b") or die(mysqli_error());

                        while ($data1 = mysqli_fetch_array($query1, MYSQLI_ASSOC)){
                            echo "[".$data1['tahun'].",".$data1['prosentase']."],";   
                        } 
                        ?>
                        ]
                    },<?php } ?>
                    ]
                }
            });
        </script>

        <!-- Navigation buttons -->
        <div class="nav-buttons">
            <a href="whatif.php">Produktivitas</a>
        </div>

    </body>
</html>

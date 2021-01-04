<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <style type="text/css" media="print">
        body {
            font-family : Arial;
            font-size : 12px;
        }

        .cetak {
            width : 19cm;
            height : 27cm;
            padding : 1cm;
        }
        
        table {
            border : solid thin #000;
            border-collapse : collapse;
        }

        td, th {
            padding : 3mm 6mm;
            text-align : left;
            vertical-align : top;
        }

        th {
            background-color : #f5f5f5;
            font-weight : bold;
        }

        h1 {
            text-align : center;
            font-size : 18px;
            text-transform : uppercase;
        }
    </style>
    <style type="text/css" media="screen">
        body {
            font-family : Arial;
            font-size : 12px;
        }

        .cetak {
            width : 19cm;
            height : 27cm;
            padding : 1cm;
        }
        
        table {
            border : solid thin #000;
            border-collapse : collapse;
        }

        td, th {
            padding : 3mm 6mm;
            text-align : left;
            vertical-align : top;
        }

        th {
            background-color : #f5f5f5;
            font-weight : bold;
        }

        h1 {
            text-align : center;
            font-size : 18px;
            text-transform : uppercase;
        }

    </style>
</head>
    <body onload="print()">
        <div class="row">
            <div class="cetak">
                <br>
                <div style="padding:0cm 0cm 1cm 0cm;">
                    <h3 align="center">Gejala Yang Dipilih :</h3>
                    <table align="center">
                        <tr>
                            <th align="center">#</th>
                            <th align="center">Nama Gejala</th>
                        </tr>
                        <?php $no=1; foreach ($pilihan_gejala as $row) { ?>
                        <tr>
                            <td style="text-align:center;"><?= $no++ ?></td>
                            <td><?= $row['nama_gejala'] ?></td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
                <div style="padding:0cm 0cm 1cm 0cm;">
                    <h3 align="center">Kemungkinan Penyakit :</h3>
                    <table align="center">
                        <tr>
                            <th align="center">#</th>
                            <th align="center">Nama Penyakit / Hama</th>
                        </tr>
                        <?php $no=1; foreach ($prob_ds as $row) { ?>
                        <tr>
                            <td style="text-align:center;"><?= $no++ ?></td>
                            <td><?= $row['nama_penyakit'] ?></td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
                <h3 align="center">Hasil Akhir :</h3>
                <table class="table table-bordered" id="example3" align="center">
                    <thead>
                        <tr>
                            <th>Penyakit / Hama Yang Diderita (Dempster Shafer)</th>
                            <td><?= $rank_ds['nama_penyakit']; ?></td>
                        </tr>
                        <tr>
                            <th>Penyakit / Hama Yang Diderita (Certainty Factor)</th>
                            <td><?= $rank_cf['nama_penyakit']; ?></td>
                        </tr>
                    </thead>
                </table>
                <div style="padding:0cm 0cm 1cm 0cm;">
                    <h3 align="center">Keterangan Penyakit / Hama dari Hasil Dempster Shafer :</h3>
                    <p><?= $rank_ds['ket']; ?></p>
                    <h3 align="center">Solusi Penyakit / Hama dari Hasil Dempster Shafer :</h3>
                    <p><?= $rank_ds['solusi']; ?></p>
                </div>
                <div style="padding:0cm 0cm 1cm 0cm;">
                    <h3 align="center">Keterangan Penyakit / Hama dari Hasil Certainty Factor :</h3>
                    <p><?= $rank_cf['ket']; ?></p>
                    <h3 align="center">Solusi Penyakit / Hama dari Hasil Certainty Factor :</h3>
                    <p><?= $rank_cf['solusi']; ?></p>
                </div>
            </div>
        </div>
    </body>

</html>
<?php
include 'config.php';

// Handle form submissions
$diagnosis = null;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $selected_gejala = $_POST['gejala'];
    $gejala_count = count($selected_gejala);

    if ($gejala_count >= 3) {
        $selected_gejala_ids = implode(",", $selected_gejala);

        $query = "SELECT penyakit.nama AS penyakit_nama, solusi.nama AS solusi_nama
                  FROM aturan 
                  JOIN penyakit ON aturan.penyakit_id = penyakit.id 
                  JOIN solusi ON aturan.solusi_id = solusi.id
                  WHERE aturan.gejala_id IN ($selected_gejala_ids) 
                  GROUP BY penyakit.id 
                  HAVING COUNT(DISTINCT aturan.gejala_id) = $gejala_count";
        $result = mysqli_query($conn, $query);
        $diagnosis = mysqli_fetch_assoc($result);
    } else {
        $diagnosis = null;
    }
}
$gejala = mysqli_query($conn, "SELECT * FROM gejala");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Diagnosa</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Bootstrap CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />

    < <!-- Custom CSS -->
    <style>
        .container {
            margin-top: 50px;
        }

        .checkbox-label {
            margin-left: 8px;
        }

        .card-body {
            background-color: #f8f9fa; /* Background color for the left side */
            padding: 15px;
        }

        .card-body h1 {
            font-size: 2rem; /* Larger font size for heading */
        }

        .card-body p, .card-body label {
            font-size: 1.25rem; /* Larger font size for text and labels */
        }

        .result-box {
            border: 1px solid #ddd;
            padding: 15px;
            background-color: orange; /* Background color for the right side */
            color: #1d3c45; /* black text color for contrast */
            border-radius: 5px;
        }

        .result-box h2 {
            font-size: 1.5rem; /* Larger font size for heading */
        }

        .result-box p {
            font-size: 1.25rem; /* Larger font size for text */
            margin: 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <a href="index.php" class="btn btn-secondary mb-3">Kembali</a>
                <div class="card mb-5">
                    <div class="card-header">
                        <h1>Diagnosa</h1>
                    </div>
                    <div class="card-body">
                        <p>Silahkan Pilih Gejala yang Anda Rasakan</p>
                        <form method="POST" action="konsultasi.php">
                            <div class="mb-3">
                                <?php while ($row = mysqli_fetch_assoc($gejala)) : ?>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="gejala[]" value="<?php echo $row['id']; ?>" id="gejala<?php echo $row['id']; ?>">
                                        <label class="form-check-label checkbox-label" for="gejala<?php echo $row['id']; ?>">
                                            <?php echo $row['nama']; ?>
                                        </label>
                                    </div>
                                <?php endwhile; ?>
                            </div>
                            <button type="submit" class="btn btn-primary">Diagnosa</button>
                        </form>
                        </div>
                </div>
            </div>
            
            <!-- Kolom untuk menampilkan hasil diagnosa dan solusi -->
            <div class="col-md-4">
                <div class="result-box">
                    <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                        <?php if ($diagnosis) : ?>
                            <h2>Hasil Diagnosa:</h2>
                            <p><strong>Penyakit:</strong> <?php echo $diagnosis['penyakit_nama']; ?></p>
                            <p><strong>Solusi:</strong> <?php echo $diagnosis['solusi_nama']; ?></p>
                        <?php else : ?>
                            <h2 class="text-danger">Penyakit belum diketahui, silahkan hubungi dokter secepatnya</h2>
                        <?php endif; ?>
                    <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="assets/js/bootstrap.js"></script>
</body>

</html>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $title; ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>

    <!-- memanggil parsial -->
    <?= $this->include('layout/navbar'); ?>


    <!-- template layout #namanya bebas contoh content-->
    <?= $this->renderSection('content'); ?>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

    <!-- custom javascript -->
    <script>
        function previewImg() {
            const sampul = document.querySelector('#sampul');
            // const namaSampul = document.querySelector('.custom-file-label'); contoh taruh di label atau placeholder
            const imgPreview = document.querySelector('.img-preview');

            // sampulLabel.textContent = sampul.files[0].name; untuk ubah placehoder jadi nama file yang dipilih

            const fileSampul = new FileReader();
            fileSampul.readAsDataURL(sampul.files[0]);
            fileSampul.onload = function(e) {
                imgPreview.src = e.target.result;
            }
        }
    </script>

</body>

</html>
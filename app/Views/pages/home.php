<!-- cara pakai template layoutnya -->
<?= $this->extend('layout/template'); ?>


<!-- cara untuk kasih nama section : template layout -->
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>INI halaman home</h1>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>
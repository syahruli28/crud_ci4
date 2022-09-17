<!-- cara pakai template layoutnya -->
<?= $this->extend('layout/template'); ?>

<!-- cara untuk kasih nama section : template layout -->
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>INI halaman about</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt repudiandae sed id dignissimos perferendis iusto? Animi minima consectetur dolorum facere.</p>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>
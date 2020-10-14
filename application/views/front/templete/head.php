<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-BANSOS - Home</title>
    <meta name="description" content="E-Bansos - Aplikasi Bansos Kabupaten Bangka Barat">

    <meta name="image" content="assets/images/logo/logo.jpg">

    <meta property="og:url" content="home">
    <meta property="og:title" content="E-Bansos - Home">
    <meta property="og:description" content="E-Bansos - Aplikasi Bansos Kabupaten Bangka Barat">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Epormas">

    <meta name="image" content="#">

    <link href="<?php echo base_url('assets/plugins/') ?>asli/elegant-fonts.min.css" rel="stylesheet" type="text/css">
    <link href="images/logo/logo.jpg" rel="shortcut icon" type="image/ico" />

    <link href="<?php echo base_url('assets/plugins/') ?>font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/plugins/') ?>asli/elegant-fonts.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>asli/datepicker.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>asli/zabuto_calendar.min.css" type="text/css">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>asli/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>trackpad-scroll-emulator.min.css" type="text/css">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>jquery.nouislider.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>asli/style.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/plugins/') ?>asli/dropzone.css">

    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>asli/jquery-2.2.1.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>maps.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>bootstrap-select.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>asli/richmarker-compiled.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>asli/notify.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/') ?>dropzone.js"></script>

    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,400italic' rel='stylesheet' type='text/css'>

    <meta name="csrf-token" content="Mi9JmlGM6cwIgqYS4YepBUNHcTH68qOXbg3THvH0">

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAfrFVl6oHkNKP0yM6EVYypfg1OiZ5UPII&libraries=places"></script>

</head>

<body class="homepage">
    <div class="page-wrapper">
        <header id="page-header">
            <nav>
                <div class="left">
                    <a href="home" class="brand"><img width="50px" style="padding:5px;margin-right:5px;" src="assets/images/logo/logo.jpg" alt=""></a>
                </div>
                <div class="right">
                    <div class="primary-nav has-mega-menu">
                        <ul class="navigation" id="navbar">
                            <li class="active"><a href="<?= base_url('home') ?>">Home</a></li>
                            <li><a href="<?= base_url('home/proposal') ?>">Proposal</a></li>
                            <li><a href="<?= base_url('home/tentang') ?>">Tentang</a></li>
                            <li><a href="<?= base_url('home/peraturan') ?>">Peraturan</a></li>
                            <li><a href="<?= base_url('home/pengumuman') ?>">Pengumuman</a></li>
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle padding-user" data-toggle="dropdown">
                                    Akun
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <li class="p-t-3"><a href="<?= base_url('auth/login') ?>" style="color: #000;">Masuk</a></li>
                                    <!-- <li class="p-t-3"><a href="<?= base_url('user/masuk') ?>" style="color: #000;">Masuk</a></li> -->
                                    <li class="p-t-3"><a href="<?= base_url('auth/register') ?>" style="color: #000;">Daftar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
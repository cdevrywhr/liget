<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Login | E-Bansos Bangka Barat</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="assets/plugins/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
  <link href="assets/plugins/asli/bootstrap-responsive.css" rel="stylesheet" />
  <link href="assets/plugins/asli/stylel.css" rel="stylesheet" />
  <style type="text/css">
    .row .row,
    .row-fluid .row-fluid {
      margin-bottom: 0px !important;
    }
  </style>
</head>

<body>
  <div id="wrapper">
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="">
              <h2>Selamat Datang di <strong>E-Hibah
                </strong></h2>
              <h2><strong>Bangka Barat</strong></h2>
              <img src="https://satulogin.bantenprov.go.id/flatern/img/sso.png">
            </div>
          </div>
          <div class="col-lg-6">
            <h2>Login Sebagai <strong> Member </strong> </h2>
            <?php echo validation_errors() ?>
            <?php echo form_open() ?>
            <div class="row">
              <div class="col">
                <div class="span6 form-group">
                  Username
                </div>
                <div class="span6 form-group">
                  <input type="text" name="username" class="form-control">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col">
                <div class="span6 form-group">
                  Password
                </div>
                <div class="span6 form-group">
                  <input type="password" name="password" class="form-control">
                </div>
              </div>
            </div>

            <p class="text-left">
              <button class="btn btn-primary" type="submit">Login</button>
            </p>
            </form>
            <p class="text-right"><a href="<?php echo base_url('auth/forgot_password') ?>"> Lupa Password </a> atau <a href="<?= base_url('daftar'); ?>">Daftar</a></p>

          </div>
        </div>
      </div>
    </section>
  </div>
</body>

</html>
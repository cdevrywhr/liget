<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Daftar | E-Bansos Bangka Barat</title>
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
      margin-top: 0px !important
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
              <h2>Selamat Datang di <strong>E-Bansos Babar</strong></h2>
              <img src="https://satulogin.bantenprov.go.id/flatern/img/sso2.jpg">
            </div>
          </div>
          <div class="col-lg-6">
            <h2>Daftar Sebagai <strong> Member </strong> </h2>

            <div class="">
              <p class="" style="font-weight: bold; font-size:24px"><?= $page_title ?></p>
              <?php if ($this->session->flashdata('message')) {
                echo $this->session->flashdata('message');
              } ?>
              <?php echo validation_errors() ?>
              <div class="col-lg-12">
                <?php echo form_open_multipart($register) ?>
                <div class="form-group has-feedback">
                  <label for="">Nama Lengkap Individu/Lembaga (*)</label>
                  <?php echo form_input($name) ?>
                  <span class="form-control-feedback"></span>
                </div>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group has-feedback">
                      <label for="">Email (*)</label>
                      <?php echo form_input($email) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group has-feedback">
                      <label for="">No Hp (*)</label>
                      <?php echo form_input($nohp) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                  </div>
                </div>
                <div class="form-group has-feedback">
                  <label for="">NIK (*)</label>
                  <?php echo form_input($nik) ?>
                  <span class="form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <label for="">NPWP (*)</label>
                  <?php echo form_input($npwp) ?>
                  <span class="form-control-feedback"></span>
                </div>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group"><label>KTP (*)</label>
                      <input type="file" name="photo" id="photo" onchange="photoPreview(this,'preview')" />
                      <p class="help-block">Maximum file size is 2Mb</p>
                      <b>Photo Preview</b><br>
                      <img id="preview" width="350px" />
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group"><label>NPWP (*)</label>
                      <input type="file" name="photonpwp" id="photonpwp" onchange="photoPreview2(this,'preview2')" />
                      <p class="help-block">Maximum file size is 2Mb</p>
                      <b>Photo Preview</b><br>
                      <img id="preview2" width="350px" />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group has-feedback">
                      <label for="">Username (*)</label>
                      <?php echo form_input($username) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                      <label for="">Password (*)</label>
                      <?php echo form_password($password) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group has-feedback">
                      <label for="">Alamat (*)</label>
                      <?php echo form_input($alamat) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                      <label for="">Konfirmasi Password (*)</label>
                      <?php echo form_password($password_confirm) ?>
                      <span class="form-control-feedback"></span>
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Daftar</button>
                  </div>

                  <div class="col-lg-12" style="margin-top: 10px;">
                    <a href="<?php echo base_url('auth/login') ?>" class="">Sudah Punya Akun? Masuk</a>
                  </div>
                  <!-- /.col -->
                </div>
                </form>
              </div>

              <div class="row">

              </div>

            </div>
          </div>
        </div>
      </div>
    </section>

  </div>

</body>

</html>
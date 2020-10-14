<!DOCTYPE html>
<html>

<head>
    <title><?php echo $page_title . ' | ' . $company_data->company_name ?></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>font-awesome/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url('assets/template/back/') ?>dist/css/AdminLTE.min.css">
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo base_url('assets/images/company/' . $company_data->company_photo_thumb) ?>" />
</head>

<body class="hold-transition login-page">
    <br>
    <div class="container">
        <!-- <div class="login-logo">
            <b><a href="<?php echo base_url() ?>"><?php echo $company_data->company_name ?></a></b>
        </div> -->
        <!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg" style="font-weight: bold; font-size:24px"><?= $page_title ?></p>
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
                    <label for="">NPWP</label>
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
        <br>
        <!-- /.login-box-body -->
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <script src="<?php echo base_url('assets/plugins/') ?>bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

        <script type="text/javascript">
            $('#birthdate').datepicker({
                autoclose: true,
                zIndexOffset: 9999
            })

            $("#data_access_id").select2({
                placeholder: "- Please Choose Data Access -",
                theme: "flat"
            });

            function photoPreview(photo, idpreview) {
                var gb = photo.files;
                for (var i = 0; i < gb.length; i++) {
                    var gbPreview = gb[i];
                    var imageType = /image.*/;
                    var preview = document.getElementById(idpreview);
                    var reader = new FileReader();
                    if (gbPreview.type.match(imageType)) {
                        //jika tipe data sesuai
                        preview.file = gbPreview;
                        reader.onload = (function(element) {
                            return function(e) {
                                element.src = e.target.result;
                            };
                        })(preview);
                        //membaca data URL gambar
                        reader.readAsDataURL(gbPreview);
                    } else {
                        //jika tipe data tidak sesuai
                        alert("Tipe file tidak sesuai. Gambar harus bertipe .png, .gif atau .jpg.");
                    }
                }
            }
        </script>
        </script>

    </div>
    <!-- /.login-box -->

</body>

</html>
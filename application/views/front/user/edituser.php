<div id="page-content">
    <link href="https://ehibahbansos.bantenprov.go.id/backEnd/css/custom_css/user_profile.css" rel="stylesheet" />
    <div class="block" id="berita">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="https://ehibahbansos.bantenprov.go.id">Home</a></li>
                <li><a href="https://ehibahbansos.bantenprov.go.id/profile">My Profile</a></li>
                <li class="active">Edit My Profile</li>
            </ol>
            <section class="content-header">
                <h2>Edit My Profile <a href="https://ehibahbansos.bantenprov.go.id/profile" class="btn btn-info btn-sm pull-right"><span class="fa fa-chevron-left"></span> Back</a></h2>
                <hr style="margin-top: 0;">
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel ">
                            <div class="panel-body">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <div class="text-center mbl m-t-10">
                                            <img src="https://ehibahbansos.bantenprov.go.id/backEnd/img/authors/avatar1.jpg" alt="img" class="img-circle img-bor" />
                                        </div>
                                    </div>
                                    <div class="profile_user">
                                        <h3 class="user_name_max">robyjulian</h3>
                                    </div>
                                    &nbsp;&nbsp;
                                    <br />
                                </div>
                                <div class="col-md-8">
                                    <form method="POST" action="https://ehibahbansos.bantenprov.go.id/profile/update" accept-charset="UTF-8" class="form-horizontal"><input name="_method" type="hidden" value="PUT"><input name="_token" type="hidden" value="mOUCY4UTIGYWbWl8HMaynTabwKlTNQiU2UIr3PKj">
                                        <input type="hidden" name="id" placeholder="ID" value="3821">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <!-- Nav tabs -->
                                                <ul class="nav nav-tabs nav-custom" style="margin: 0;">
                                                    <li class="active">
                                                        <a href="#tab-activity" data-toggle="tab">
                                                            <strong>Account</strong>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#tab-profile" data-toggle="tab">
                                                            <strong>Biodata</strong>
                                                        </a>
                                                    </li>
                                                    <li class="pull-right">
                                                        <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i> Save</button>
                                                    </li>
                                                </ul>
                                                <!-- Tab panes -->
                                                <div class="tab-content nopadding noborder">
                                                    <div id="tab-activity" class="tab-pane animated fadeInRight fade in active">
                                                        <div class="table-responsive">
                                                            <table class="table table-responsive">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Username</td>
                                                                        <td>robyjulian</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Email</td>
                                                                        <td>robyjulian212@gmail.com</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Status</td>
                                                                        <td>Aktif</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Password</td>
                                                                        <td>
                                                                            <input type="password" name="password" placeholder="Password">
                                                                            <div class="alert alert-info alert-dismissable">
                                                                                *) Kosongkan Password jika tidak ingin dirubah.
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div id="tab-profile" class="tab-pane animated fadeInRight fade">
                                                        <div class="table-responsive">
                                                            <table class="table table-responsive">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Nama</td>
                                                                        <td><input type="text" name="name" placeholder="Nama" value="robyjulian" required></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>NIK</td>
                                                                        <td>232323232323232323</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Alamat</td>
                                                                        <td><textarea name="address" rows="5" placeholder="Alamat" required></textarea></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center"><i class="fa fa-circle"></i></td>
                                                                        <td>Telepon</td>
                                                                        <td><input type="text" name="phone" placeholder="Telepon" value="" required></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- tab-pane -->
                                                </div>
                                                <!-- tab-content -->
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

</div>

>
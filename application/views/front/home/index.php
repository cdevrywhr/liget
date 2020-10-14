<?php $this->load->view('front/templete/head'); ?>
<div id="page-content">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.js"></script>
  <div class="block" id="berita">
    <div class="container">
      <!-- <meta http-equiv="refresh" content="100;"> -->
      <section>
        <section>
          <div class="owl-carousel" style="" data-owl-loop="1" data-owl-margin="10" data-owl-items="1" data-owl-dots="1" data-owl-nav="0" data-owl-autoplay="1">
            <img src="assets/images/upload/1.jpg" alt="">
            <img src="assets/images/upload/1.jpg" alt="">
          </div>
        </section>
        <div class="form search-form">
          <div class="">
            <h2>Tahapan</h2>
            <hr style="margin-top: 0;">
            <div class="col-lg-12">
              <div class="col-lg-4" align="center">
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-plus-square fa-5x"></i><br>
                  <label>Daftar hibah bansos (Proposal Terdaftar)</label>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-play-circle fa-3x" style="padding: 10% 0;"></i>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-tasks fa-5x"></i><br>
                  <label>Proses seleksi (Cek Proposal)</label>
                </div>
              </div>
              <div class="col-lg-4" align="center">
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-play-circle fa-3x" style="padding: 10% 0;"></i>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-check-square fa-5x"></i><br>
                  <label>Hibah bansos disetujui (Proposal Terverifikasi)</label>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-play-circle fa-3x" style="padding: 10% 0;"></i>
                </div>
              </div>
              <div class="col-lg-4" align="center">
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-spinner fa-5x"></i><br>
                  <label>Hibah bansos berjalan</label>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-play-circle fa-3x" style="padding: 10% 0;"></i>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" align="center">
                  <i class="fa fa-share-square fa-5x"></i><br>
                  <label>Mengirimkan laporan (LPJ)</label>
                </div>
              </div>
            </div>
            <h2>
              Statistik Proposal Tahun 2021
            </h2>
            <hr style="margin-top: 0;">
            <form action="#search" method="GET">
              <div class="row">
                <div class="col-md-2 col-sm-4">
                  <div class="form-group">
                    <select class="form-control tahun" name="tahun" required>
                      <option value="">Tahun Anggaran</option>

                      <option value="2019">2019</option>
                      <option value="2020">2020</option>
                      <option value="2021" selected>2021</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-2 col-sm-4">
                  <div class="form-group">
                    <select class="form-control perubahan" name="perubahan" required>
                      <option value="">Pilih</option>
                      <option value="0" selected>-</option>
                      <option value="1">Perubahan</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-2 col-sm-4" align="center">
                  <div class="form-group">
                    <button type="submit" id="btn-filter" class="btn btn-primary width-100 cari"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </section>

      <div class="row per-row">
        <h2>Berdasarkan Jenis</h2>
        <hr style="margin-top: 0;">
        <div class="col-md-4 col-sm-4 kolom">
          <div class="item" data-id="4">
            <div class="additional-info col-lg-12" style="padding: 10px;">
              <div class="description row">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <i class="fa fa-book fa-3x" style="padding: 10% 0;"></i>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <figure>Nilai Pengajuan Hibah</figure>
                      <figure>Rp. 2.632.391.616.054,-</figure>
                    </div>
                  </div>
                </div>
                <div class="col-lg-12">
                  <hr style="margin: 5px 0;">
                </div>
                <div class="row">
                  <div class="col-lg-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <div class="label label-default">Tahun Anggaran 2021 </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <div class="label label-default">Jumlah : 5676</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 kolom">
          <div class="item" data-id="4">
            <div class="additional-info col-lg-12" style="padding: 10px;">
              <div class="description row">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <i class="fa fa-book fa-3x" style="padding: 10% 0;"></i>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <figure>Nilai Pengajuan Bansos</figure>
                      <figure>Rp. 314.892.363.877,-</figure>
                    </div>
                  </div>
                </div>
                <div class="col-lg-12">
                  <hr style="margin: 5px 0;">
                </div>
                <div class="row">
                  <div class="col-lg-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <div class="label label-default">Tahun Anggaran 2021 </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <div class="label label-default">Jumlah : 141</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 kolom">
          <div class="item" data-id="4">
            <div class="additional-info col-lg-12" style="padding: 10px;">
              <div class="description row">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <i class="fa fa-book fa-3x" style="padding: 10% 0;"></i>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <figure>Total Nilai Pengajuan</figure>
                      <figure>Rp. 2.947.283.979.931,-</figure>
                    </div>
                  </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <hr style="margin: 5px 0;">
                </div>
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-4 col-md-4 col-sm-4 pull-left" align="left">
                      <div class="label label-default">Tahun Anggaran 2021 </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 pull-right" align="right">
                      <div class="label label-default">Jumlah : 5817</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>

      <div class="row per-row">
        <h2>Berdasarkan Tahapan</h2>
        <hr style="margin-top: 0;">
        <div class="table-responsive col-lg-12">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>Tahapan</th>
                <th>Hibah</th>
                <th>Bansos</th>
                <th>Proposal</th>
                <th>Nilai Pengajuan</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Daftar</td>
                <td>5657</td>
                <td>139</td>
                <td>5796</td>
                <td>Rp. 2.928.793.252.132,-</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2">Total</td>
                <td>5676</td>
                <td>141</td>
                <td>5817</td>
                <td>Rp. 2.947.283.979.931,-</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
      <br>

      <div class="row per-row">
        <h2>Berdasarkan OPD</h2>
        <hr style="margin-top: 0;">
        <div class="table-responsive col-lg-12">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>OPD</th>
                <th>Hibah</th>
                <th>Bansos</th>
                <th>Proposal</th>
                <th>Nilai Pengajuan</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Badan Perencanaan dan Pembangunan Daerah</td>
                <td>117</td>
                <td>5</td>
                <td>122</td>
                <td>Rp. 495.791.609.563,-</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2">Total</td>
                <td>5676</td>
                <td>141</td>
                <td>5817</td>
                <td>Rp. 2.947.283.979.931,-</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
      <br>
      <div class="row per-row">
        <h2>Grafik Proposal Tahun 2021 </h2>
        <hr style="margin-top: 0;">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6">
              <h2>Berdasarkan Jenis</h2>
              <hr style="margin-top: 0;">
              <canvas id="myChart"></canvas>
            </div>
            <div class="col-lg-6">
              <h2>Berdasarkan Tahapan</h2>
              <hr style="margin-top: 0;">
              <canvas id="myCharttahapan"></canvas>
            </div>
            <div class="col-lg-12">
              <br>
              <h2>Berdasarkan OPD</h2>
              <hr style="margin-top: 0;">
              <canvas id="myChartopd"></canvas>
            </div>
          </div>
        </div>
      </div>
      <br>
      <section class="quotes section" align="center">
        <div class="wrapper">
          <h2>MARI KITA AWASI DAN PANTAU PROGRAM BELANJA HIBAH DAN BANSOS KABUPATEN BANGKA BARAT YANG BERSIH DAN TRANSPARAN</h2>
          <p>Transparansi program bansos dan hibah ini mengajak semua untuk menumbuhkan kebersamaan guna kepentingan bersama masa depan Kabupaten Bangka Barat .</p>
        </div>
      </section>
    </div>
  </div>
  <script>
    var ctx = document.getElementById("myChart");
    var myChart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ["Hibah", "Bansos"],
        datasets: [{
          label: 'Jumlah ',
          data: [5676, 141],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
    var ctx = document.getElementById("myCharttahapan");
    var myChart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ["Daftar", "Pengecekan Proposal", "Verifikasi Proposal", "Ditolak", ],
        datasets: [{
          label: 'Jumlah ',
          data: ["5796", "19", "0", "2", ],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
    var ctx = document.getElementById("myChartopd");
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", ],
        datasets: [{
          label: 'Jumlah ',
          data: ["122", "3", "4", "10", "2", "261", "4", "15", "23", "1", "2", "5", "152", "2", "12", "17", "0", "5", "41", "1", "2", "10", "1", "1", "0", "2", "6", "169", "23", "4866", "5", "11", "4", "2", "4", "12", "3", "14", ],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 99, 132, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255,99,132,1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
  </script>
</div>
<?php $this->load->view('front/templete/foot'); ?>
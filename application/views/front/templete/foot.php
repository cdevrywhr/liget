<footer id="page-footer">
    <div class="footer-wrapper">
        <div class="block">
            <div class="container">
                <div class="vertical-aligned-elements">
                    <div class="element width-50">
                    </div>
                    <div class="element width-50 text-align-right">
                    </div>
                </div>
                <div class="background-wrapper">
                    <div class="bg-transfer opacity-50">
                        <img src="#" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-navigation">
            <div class="container">
                <div class="vertical-aligned-elements">
                    <div class="element width-50">&copy; 2020 E-Bansos</div>
                    <div class="element width-50 text-align-right">
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
<a href="#" class="to-top scroll" data-show-after-scroll="600"><i class="fa fa-arrow-up"></i></a>
<script type="text/javascript" src="assets/plugins/asli/markerclusterer_packed.js"></script>
<script type="text/javascript" src="assets/plugins/asli/infobox.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/jquery.fitvids.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/icheck.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/jquery.trackpad-scroll-emulator.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/jquery.nouislider.all.min.js"></script>
<link href="assets/plugins/asli/jquery.fancybox.css" rel="stylesheet" type="text/css" />
<script src="assets/plugins/asli/jquery.fancybox.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/plugins/asli/jQuery.MultiFile.min.js"></script>
<script type="text/javascript" src="assets/plugins/asli/loadmore.js"></script>
<script type="text/javascript" src="assets/plugins/asli/echo.js"></script>
<script type="text/javascript" src="assets/plugins/asli/custom.js"></script>

<!-- new add -->
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>datatables-bs/css/dataTables.bootstrap.min.css">
<script src="<?= base_url('assets/plugins/') ?>datatables/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url('assets/plugins/') ?>datatables-bs/js/dataTables.bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#dataTable').DataTable({
            'searching': false,
            'lengthChange': false
        });
    });
</script>
<script>
    $(".navigation li").on("click", function() {
        $(".navigation li").removeClass("active");
        $(this).addClass("active");
    });
</script>
<script>
    $(document).ready(function() {
        $("#input").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#dataTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>


</body>

</html>
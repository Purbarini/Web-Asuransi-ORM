<%-- 
    Document   : DataPembayaran
    Created on : Apr 16, 2018, 4:43:29 PM
    Author     : dbayu
--%>

<%@page import="entities.Pembayaran"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ASURANSI</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!-- VENDOR CSS -->
        <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
        <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
        <link rel="stylesheet" href="assets/css/demo.css">
        <!-- GOOGLE FONTS -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
        <!-- ICONS -->
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    </head>

    <body>
        <!-- WRAPPER -->
        <div id="wrapper">
            <!-- NAVBAR -->
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="brand">
                    <a href="index.html"><img src="assets/img/LOGO.jpg" alt="Manula Logo" class="img-responsive logo"></a>
                </div>
                <div class="container-fluid">
                    <div class="navbar-btn">
                        <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
                    </div>
                    <div class="navbar-btn navbar-btn-right">
                    </div>
                </div>
            </nav>
            <!-- END NAVBAR -->
            <!-- LEFT SIDEBAR -->
            <div id="sidebar-nav" class="sidebar">
                <br>
                <div class="sidebar-scroll">
                    <nav>
                        <ul class="nav">
                            <li><a href="index.html" class="active"><span>Home</span></a></li>
                            <li><a href="dataadminservlet" class=""><span>Admin</span></a></li>
                            <li><a href="nasabahServlet" class=""><span>Nasabah</span></a></li>
                            <li><a href="dataasuransiservlet" class=""><span>Asuransi</span></a></li>
                            <li><a href="datapembayaranservlet" class=""><span>Pembayaran</span></a></li>
                            <li>
                                <a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Laporan</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                                <div id="subPages" class="collapse ">
                                    <ul class="nav">
                                        <li><a href="page-profile.html" class="">Nasabah</a></li>
                                        <li><a href="page-login.html" class="">Pembayaran</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- END LEFT SIDEBAR -->
            <!-- END LEFT SIDEBAR -->
            <!-- MAIN -->
            <div class="main">
                <!-- MAIN CONTENT -->
                <div class="main-content">
                    <div class="container-fluid">
                        <!-- OVERVIEW -->
                        <div class="panel panel-headline">
                            <div class="panel-heading">
                                <h3 class="panel-title">DATA PEMBAYARAN</h3>
                            </div>
                            <body>
                                <table border="1">
                                    <thead>
                                        <tr>
                                            <th>NIK</th>
                                            <th>Nama Nasabah</th>
                                            <th>Kode Asuransi</th>
                                            <th>Jenis Asuransi</th>
                                            <th>Tanggal Bayar</th>

                                        </tr>
                                    </thead>
                                    <%
                                        List<Object> datas = (List<Object>) session.getAttribute("data_pembayaran");

                                        for (Object data : datas) {
                                            Pembayaran a = (Pembayaran) data;


                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= a.getNoPolis().getNik()%></td>
                                            <td><%= a.getNoPolis().getNmNasabah()%></td>
                                            <td><%= a.getKodeAsuransi()%></td>
                                            <td><%= a.getKodeAsuransi().getJenisAsuransi()%></td>
                                            <td><%= a.getTglPembayaran()%></td>

                                        </tr>
                                    </tbody>
                                    <%
                                        }
                                    %>
                                </table>
                                <a href="pembayarantoinsert" class="button">Bayar Asuransi</a>
                        </div>
                    </div>
                </div>
                <!-- END OVERVIEW -->
                <div class="clearfix"></div>
                <footer>
                    <div class="container-fluid">
                    </div>
                </footer>
            </div>
            <!-- END WRAPPER -->
            <!-- Javascript -->
            <script src="assets/vendor/jquery/jquery.min.js"></script>
            <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
            <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
            <script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
            <script src="assets/vendor/chartist/js/chartist.min.js"></script>
            <script src="assets/scripts/klorofil-common.js"></script>
    </body>
</html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>


</body>
</html>

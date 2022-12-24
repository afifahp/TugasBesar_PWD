<!DOCTYPE html>
<html>
    <head>
        <title>Sistem Pendataan Pelanggan</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    </head>
    <body style="background: #F0E6EF">
        <br/>
        <br/>
        <br/>
        <br/>

        <center>
            <h2>SISTEM PENDATAAN PELANGGAN <br/> EmotiHelp</h2>
            <h3>Kami siap membantu anda melampiaskan emosi anda.</h3>
        </center>

        <br/>
        <br/>
        <br/>
        <br/>

        <div class = "container">
            <div class = "col-md-6 col-md-offset-6">
                <?php
                    if(isset($_GET['pesan'])){
                        if($_GET['pesan'] == "gagal"){
                            echo "<div class='alert alert-danger'>Login Gagal! Username dan Password Salah!!</div>";    
                        }else if($_GET['pesan'] == "logout"){
                            echo "<div class='alert alert-info'>Anda telah berhasil logout!</div>";
                        }else if($_GET['pesan'] == "belum_login") {
                            echo "<div class='alert alert-danger'>Anda harus login untuk mengakses halaman admin.</div>";
                        }
                    }
                    ?>
                <form action="login.php" method="POST">
                    <div class="panel">
                        <br/>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" class="form-control" name="username">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password">
                            </div>

                            <input type="submit" class="btn btn-primary" value="Log In">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
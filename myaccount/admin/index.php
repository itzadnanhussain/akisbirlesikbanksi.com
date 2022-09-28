 <?php
require_once("../scripts/functions.php");
require_once("../includes/passwordsq.php");

 
?>   
<!DOCTYPE html>
<html lang="en-US" class="js">
<head>  
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?php echo $description ?>">
    <link rel="shortcut icon" href="../images/<?php echo $favicon ?>" type="image/x-icon">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="../images/<?php echo $favicon ?>">
    <!-- Page Title  -->
    <title>Login |  Welcome to <?php  echo "$sitename";?> Online Banking</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="../assets/css/dashlite.css?ver=2.4.0">
    <link rel="stylesheet" href="../scss/sweetalert.css">
    <link id="skin-default" rel="stylesheet" href="../assets/css/theme.css?ver=2.4.0">
</head>
<body class="nk-body npc-crypto bg-white pg-auth">
    <!-- app body @s -->
    <div class="nk-app-root">
        <div class="justify-center card-header">
            <div class="nk-split-content nk-block-area nk-block-area-column nk-auth-container bg-white">
                <div class="absolute-top-right d-lg-none p-3 p-sm-5">
                    <a href="#" class="toggle btn-white btn btn-icon btn-light" data-target="athPromo"><em class="icon ni ni-info"></em></a>
                </div>
                <div class="nk-block nk-block-middle nk-auth-body">
                    <center class="brand-logo pb-5">
                        <a href="../" class="logo-link">
                            <img class="logo-light logo-img logo-img-lg" src="../<?php echo$logo?>" srcset="../<?php echo $logo ?>" alt="logo">
                            <img class="logo-dark logo-img logo-img-lg" src="../<?php echo $logo ?>" srcset="../<?php echo $logo ?>" alt="logo-dark">
                        </a>
                    </center>
                    <?php  echo $stockrate ?>
                    <br>
                    <div class="nk-block-head">
                        <div class="nk-block-head-content">
                            <h5 class="nk-block-title">Sign-In</h5>
                            <div class="nk-block-des alert alert-pro alert-primary">
                                <p class="alert-text">Login using your Email address and password.</p>
                            </div>
                        </div>
                    </div><!-- .nk-block-head -->
                    <?php
                        if (isset($_POST['loginForm'])) {
                          
                            $email = filterString($_POST['email']);
                            $password = filterString($_POST['password']);
                            $errorMsg = 0;
                            if (empty($email) || empty($password)) {
                                echo "<div class='alert alert-danger alert-dismissible'>All fields are required!</div>";
                                $errorMsg = 1;
                            }
                            if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
                            } else {
                                $errorMsg = 1;
                                echo "<div class='alert alert-danger alert-dismissible'>Valid email is required!</div>";
                            }


                            if ($errorMsg == 0) {
                                // $pass = md5($password);
                                //$conn->set_charset('charset');
                                // $query = $conn->query("SELECT * FROM users WHERE email = '$email' AND password = '$pass' AND id = 1");
                                $query = $conn->query("SELECT * FROM users WHERE email = '$email'");
                                if (mysqli_num_rows($query) < 1) {
                                    echo "<div class='alert alert-danger alert-dismissible'>Invalid Email address or passwordd</div>";
                                } else {
                                    
                                    $rows = mysqli_fetch_array($query);
                                    $password_db = decryptData($rows['password'], $rows['salt']);
                                    if ($password_db != $password) {
                                        echo "<div class='alert alert-danger alert-dismissible'>Invalid Email address or passwordd</div>";
                                      

                                        
                                    } else {
                                        echo "<div class='alert alert-success alert-dismissible' style='color:green'>You have successfully login!</div>";
                                        $_SESSION['userAdmin'] = randomString(64);
                                        $_SESSION['loggedAdmin'] = 1;
                                        $token = $_SESSION['userAdmin'];
                                        $ip = $_SERVER["REMOTE_ADDR"];
                                        $dated = date("d M y, H:i a");
                                        $browser = $_SERVER["HTTP_USER_AGENT"];
                                        $queryyy = $conn->query("INSERT INTO login(ip, browser, dated, token, userid) VALUES ('$ip', '$browser', '$dated', '$token', 1)");
                                        echo '<meta http-equiv="refresh" content="0; url=account_manager?accessToken='.$_SESSION['userAdmin']. '">';
                                    }
                                }
                            }
                        } ?>

                    <form action="#" method="post">
                        <div class="form-group">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Email address</label>
                                <a class="link link-primary link-sm" tabindex="-1" href="#">Need Help?</a>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" placeholder="Enter your Email address" name="email">
                        </div><!-- foem-group -->
                        <div class="form-group">
                            <div class="form-label-group">
                                <label class="form-label" for="password">Passsword</label>
                            </div>
                            <div class="form-control-wrap">
                                <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch" data-target="password">
                                    <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                    <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                                </a>
                                <input type="password" class="form-control form-control-lg" id="password" placeholder="Enter your password" name="password">
                            </div>
                        </div><!-- .foem-group -->
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block" type="submit" name="loginForm">Continue</button>
                        </div>
                    </form><!-- form -->
                </div><!-- .nk-block -->
                <div class="nk-block nk-auth-footer" style="margin-top:80px;">
                  
                   <div class="mt-3">
                        <p>&copy; <?php echo "".date("Y").""; ?> <?php echo$sitename; ?>. All Rights Reserved.</p>
                    </div>
                </div><!-- .nk-block -->
            </div><!-- .nk-split-content -->
        </div><!-- .nk-split -->
    </div><!-- app body @e -->
    <!-- JavaScript -->
    <script src="../assets/js/bundle.js?ver=2.4.0"></script>
    <script src="../assets/js/scripts.js?ver=2.4.0"></script>
   <script src="../js/vendors/sweetalert.js"></script>
</body>

</html>
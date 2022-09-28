<?php
 session_start();
 require_once 'vendor/autoload.php';
 require_once("scripts/connect.php");
 //WEBSITE SETTINGS
 $query = $conn->query("SELECT * FROM setting WHERE id = 1") or die(mysqli_error($conn));
 while($rows = mysqli_fetch_array($query)){
    $sitename = $rows["name"];
    $logo = $rows["logo"];
    $tagline = $rows["tagline"];
    $favicon = $rows["favicon"];
    $register = $rows["register"];
    $sitephone = $rows["phone"];
    $siteemail = $rows["email"];
    $siteaddress = $rows["address"];
    $description = $rows["description"];
    $seo = $rows["seo"];
    $darklogo = $rows["darklogo"];
    $rate1 = $rows["stockrate"];
    $rate2 = $rows['stockrate2'];
    $money = $rows["money"];
    $sitecountry = $rows["country"];
    $visa_picture = $rows["visa_picture"];
    $tawk  = $rows['tawk'];
    $shortname = $rows['shortname'];
    $blocked_msg = $rows['blocked_msg'];
    $bots = $rows['bots'];
    if ($sitecountry == "United Kingdom") {
        $routine = "Sort code";
    }
    else{
        $routine = "Routing number";
    }
    if ($rows['stock'] == 1) {
        $stockrate = $rate1;
    }else {$stockrate = $rate2;}
}

///CHECK IF SITE IS BEING INDEXED BY A BOT/CRAWLER VIA HTTP USER AGENT



$n1 = rand(0,9);
$n2 = rand(0,9);
$n3 = rand(0,9);
$n4 = rand(0,9);
$n5 = rand(0,9);
$n6 = rand(0,9);
$captcha = "$n1$n2$n3$n4$n5$n6";

 ?>  

<!DOCTYPE html>
<html lang="en-US" class="js">
<head>  
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?php echo $description ?>">
    <link rel="shortcut icon" href="images/<?php echo $favicon ?>" type="image/x-icon">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="images/<?php echo $favicon ?>">
    <!-- Page Title  -->
    <title>Welcome to  |  <?php  echo "$sitename";?></title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="assets/css/dashlite.css?ver=2.4.0">
    <link rel="stylesheet" href="assets/loader.css">
    <link rel="stylesheet" href="scss/sweetalert.css">
    <link id="skin-default" rel="stylesheet" href="assets/css/theme.css?ver=2.4.0">
     <link href="css/toastr.css" rel="stylesheet"/>
</head>
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <style>
.goog-te-gadget-simple {
border:none;
}
.goog-te-gadget-simple a {
color:#000;
}
</style>
<style type="text/css">
    .btn-primary{
        background-color: #1A4DBE;
    }
    .btn-secondary{
        background-color: #d13636;
    }
    .btn-secondary:hover{opacity: 0.6;}
    .btn-primary:hover{opacity: 0.6;}
</style>
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
                        <a href="" class="logo-link">
                            <img class="logo-light logo-img logo-img-lg" src="<?php echo$logo?>" srcset="<?php echo $logo ?>" alt="logo">
                            <img class="logo-dark logo-img logo-img-lg" src="<?php echo $logo ?>" srcset="<?php echo $logo ?>" alt="logo-dark">
                        </a>
                    </center>
                    <br>
                    <?php if(isset($_GET['action']) AND $_GET['action'] == "confirmReg"){ 
                        $source = $_GET['source'];
                        $query = $conn->query("SELECT * FROM users WHERE email_code = '$source'");
                        if(mysqli_num_rows($query) < 1){
                            i_redirect("index");
                        }else{
                            $sql = $conn->query("UPDATE users SET email_verify = 1 WHERE email_code = '$source'");
                            
                        }
                        $userd = mysqli_fetch_array($query);
                        ?>
                        <div class="nk-block-head">
                        <div class="nk-block-head-content">
                            <h3 class="nk-block-title">Account registration completed!</h3>
                            <div class="nk-block-des alert alert-pro alert-success">
                                <p class="alert-text">Your email address has been successfully verified.</p>

                            </div>
                        </div>
                    </div><!-- .nk-block-head -->
                    <p>Dear <?php echo "".$userd['firstname']." ".$userd['middlename']." ".$userd['lastname']."" ?>,</p>
                     <p>
          Welcome aboard! <?php echo $sitename; ?> is the market  most innovative and fastest-growing company in the financial industry. We look forward to working with you to help you get the most out of our financial services and realize your goals.
          </p>
          Here at <?php echo $sitename; ?>, we are committed in providing wide variety of savings, investment and loan products, all designed to meet your specific needs. Our services are being used by over two million customers around the world. We hope that we’ll live up to your expectations.
          <p>
          Our excellent customer support team is available 24/7 to help you with any questions. You can contact them at:<br> <a class="text-success" href="mailto:<?php echo $siteemail; ?>"><?php echo $siteemail; ?></a> or<br> <a class="text-success" href="tel:<?php echo $sitephone; ?>"><?php echo $sitephone; ?></a>.
          </p>
          <p>
          Your satisfaction is a priority for us, so feel free to share any feedback you have – we take your opinion seriously and will do our best to implement solutions for you.
          </p>
           <div class="form-group">
                <a href="index"><button class="btn btn-lg btn-primary btn-block" id="btn"> <em class="icon ni ni-arrow-left"></em> Back To Home</button></a>
            </div>
                    <?php } else { ?>
                    <div class="nk-block-head">
                        <div class="nk-block-head-content">
                            <h3 class="nk-block-title">Welcome</h3>
                            <div class="nk-block-des alert alert-pro alert-primary">
                                <p class="alert-text">Please confirm you are not a Robot by verifying the auto-generated code below, This will enable you have  access to <?php echo$shortname ?> channels.</p>
                            </div>
                        </div>
                    </div><!-- .nk-block-head -->
    <form action="scripts/auth?action=verifyRecaptcha&code=<?php echo$captcha ?>" id="verifyForm" method="post">
        <div class="form-group">
        <link href="https://fonts.googleapis.com/css?family=Henny+Penny&display=swap" rel="stylesheet">
        <div style="height: 46px; line-height: 46px; width:100%; text-align: center; background-color: #1A4DBE; color: #ffffff!important; font-size: 26px; font-weight: bold; letter-spacing: 20px; font-family: 'Henny Penny', cursive;  -webkit-user-select: none; -moz-user-select: none;-ms-user-select: none;user-select: none;  display: flex; justify-content: center;" class="captcha"><span style="    float:left;     -webkit-transform: rotate(55deg);"><?php echo$n1 ?></span><span style="    float:left;     -webkit-transform: rotate(17deg);"><?php echo$n2 ?></span><span style="    float:left;     -webkit-transform: rotate(-56deg);"><?php echo$n3 ?></span><span style="    float:left;     -webkit-transform: rotate(-51deg);"><?php echo$n4 ?></span><span style="    float:left;     -webkit-transform: rotate(0deg);"><?php echo$n5 ?></span><span style="    float:left;     -webkit-transform: rotate(-45deg);"><?php echo$n6 ?></span></div><input type="hidden" name="captcha_secret" value="da6f040a13868b805eb3654ba0607afef7fa0c157ee5c3a5352eb625efb7bd32"></div>

    <div class="form-group">
        <input type="text" name="captcha" id="captcha" class="form-control form-control-xl" placeholder="Enter code" autocomplete="off" required>
    </div>   
    <div id="verifyResult"></div>
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block secretFom" id="btn" type="submit" >Verify code</button>
                        </div>
                    </form><!-- form -->
                <?php } ?>
                </div><!-- .nk-block -->
                <div class="nk-block nk-auth-footer" style="margin-top:80px;">
                    <a href="#" style=""><div id="google_translate_element"></div> </a>
                   <div class="mt-3">
                        <p>&copy; <?php echo "".date("Y").""; ?> <?php echo$sitename;?>. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
 
        </div>
    </div>

    <!-- JavaScript -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function (e) {
    $("#verifyForm").on('submit',(function(e) {
        document.getElementById("btn").disabled = true;
        e.preventDefault();
        $.ajax({
            url: "scripts/auth?action=verifyRecaptcha&code=<?php echo$captcha ?>",
            type: "POST",
            data:  new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            success: function(data)
            {
            $("#verifyResult").html(data);
            document.getElementById("btn").disabled = false;
            },
            error: function() 
            {
            }           
       });
    }));
});
</script>
    <script src="assets/js/bundle.js?ver=2.4.0"></script>
    <script src="assets/js/scripts.js?ver=2.4.0"></script>
   <script src="js/vendors/sweetalert.js"></script>
   <script src="assets/js/custom.js"></script>
   <script src="js/toastr.js"></script>
</body>
</html>
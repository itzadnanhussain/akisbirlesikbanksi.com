<?php 
    function getWebURL(){   
        $base_url = (isset($_SERVER['HTTPS']) &&
        $_SERVER['HTTPS']!='off') ? 'https://' : 'http://';
        $temporal = dirname(__FILE__);
        $temporal = str_replace(chr(92),'/',$temporal);
        $temporal = str_replace($_SERVER['DOCUMENT_ROOT'],'',$temporal);
        $temporal = ltrim($temporal,'/');
        $temporal = rtrim($temporal, '/');
        $temporal = str_replace('installation','',$temporal);
        $base_url .= $_SERVER['HTTP_HOST'].'/'.$temporal;
        if (substr("$base_url", -1=="/")) {
            $base_url = substr("$base_url", 0, -1);
        }
        return $base_url; 
    }

    //check file permission
    function checkFolderPermission($name){
    $perm = substr(sprintf('%o', fileperms($name)), -4);
    if ($perm >= '0775') {
        $response = true;
     } else {
        $response = false;
     }
     return $response;
    }

    function isExtensionAvailable($name){
        if (!extension_loaded($name)) {
            $response = false;
        } else {
            $response = true;
        }
        return $response;
    }

    function Required($name, $details, $status){
        if ($status=='1') {
            $pr = '<em class="icon ni ni-check-circle text-success"></em>';
        }else{
            $pr = '<em class="icon ni ni-cross-circle-fill text-danger"></em>';
        }
        echo "<li class=\"buysell-overview-item\">
                <span class=\"text\">$name</span>
                <span class=\"text\"><span>$details $pr</span></em> 
                </span>
            </li>";
    }
    $Extensions = [
                'BCMath',  'Fileinfo', 'JSON', 'Mbstring', 'OpenSSL', 'PDO','pdo_mysql','cURL',  'GD','gmp'
            ];
?>
<!DOCTYPE html>
<html lang="en-US" class="js">
<head>  
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="assets/favicon.php" type="image/x-icon">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="assets/favicon.php">
    <!-- Page Title  -->
    <title>Script Installation</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="../assets/css/dashlite.css?ver=2.4.0">
    <link rel="stylesheet" href="../scss/sweetalert.css">
    <link id="skin-default" rel="stylesheet" href="../assets/css/theme.css?ver=2.4.0">
</head>
<body class="nk-body npc-crypto bg-white pg-auth">
    <!-- app body @s -->
    <div class="nk-app-root">
        <div class="justify-center  card-header">
            <div class="nk-split-content nk-block-area nk-block-area-column nk-auth-container bg-white">
                <div class="absolute-top-right d-lg-none p-3 p-sm-5">
                    <a href="#" class="toggle btn-white btn btn-icon btn-light" data-target="athPromo"><em class="icon ni ni-info"></em></a>
                </div>
                <div class="p-3">
                    <center class="brand-logo pb-5">
                        <a href="../" class="logo-link">
                            <img class="logo-light logo-img logo-img-lg" src="assets/logo.png" srcset="assets/logo.png" alt="logo">
                            <img class="logo-dark logo-img logo-img-lg" src="assets/logo.png" srcset="assets/logo.png" alt="logo-dark">
                        </a>
                        <h4>Script Installation</h4>
                    </center>
                    <br>
                    <?php if(!isset($_GET['action'])){?>
                    <div class="nk-block-head">
                        <div class="nk-block-head-content">
                            <h5 class="nk-block-title">Required Extensions/Files</h5>
                        </div>
                       <p></p>
                    <ul class="buysell-overview-list"> 
                            <?php
                                $error = 0;
                                $phpversion = version_compare(PHP_VERSION, '7.4', '>=');
                                if ($phpversion==true) {
                                    $error = $error+0;
                                    Required("PHP", "7.4 or higher",1);
                                }else{
                                    $error = $error+1;
                                    Required("PHP", "7.4 or higher",0);
                                }
                                foreach ($Extensions as $key) {
                                    $extension = isExtensionAvailable($key);
                                    if ($extension==true) {
                                        Required($key, " ".strtoupper($key)."",1);
                                    }else{
                                        $error += 1;
                                        Required($key, " ".strtoupper($key)."",0);
                                    }
                                }
                                $db = file_exists('database.sql');
                                        if ($db==true) {
                                            $error = $error+0;
                                            Required('database.sql file','available',1);
                                        }else{
                                            $error = $error+1;
                                             Required('database.sql file','available',0);
                                        }
                                        $db = file_exists('../.htaccess');
                                        if ($db==true) {
                                            $error = $error+0;
                                            Required('.htaccess file','available',1);
                                        }else{
                                            $error = $error+1;
                                            Required('.htaccess file','available',0);
                                        }


                                        $folder_perm = checkFolderPermission('../scripts');
                                        if ($folder_perm == true) {
                                            Required('scripts folder','Required permission 0775',1);
                                        }else{
                                            $error += 1;
                                            Required('scripts folder','Required permission 0775',1);
                                        }
    
                                ?>
                            </ul>
                            </div>
                           <p>
                             <?php if ($error == 0) {
                                echo '<div class="form-group">
                            <a class="btn btn-lg btn-primary btn-block" type="submit" href="index.php?action=install">Next</a>
                        </div>'; 
                             }else{
                               echo '<div class="form-group">
                            <a class="btn btn-lg btn-primary btn-block" type="submit" href="index.php">Refresh</a>
                        </div>';
                             }
                            ?>
                           </p>
                       <?php }  elseif($_GET['action'] == 'install') { ?>
                            <?php
                                $error = 0;
                                $phpversion = version_compare(PHP_VERSION, '7.4', '>=');
                                if ($phpversion==true) {
                                    $error = $error+0;
                                }else{
                                    $error = $error+1;
                                }
                                foreach ($Extensions as $key) {
                                    $extension = isExtensionAvailable($key);
                                    if ($extension==true) { 
                                    }else{
                                        $error += 1;    
                                    }
                                }
                            $db = file_exists('database.sql');
                                    if ($db==true) {
                                        $error = $error+0; 
                                    }else{
                                        $error = $error+1;
                                         Required('database.sql file','available',0);
                                    }
                                    $db = file_exists('../.htaccess');
                                    if ($db==true) {
                                        $error = $error+0; 
                                    }else{
                                        $error = $error+1;
                                    }
                             if($error == 1){
                                header("location:index.php");
                             }       
                        ?> 
                    <?php
                    if (isset($_POST['loginForm'])) {
                        $host = $_POST['host'];
                        $dbname = $_POST['dbname'];
                        $password = $_POST['dbpassword'];
                        $user = $_POST['dbusername'];
                        $updateUrl = $_POST['baseurl'];
                        $code = $_POST['code'];
                    try{
                        $conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                        $query = file_get_contents("database.sql");
                        $stmt = $conn->prepare($query);
                        if($stmt->execute()){
                        $fname = "../scripts/connect.php";
                        $fhandle = fopen($fname,"r");
                        $content = fread($fhandle,filesize($fname));

                        $content = str_replace('servername = "";', 'servername = "'.$host.'";', $content);
                        $content = str_replace('username = "";', 'username = "'.$user.'";', $content);
                        $content = str_replace('password = "";', 'password = "'.$password.'";', $content);
                        $content = str_replace('dbname = "";', 'dbname = "'.$dbname.'";', $content);

                        $fhandle = fopen($fname,"w");
                        fwrite($fhandle,$content);
                        fclose($fhandle);

                        $sql = "UPDATE setting SET site_url = '$base_url' and former = '$code'";
                        $stmt = $conn->prepare($sql);
                        // execute the query
                        $stmt->execute();

                        }
                        header("location:index.php?action=completed");
                        }
                         catch (PDOException $e)
                          {
                        echo'<div class="alert alert-danger">Unable to connect to database.</div>';
                        }

                     }


                    ?>
                    <form action="#" method="post">
                        <div class="row">
                        <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Evanto Username</label>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" placeholder="Envanto Username" name="username">
                        </div><!-- foem-group -->
                        <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="password">Purchase Code</label>
                            </div>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control form-control-lg" id="code" placeholder="Purchase Code" name="code">
                            </div>
                        </div>
                        <hr>
                          <div class="form-group col-lg-12">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Site Base URL</label>
                            </div>
                            <input type="text" readonly class="form-control form-control-lg" autocomplete="off" id="default-01" value="<?php echo getWebURL(); ?>" name="baseurl">
                        </div><!-- foem-group -->
                        <hr>
                         <div class="form-group col-lg-12">
                            <div class="form-label-group">

                        <h4>Database Credentials</h4>
                        </div>
                        </div>
                          <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Host</label>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" value="localhost" name="host">
                        </div><!-- foem-group -->
                          <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Database Username</label>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" placeholder="DB username" name="dbusername">
                        </div><!-- foem-group -->
                          <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Database Password</label>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" placeholder="DB password" name="dbpassword">
                        </div><!-- foem-group -->
                          <div class="form-group col-lg-6">
                            <div class="form-label-group">
                                <label class="form-label" for="default-01">Database Name</label>
                            </div>
                            <input type="text" class="form-control form-control-lg" autocomplete="off" id="default-01" placeholder="Enter Db name" name="dbname">
                        </div>
                    </div>
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block" type="submit" name="loginForm">Continue</button>
                        </div>
                    </form>
                    <?php }  elseif($_GET['action'] == 'completed') { ?>
                            <?php
                                $error = 0;
                                $phpversion = version_compare(PHP_VERSION, '7.4', '>=');
                                if ($phpversion==true) {
                                    $error = $error+0;
                                }else{
                                    $error = $error+1;
                                }
                                foreach ($Extensions as $key) {
                                    $extension = isExtensionAvailable($key);
                                    if ($extension==true) { 
                                    }else{
                                        $error += 1;    
                                    }
                                }
                                $db = file_exists('database.sql');
                                        if ($db==true) {
                                            $error = $error+0; 
                                        }else{
                                            $error = $error+1;
                                             Required('database.sql file','available',0);
                                        }
                                        $db = file_exists('../.htaccess');
                                        if ($db==true) {
                                            $error = $error+0; 
                                        }else{
                                            $error = $error+1;
                                        }
                                 if($error == 1){
                                    header("location:index.php");
                                 }       
                                ?> 

                           <center>
                               <h1 style="font-size:120px">
                                   <em class="icon ni ni-check-circle text-success"></em>
                               </h1>
                               </center>
                               <h5>
                                   Script has been successfully installed, kindly delete the installation folder from your server for security reason.<br>
                                   <br>
                                   Visit <a href='<?php echo "".getWebURL()."/admin/login" ?>'>Here</a> to access the admin dashboard. Your default admin login details are:<br>
                                   <br>
                                   Email Address: admin@gmail.com<br>
                                   Password: 123456<br>
                               </h5>
                               <br>
                               <div class="form-group">
                            <a class="btn btn-lg btn-primary btn-block" type="submit" href="<?php echo "".getWebURL()."" ?>">Visit website</a>
                        </div>
                           
                  <?php } ?>
                </div><!-- .nk-block -->
                <div class="nk-block nk-auth-footer" style="margin-top:100px;">
                   
                   <div class="mt-3">
                        <p>&copy; <?php echo "".date("Y").""; ?> <a href="mailto:smartdev4tech@gmail.com">SmartDev Tech</a>. All Rights Reserved.</p>
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
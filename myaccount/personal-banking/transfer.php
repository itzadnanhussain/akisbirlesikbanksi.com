<?php
include("header.php"); 
?>
<div class="nk-content">
<?php 

$query = $conn->query("SELECT * FROM pending_transcation WHERE userid = '$userid' and status = 0 ORDER BY id LIMIT 1");
if (mysqli_num_rows($query) > 0) {
                  $data = mysqli_fetch_array($query);
                  $data = (object)$data;  
                  $info = preg_replace_callback(
                '!s:(\d+):"(.*?)";!',
                function ($m) {
                    return 's:' . strlen($m[2]) . ':"' . $m[2] . '";';
                },
                $data->data
            );
            $infos = unserialize($info);
            $infos = (object)$infos[0];
            ?>
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function(){
        $('#modalAlert').modal('show');
        });
      </script>
<div class="modal fade" tabindex="-1" role="dialog" id="modalAlert"  data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered modal-md" role="document">
<div class="modal-content">
                <div class="modal-body modal-body-lg">
                    <div class="nk-block-head nk-block-head-xs text-center">
                        <h5 class="nk-block-title">Pending transaction</h5>
                        <div class="nk-block-text">
                            <div class="caption-text text-primary display-4">You currently have a pending transaction in your account, click continue if you will like to continue this transaction.</div>
                        </div>
                    </div>
                    <div class="nk-block">
                        <div class="buysell-overview">
                            <ul class="buysell-overview-list">
                                <li class="buysell-overview-item">
                                <span class="pm-title"><em class="icon ni ni-alert-circle"></em> <span>Amount</span></span>
                                    <span class="pm-title"><?php echo$money ?> <?php echo number_format($infos->amount, 2) ?></span>
                                </li>
                                <li class="buysell-overview-item">
                                    <span class="pm-title"><em class="icon ni ni-alert-circle"></em> Bank Name</span>
                                    <span class="pm-currency"><?php echo$infos->bankname ?></span>
                                </li>
                               
                                <li class="buysell-overview-item">
                                    <span class="pm-title"><em class="icon ni ni-alert-circle"></em> Account Number</span>
                                    <span class="pm-currency"><?php echo$infos->accountnumberB ?></span>
                                </li>
                                <li class="buysell-overview-item">
                                    <span class="pm-title"><em class="icon ni ni-alert-circle"></em> Account Holder</span>
                                    <span class="pm-currency"><?php echo$infos->accountholder ?></span>
                                </li>
                            </ul>
                        </div>
                        <div class="buysell-field form-group">
                            <div class="form-label-group">
                                <label class="form-label">Sending from:</label>
                            </div>
                            <input type="hidden" value="btc" name="bs-currency" id="buysell-choose-currency-modal">
                            <div class="dropdown buysell-cc-dropdown">
                                <a href="#" class="buysell-cc-choosen dropdown-indicator" data-toggle="dropdown">
                                    <div class="coin-item coin-btc">
                                        <div class="coin-icon">
                                            <em class="icon ni ni-wallet-out"></em>
                                        </div>
                                        <div class="coin-info">
                                            <span class="coin-name"><?php echo $accounttype ?></span>
                                            <span class="coin-text"><?php echo substr($accountnumber, 0,4)."********"; ?></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                            
                        </div><!-- .buysell-field -->
                        <div class="buysell-field form-action text-center">
                            <div>
                                <form id="PendingForm" action="../scripts/auth.php?action=ContinuePendingTransfer" method="post">
                                <input type="hidden" name="transactionid" value="<?php echo$data->id ?>">
                                <div id="result"></div>
                                <button  class="btn btn-primary btn-block btn-lg eg-swal-av5" id="btn11" type="submit" > Complete transaction</button>
                                </form>
                            </div>
                            <div class="pt-3">
                                <a href="cancelTransfer?ref=/<?php echo$infos->transaction_session ?>&id=<?php echo$data->id ?>"  class="link link-danger">Cancel transaction</a>
                            </div>
                        </div>
                    </div><!-- .nk-block -->
                </div><!-- .modal-body -->
            </div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function (e) {
    $("#PendingForm").on('submit',(function(e) {
        e.preventDefault();
        document.getElementById("btn11").style.disabled=true;
        $.ajax({
            url: "../scripts/auth.php?action=ContinuePendingTransfer",
            type: "POST",
            data:  new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            success: function(data)
            {
            document.getElementById("btn11").style.disabled=false;
            $("#result").html(data);
            },
            error: function() 
            {
         }          
       });
    }));
});
</script>
            <?php          
            }

 ?>
<?php if(empty($_GET['action'])){
}
else{ unset($_SESSION['transaction_session']); }
 ?>
<?php if(empty($_SESSION['transaction_session'])){ ?>
<div class="container-xl wide-lg">
        <div class="nk-content-body">
        <div class="nk-block-head">
         <div class="nk-block-head-sub">
         </div>
           <div class="nk-block-between-md g-4 card-bordered">
             <div class="nk-block-head-content p-1">
             <marquee  direction="" >
               <h2 class="nk-block-title fw-normal text-success">PAY FOR GOODS AND SERVICES, TRANSFER MONEY TO FRIENDS AND FAMILY.</h2>
              </marquee>
                       </div>
                            <div class="nk-block-head-content">
                                        <ul class="nk-block-tools gx-3">
                                          <!--  <li><a href="deposit-history" class="btn btn-primary"><span>Transaction  History</span> <em class="icon ni ni-invest"></em></a></li>-->
                                            <li><a href="wire?transaction_session=<?php echo hash("sha256", "wire transfer") ?>" class="btn text-white btn-secondary"><span>Cross-border transfer</span><em class="icon ni ni-wallet-out"></em></a></li>
                                        </ul>

                                    </div><!-- .nk-block-head-content -->
                                </div><!-- .nk-block-between -->
                            </div><!-- .nk-block-head -->
                        </div>
                    </div>
               
          
 <?php } ?>
          <div class="nk-content nk-content-fluid" >
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="buysell wide-xs m-auto">
                                <div class="card-header font-weight-bold text-light" style="background-color:#0b3175;">
                       <h5 class="text-white"> <em class="icon ni ni-question"></em> Transfer from <?php echo$sitename ?> to other Local Banks.</h5>
                    </div>
                    
                    <!-- .buysell-title -->
                                <?php if(empty($_SESSION['transaction_session'])){ ?>
                                <div class="buysell-block">
                                    <form action="#" method="post" class="buysell-form">
                                        <div class="buysell-field form-group">
                                            <div class="form-label-group">
                                                <label class="form-label">Select Account</label>
                                            </div>
                                            <input type="hidden" value="btc" name="bs-currency" id="buysell-choose-currency">
                                            <div class="dropdown buysell-cc-dropdown">
                                                <a href="#" class="buysell-cc-choosen dropdown-indicator" data-toggle="dropdown">
                                                    <div class="coin-item coin-btc">
                                                        <div class="coin-icon">
                                                            <em class="icon ni ni-sign-<?php echo strtolower($money); ?>"></em>
                                                        </div>
                                                        <div class="coin-info">
                                                            <span class="coin-name"><?php echo "$accounttype";?> (<?php echo "$usercurrency";?>)</span>
                                                            <span class="coin-text">Available Balance: <?php echo "$usercurrency"; ?> <?php echo number_format(currencyConverter($accountbalance,$money));?></span>
                                                        </div>
                                                    </div>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-auto dropdown-menu-mxh">
                                                    <ul class="buysell-cc-list">
                                                        <li class="buysell-cc-item selected">
                                                            <a href="#" class="buysell-cc-opt" data-currency="btc">
                                                                <div class="coin-item coin-btc">
                                                                    <div class="coin-icon">
                                                                        <em class="icon ni ni-sign-<?php echo strtolower($money); ?>"></em>
                                                                    </div>
                                                                    <div class="coin-info">
                                                                        <span class="coin-name"><?php echo "$accounttype";?> (<?php echo "$usercurrency";?>)</span>
                                                                        <span class="coin-text">Available Balance:<?php echo "$usercurrency ".number_format(currencyConverter($accountbalance,$money))."";?></span>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div><!-- .dropdown-menu -->
                                            </div><!-- .dropdown -->
                                        </div><!-- .buysell-field -->
                                        <div class="buysell-field form-group">
                                        	<div class="result"></div>
                                            <div class="form-label-group">
                                                <label class="form-label" for="buysell-amount">Amount to Transfer</label>
                                            </div>
                                            <span class="text-left">Daily Transfer Limit:</span>
                                            <span class="text-right" style="float:right;"><?php echo$usercurrency; echo number_format(checkLimit($userid),2). " OF $usercurrency".number_format($daily_limit,2); ?></span>
                                            <div class="form-control-group">
                                                <input type="number" class="form-control form-control-lg form-control-number" id="amount" name="amount" placeholder="2000">
                                                <div class="form-dropdown">
                                                    <div class="text"><?php echo$money; ?><span></span></div>
                                                </div>
                                            </div>
                                            <div class="form-note-group">
                                                <span class="buysell-min form-note-alt">Minimum: 5.00 <?php echo $money ?></span>
                                                <span class="buysell-rate form-note-alt">1 <?php echo $money ?> = <?php echo currencyConverter(1,$money); ?> <?php echo$usercurrency;?></span>

                                               
                                            </div>
                                        </div><!-- .buysell-field -->
                                        <div class="buysell-field form-group">
                                        </div><!-- .buysell-field -->
                                        <div class="buysell-field form-action">
                                            <button type="submit" class="btn btn-lg btn-block btn-primary stepOne" id="btn1" >Continue to next step</button>
                                        </div><!-- .buysell-field -->
                                        <div class="form-note text-base text-center">Note: our transfer fee is included.</div>
                                    </form>
                                <?php } else {  ?>
                                   <form action="" method="post">
                                   	<div class="resultForTwo"></div>
                                    <div class="card card-preview">
                                        <div class="card-inner">
                                            <div class="preview-block">
                                                <span class="preview-title-lg text-primary overline-title">Amount to transfer: <?php echo "$money".number_format($_SESSION['amount']).""; ?></span>
                                                <div class="row">
                                                    <div class="col-lg-12 col-sm-12 p-2">
                                                        <div class="form-group">
                                                            <div class="form-control-wrap">
                                                                <div class="form-icon form-icon-right">
                                                                    <em class="icon ni ni-template"></em>
                                                                </div>
                                                                <?php if ($sitecountry == "United Kingdom") {
                                                                ?>
                                                                <input list="banks" type="text" class="form-control form-control-xl form-control-outlined" name="bankname" id="bankname">
                                                                <datalist id="banks">
                                                                <?php
                                                                  include("../scripts/connect.php");
                                                                  $query = $conn->query("SELECT * FROM ukbanks");
                                                                  while($rows = mysqli_fetch_array($query)){
                                                                  	echo "<option>".$rows['name']." </option>";
                                                                  }
                                                                 
                                                                 ?>
                                                                </datalist>

                                                             <?php } elseif ($sitecountry == "United States") { ?>
                                                                <input list="banks" type="text" class="form-control form-control-xl form-control-outlined" name="bankname" id="bankname">
                                                                <datalist id="banks">
                                                                <?php
                                                                  include("../scripts/connect.php");
                                                                  $query = $conn->query("SELECT * FROM usbank");
                                                                  while($rows = mysqli_fetch_array($query)){
                                                                  	echo "<option>".$rows['name']." </option>";
                                                                  }
                                                                 
                                                                 ?>
                                                                </datalist>
                                                                
                                                             <?php } else { ?>
                                                             <?php // if ($sitecountry != "United Kingdom" OR "United States") {
                                                             	?>
                                                            <input type="text" class="form-control form-control-xl form-control-outlined" id="bankname">
                                                            <?php } ?>
                                                                <label class="form-label-outlined" for="bankname">Bank name:</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <input type="hidden" name="sortcode" id="sortcode" value="<?php echo randomNumber(10); ?>">
                                                    <div class="col-lg-12 col-sm-12 p-2">
                                                        <div class="form-group">
                                                            <div class="form-control-wrap">
                                                                <div class="form-icon form-icon-right">
                                                                    <em class="icon ni ni-card-view"></em>
                                                                </div>
                                                                <input type="text" class="form-control form-control-xl form-control-outlined" name="accountnumber" id="accountnumber">
                                                                <label class="form-label-outlined" for="accountnumber">Account Number:</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                               
                                                    <div class="col-lg-12 col-sm-12 p-2">
                                                        <div class="form-group">
                                                            <div class="form-control-wrap">
                                                                <div class="form-icon form-icon-right">
                                                                <em class="icon ni ni-user-alt"></em>
                                                                </div>
                                                                <input type="text" class="form-control form-control-xl form-control-outlined" name="accountholder" id="accountholder">
                                                                <label class="form-label-outlined" for="accountholder">Account holder:</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div class="col-lg-12 col-sm-12 p-2">
                                                        <div class="form-group">
                                                            <div class="form-control-wrap">
                                                                <div class="form-icon form-icon-right">
                                                                    <em class="icon ni ni-chat-fill"></em>
                                                                </div>
                                                                <input type="text" class="form-control form-control-xl form-control-outlined" name="description" id="description">
                                                                <label class="form-label-outlined" for="accountholder">Description(optional):</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="buysell-field form-action">
                                            <button type="submit" class="btn btn-lg btn-block btn-primary stepTwoForm" id="btn2">Continue to next step</button>
                                            <br>
                                            <p> </p>
                                            <center>
                                             <a class="btn btn-sm btn-light" href="transfer?action=edit"><em class="icon ni ni-edit"></em> Edit</a>
                                         </center>
                                        </div>
                                   </form>
                    <script type="text/javascript">
                   $(document).ready(function(){
                   $("#accountnumber").change(function(){
                     var accountnumber = $("#accountnumber").val();
                     $.ajax({
                    type:"post",
                    url:"../scripts/user_account_name.php",
                    data: { "accountnumber": accountnumber},
                    success:function(data){
                     $("#accountholder").val(data);
                    }
                     });
                   });
               });
            </script>

                            <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          
        

<?php include("footer.php"); 

?>
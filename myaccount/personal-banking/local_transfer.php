<?php
include("header.php");

if (isset($_GET['ref'])) {

$token = $_GET["ref"];
$query = $conn->query("SELECT * FROM transactions WHERE refNumber = '$token'");
$rows = mysqli_fetch_assoc($query);
$amount = $rows['amount'];
$refNumber = $rows['refNumber'];
$accountholder = $rows['accountholder'];
$bankname = $rows['bankname'];
$dated = $rows['dated'];
$avalbal = $rows['accountbalance'];
?>           
             <div class="nk-content nk-content-fluid">
              <div class="container-xl wide-lg">
               <div class="nk-content-body">
             <div class="modal-content">
                <div class="modal-body modal-body-lg text-center">
                    <div class="nk-modal">
                        <em class="nk-modal-icon icon icon-circle icon-circle-xxl ni ni-check bg-success"></em>
                        <h4 class="nk-modal-title">Transaction successful!</h4>
                        <div class="nk-modal-text">
                            <p class="caption-text">You have successfully transfered <strong><?php echo $amount ?></strong> <?php echo "$money"; ?> to <strong><?php echo $accountholder ?></strong>.</p>
                           <p class="sub-text-sm"><?php echo$localmsg ?></p>
                           <b>Details of your transaction are shown below;</b>
                        </div>
                        <ul class="buysell-overview-list">
                                <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Amount Debited</span></span>
                                    <span class="pm-title"><?php echo"$money ".number_format($amount).""; ?></span>
                                </li>
                                 <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Transaction refrence:</span></span>
                                    <span class="pm-title"><?php echo "$refNumber"; ?></span>
                                </li>

                                <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Account holder:</span></span>
                                    <span class="pm-title"><?php echo "$accountholder"; ?></span>
                                </li>

                                <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Bank Name:</span></span>
                                    <span class="pm-title"><?php echo "$bankname"; ?></span>
                                </li>

                                <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Date:</span></span>
                                    <span class="pm-title"><?php echo "$dated"; ?></span>
                                </li>

                                <li class="buysell-overview-item">
                                <span class="pm-currency"><em class="icon ni ni-check-circle-fill"></em> <span>Available Balance:</span></span>
                                    <span class="pm-title"><?php echo "$money ".number_format($avalbal).""; ?></span>
                                </li>


                            </ul>
                        <div class="nk-modal-action-lg">
                            <ul class="btn-group gx-4">
                                <li><a href="local_transfer" class="btn btn-lg btn-mw btn-primary">New transaction</a></li>
                                <li><a href="dashboard" class="btn btn-lg btn-mw btn-secondary">Back to home</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- .modal-body -->
                <div class="modal-footer bg-lighter">
                    <div class="text-center w-100">
                        <p>All electronic fund transfers to or from your accounts at <?php echo$sitename ?> are governed by the Electronic Fund Transfer Disclosure provided to you when you established your account or when you requested other electronic fund transfer services.</p>
                    </div>
                </div>
            </div>
          </div>
      </div>
  </div>
  <?php unset($_SESSION['active_transaction']);
  include('footer.php'); } else{ ?>
  <div class="nk-content">
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
                            <li><a href="transfer" class="btn text-white btn-secondary"><span>Other banks transfer</span><em class="icon ni ni-wallet-out"></em></a></li>
                        </ul>
                        </div>
                    </div><!-- .nk-block-between -->
                </div><!-- .nk-block-head -->
            </div>
           </div>

              <div class="nk-content nk-content-fluid" >
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="buysell wide-xs m-auto">
                                <div class="card-header font-weight-bold text-light" style="background-color:#0b3175;">
                       <h5 class="text-white"> <em class="icon ni ni-question"></em> Transfer to a <?php echo$sitename ?> Account</h5>
                    </div>
                    
                    <!-- .buysell-title -->
                                <div class="buysell-block">
                                    <form action="../scripts/auth.php?action=p2pStart" method="post" id="tForm" class="buysell-form">
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
                                        	<div id="result2"></div>
                                            <div class="form-label-group">
                                                <label class="form-label" for="buysell-amount">Account Number</label>
                                            </div>
                                            <div class="form-control-group">
                                                <input onkeyup="showHint(this.value)" type="text" class="form-control form-control form-control-number" id="account" name="account" placeholder="Recipient Account Number">
                                               
                                            </div>
                                            <div class="form-note-group">
                                                <div  id="detailB">...</div>
                                            </div>
                                        </div>
                                        <div class="buysell-field form-group">
                                            
                                            <div class="form-label-group">
                                                <label class="form-label" for="buysell-amount">Amount to Transfer</label>
                                            </div>
                                            <span class="text-left">Daily Transfer Limit:</span>
                                            <span class="text-right" style="float:right;"><?php echo$usercurrency; echo number_format(checkLimit($userid),2). " OF $usercurrency".number_format($daily_limit,2); ?></span>
                                            <div class="form-control-group">
                                                <input type="number" class="form-control form-control form-control-number" id="amount" name="amount" placeholder="2000">
                                                <div class="form-dropdown">
                                                    <div class="text"><?php echo$money; ?><span></span></div>
                                                </div>
                                            </div>
                                            <div class="form-note-group">
                                                <span class="buysell-min form-note-alt">Minimum: 5.00 <?php echo $money ?></span>
                                                <span class="buysell-rate form-note-alt">1 <?php echo $money ?> = <?php echo currencyConverter(1,$money); ?> <?php echo "$usercurrency";?></span>
                                            </div>
                                        </div>
                                        <div class="buysell-field form-group">
                                        </div><!-- .buysell-field -->
                                        <div class="buysell-field form-action">
                                            <button type="submit" class="btn btn-lg btn-block btn-primary" id="btn1" >Continue to next step</button>
                                        </div><!-- .buysell-field -->
                                        <div class="form-note text-base text-center">Note: our transfer fee is included.</div>
                                    </form>
                                </div>
                            </div>
</div>
</div>
</div>
</div>

   <script>
function showHint(str) {
  if (str.length == 0) { 
    document.getElementById("detailB").innerHTML = "";
    return;
  }
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    let newContent = this.responseText;
   $("#detailB").html(newContent);
  }
  xhttp.open("GET", "../scripts/verifybank.php?q="+str);
  xhttp.send();   
}
document.getElementById('btn1').disabled=true;
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
         window.onload = function () {
            var minute = 9;
            var sec = 60;
            setInterval(function () {
               document.getElementById("timer").innerHTML =
                  minute + " : " + sec;
               sec--;
               if (sec == 00) {
                  minute--;
                  sec = 60;
                  if (minute == 0) {
                     minute = 9;
                  }
               }
            }, 1000);
         };
      </script>
<?php 

AjaxForm('../scripts/auth.php?action=p2pStart', 'tForm', 'result2', 'btn1');
include('footer.php');
}
 ?>


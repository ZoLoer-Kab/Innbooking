<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report_cha.aspx.cs" Inherits="WebF.test3" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tables - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="./Agoda.com_ Smarter Hotel Booking_files/profile-df5744b35570.css">
        <link rel="stylesheet" href="./Agoda.com_ Smarter Hotel Booking_files/mmb.account-8b9ce04e8f2b.css"><link rel="stylesheet" href="./Agoda.com_ Smarter Hotel Booking_files/theme-agoda-b9a84f27882b.css">
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <form id="form1" runat="server">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <div>
            <a class="navbar-brand" href="index.html">Start Bootstrap</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button><!-- Navbar Search-->
                <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
                </div>
            <!-- Navbar-->
            
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="index.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Home</a>
                            
<!--                            <div class="sb-sidenav-menu-heading">Interface</div>
-->
<!--                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts" > 
-->                            
                             <a class="nav-link" href="RQuery_Room.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Reservation 
<!--                               <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div >
-->   
                            </a>
<!--                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a></nav>
                            </div>
-->
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages"
                                ><div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Member Area
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="nav-link" >
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
    
                                    <a class="nav-link collapsed" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="true" aria-controls="pagesCollapseAuth">  
                                    </a>
                                        <a class="nav-link" href="login.aspx">Login</a>
                                        <a class="nav-link" href="Member.aspx">Member Data</a>
                                        <a class="nav-link" href="report_cha2.aspx">Order Tracking</a>
                                        <a class="nav-link" href="report_cha.aspx">Members Only</a>
                                        <div class="sb-sidenav-collapse-arrow"><i class=""></i></div>

<!--                                      <a class="nav-link collapsed" href="Register.aspx" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="true" aria-controls="pagesCollapseError"
                                        >Order Tracking
                                        <div class="sb-sidenav-collapse-arrow"><i class=""></i></div
                                    ></a>
<!--                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="401.html">401 Page</a><a class="nav-link" href="404.html">404 Page</a><a class="nav-link" href="500.html">500 Page</a></nav>
                                    </div>
--> 
                                </nav>

                           </div>
                             <div class="sb-sidenav-menu-heading">Contact US</div>
                            <a class="nav-link" href="Message_index.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                FAQs</a>
<!--                           <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables</a>
-->                     
                                </div>

                             </div>


                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content" lang="zh-Hant" class="chrome js no-flash no-proximity no-ambientlight applicationcache audio audio-ogg audio-mp3 audio-opus audio-wav audio-m4a batteryapi battery-api blobconstructor blob-constructor contenteditable no-contextmenu cors crypto customelements customprotocolhandler customevent no-dart dataview canvas canvastext emoji eventlistener no-forcetouch fullscreen gamepads geolocation no-hiddenscroll no-htmlimports no-ie8compat intl json ligatures olreversed no-mathml messagechannel notification pagevisibility performance pointerevents pointerlock queryselector quotamanagement requestanimationframe raf serviceworker touchevents typedarrays no-unicoderange unicode no-userdata vibrate video video-ogg video-h264 video-webm video-vp9 no-video-hls no-vml no-webintents webanimations webgl websockets no-xdomainrequest no-hairline exiforientation indexeddb indexeddb-deletedatabase" dir="ltr">
                <a class=" mmb-profile desktop BAY-7899 CEGHZ-820 DJ-674 FUSION-2854 FUSION-2915 LOY-5169 LOY-5207 MIN-18178 MIN-18390 MIN-18417 MIN-18562 NHAWEB-1392 PACKAGES TEXT-9389 TEXT-97851-B TEXT-9785-B TEXT-9786-B TEXT-9786-U TEXT-9834-B  themed theme-agoda">
                <style>
    .CookieWarning {
        position: fixed;
        top: 0;
        background: rgba(0, 0, 0, 0.8);
        z-index: 2000;
    }   
    .CookieWarning__center {
        text-align: center;
        display: table-cell;
        vertical-align: middle;
        height: 100vh;
        width: 100vw;
    } 
    .CookieWarning__container {
        width: 400px;
        background: white;
        display: inline-block;
        border-radius: 8px;
        padding: 20px;
    }
    
    .CookieWarning__title {
        font-size: 30px;
        margin: 10px 0;
    }
</style>
<section id="user-details" class="mmb-panel" data-selenium="mmb-user-details-panel">
    <h1 data-selenium="mmb-user-details-panel-title">用戶詳細資料</h1>
<section id="mmb-name-component" class="mmb-component" data-selenium="mmb-name-component">
    <div id="mmb-name-component-display" class="name-gradient-3" data-selenium="mmb-name-component-display">
        <div id="mmb-name-component-display-avatar" data-selenium="mmb-name-component-display-avatar">            
<i class="bg-user-icon-3" data-selenium="user-icon" data-user-badge-icon="">
        <span><%=surnames%></span>
</i>
        </div>
        <div id="mmb-name-component-display-name">
            <h2 data-selenium="mmb-name-component-display-name-label">姓名</h2>
            <span id="mmb-name-component-display-name-value" class="mmb-value-text" data-selenium="mmb-name-component-display-name-value">
                <asp:Label ID="name" runat="server" Text="Label"></asp:Label></span>
            
        </div>
            
    </div>
</section>
    <section id="mmb-email-component" class="mmb-component" data-selenium="mmb-email-component">

    <div id="mmb-email-component-display" class="mmb-email-not-verified-component">
        <div id="mmb-email-component-display-email" class="mmb-notification-component">
            <div>
                <h2 data-selenium="mmb-email-component-display-email-label">ID</h2>              
            </div>
            <div id="mmb-email-component-verify-box" class="mmb-verify-box ">     
            <span id="mmb-email-component-display-email-value" data-selenium="mmb-email-component-display-email-value"><asp:Label ID="ID" runat="server" Text="Label"></asp:Label></span>
                 </div>
        </div>
    </div>   
</section>

<section id="mmb-phone-component" class="mmb-component" data-selenium="mmb-phone-component">
    <!------------ STEP 0 ------------>
    <div id="mmb-phone-component-display" class="mmb-phone-verified-component">
        <div id="mmb-phone-component-display-phone" class="mmb-notification-component">
            <div>
                <h2 id="mmb-phone-component-display-phone-label">電話號碼</h2>            
            </div>
            <span id="mmb-password-component-display-phone-value" data-selenium="mmb-password-component-display-phone-value"><asp:Label ID="phone" runat="server" Text="Label"></asp:Label></span>
    </div>    
    <div id="mmb-phone-component-change" data-selenium="mmb-phone-component-change">                 
    </div>    
    <div id="mmb-phone-component-otp-verification" data-selenium="mmb-phone-component-otp-verification">     
        <div>                                                       
        </div>
    </div>
</section>
    <section id="mmb-phone-component" class="mmb-component" data-selenium="mmb-phone-component">
    <!------------ STEP 0 ------------>
    <div id="mmb-phone-component-display" class="mmb-phone-verified-component">
        <div id="mmb-phone-component-display-phone" class="mmb-notification-component">
            <div>
                <h2 id="mmb-phone-component-display-phone-label">帳號</h2>            
            </div>
            <span id="mmb-password-component-display-phone-value" data-selenium="mmb-password-component-display-phone-value"><asp:Label ID="account" runat="server" Text="Label"></asp:Label></span>
    </div>    
    <div id="mmb-phone-component-change" data-selenium="mmb-phone-component-change">                 
    </div>    
    <div id="mmb-phone-component-otp-verification" data-selenium="mmb-phone-component-otp-verification">     
        <div>                                                       
        </div>
    </div>
</section>
<section id="mmb-password-component" class="mmb-component mmb-notification-component" data-selenium="mmb-password-component">
    <div id="mmb-password-component-display">
        <div id="mmb-password-component-display-password">
            <div>
                <h2 data-selenium="mmb-password-component-display-password-label">密碼</h2>           
            </div>
            <span id="mmb-password-component-display-password-value" data-selenium="mmb-password-component-display-password-value"><asp:Label ID="password" runat="server" Text="Label"></asp:Label></span>
        </div>
        
        
        
    </div>  
</section>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
        </form>
        
    </body>
</html>


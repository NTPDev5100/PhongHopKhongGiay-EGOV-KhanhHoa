<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LichTV_9.aspx.cs" Inherits="PhongHopKhongGiay.Schedule.LichTV_9" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <title>Lịch TV</title>
        <style type="text/css">
            html, body {
                height: 100%;
            }

            .Title1 {
                font-weight: 900;
                color: red;
                font-size: 50px;
                text-shadow: 1px 0 0 #fff, -1px 0 0 #fff, 0 1px 0 #fff, 0 -1px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: #fff;
                font-family: "Times New Roman", Times, serif;
            }

            .Title2 {
                font-weight: 900;
                color: blue;
                font-size: 50px;
                text-shadow: 1px 0 0 #fff, -1px 0 0 #fff, 0 1px 0 #fff, 0 -1px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: #fff;
                font-family: "Times New Roman", Times, serif;
            }

            .marquee-parent {
                position: relative;
                width: 98%;
                height: 100vh;
                overflow: hidden;
            }

            .marquee-child {
                display: block;
                width: 100%;
                /* width of your text div */
                transform: translateY(0%);
                /* height of your text div */
                height: 120%;
                margin-bottom: 170%;
                position: absolute;
                overflow: hidden;
                /*animation: marquee 10s linear infinite;*/ /* change 5s value to your desired speed */
            }
            /*.marquee-child1{
                
                    height: 100%;
                margin-top: -150%;
            }
            .marquee-child2{
                
                    height: 110%;
                margin-top: -100%;
            }*/
            /*.marquee-child:hover {
              animation-play-state: paused;
              cursor: pointer;
            }
             
            @keyframes marquee {
                0% {
                    transform: translateY(100%);
                }

                100% {
                    transform: translateY(-100%);
                }
            }
              /*Hien thi cho Firefox*/
            /*@-moz-keyframes marquee {
               0% {
                    transform: translateY(100%);
                }

                100% {
                    transform: translateY(-100%);
                }
            }*/

            /*Hien thi cho Safari and Chrome*/
            /*@-webkit-keyframes marquee {
                0% {
                    transform: translateY(100%);
                }

                100% {
                    transform: translateY(-100%);
                }
            }*/

            /*Hien thi cho Opera*/
            /*@-o-keyframes marquee {
                0% {
                    transform: translateY(100%);
                }

                100% {
                    transform: translateY(-100%);
                }
            }*/
            #table {
                margin-left: 5px;
            }

            #table1 {
                margin-left: 2px;
                margin-right: 2px;
            }

            .clear {
                clear: both;
            }

            .bgimg {
              /*  background-image: url('Image/TV/LichTV_01_1.jpg');*/
              background-color:dodgerblue;
            }

            .header-title {
                width: 100%;
                margin-bottom: 0px;
                text-align: center;
                vertical-align: middle;
                /*background-repeat: no-repeat;*/
                height: 80px;
                /*background-size: 110%;*/
                position: fixed;
                padding: 5px;
            }

            .labelLichSo {
                color: #FF0000;
                font-size: 25pt;
                font-weight: 700;
                text-align: center;
                text-shadow: 0px 0 #ffffff, 0 1px #ffffff, 1px 0 #ffffff, 0 0px #ffffff;
            }

            .labelLichHomNay {
                color: #0d5da5;
                font-size: 21pt;
                font-weight: 700;
                text-align: center;
                text-shadow: 0px 0 #ffffff, 0 1px #ffffff, 1px 0 #ffffff, 0 0px #ffffff;
            }

            .content-tuan-ngay {
                width: 100%;
                height: 80%;
                margin-top: 10px;
                position: fixed;
                padding-top: 85px;
            }

            .content-tuan {
                width: 28%;
                float: left;
                border: 1px #f9d0d5 solid;
                border-radius: 5px;
                margin-right: 10px;
                margin-left: 5px;
            }

            /*.lableTitleTuan {
                color: #0033ff;
                font-size: 18pt;
                font-weight: bold;
                text-align: center;
            }

            .lableTitleNgay {
                color: #0033ff;
                font-size: 18pt;
                font-weight: bold;
                text-align: center;
            }*/

            hr {
                border-top: 1px #a5061a solid;
            }

            @media (min-width: 1600px) {
                .header-title {
                    width: 100%;
                    margin-bottom: 0px;
                    text-align: center;
                    vertical-align: middle;
                    height: 110px;
                    position: fixed;
                    background-repeat: no-repeat;
                    background-position: center center;
                    background-color: #078ccd;
                }

                .content-tuan-ngay {
                    padding-top: 110px;
                }
            }
        </style>
    </telerik:RadCodeBlock>


</head>
<body id="body" runat="server" style="margin: auto">
    <form id="form1" runat="server" style="height: 100%">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="Timer1">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="table2"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="scroll2"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="scroll"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="table"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="table2"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="dvTuan"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="dvNgay"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="hdbackgroundCurrent"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="hdbackgroundNew"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="marqueeTuan"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="marqueeNgay"></telerik:AjaxUpdatedControl>                        
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
        </asp:Panel>
        <!-- tieu de hop -->
        <div id="bannerLCT" runat="server" class="header-title bgimg">
            <div>
                <div style="text-align: center;">
                    <asp:Label ID="lblDonVi" CssClass="Title1" runat="server" Text="" />
                </div>
                <div style="text-align: center;">
                    <asp:Label ID="lbTitle1" runat="server" Text="" /><br />
                    <asp:Label ID="lbTitle2" runat="server" Text="" />
                </div>
            </div>
            <asp:Label ID="lblLichHomNay" Visible="false" runat="server" Text="LỊCH HỌP" CssClass="labelLichHomNay"></asp:Label>
        </div>
        <!--end  tieu de hop -->
        <div class="clear"></div>
        <!-- tuan ngay -->
        <div class="content-tuan-ngay">
            <!-- tuan -->
            <div class="content-tuan" style="display:none">
                <div style="height: 30px; color: #D7F4F3; margin-left: 5px; margin-top: 5px;" runat="server" id="dvTuan">
                    <asp:Image runat="server" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Image/TV/icon_lich01.png" Width="20px" />
                    <asp:Label runat="server" ID="lblTuan" Text=""></asp:Label>
                </div>
                <div style="margin-left: 10px;">
                    <div class="marquee-parent">
                        <div class="marquee-child marquee-child1" runat="server" id="marqueeChild">
                            <table width="100%" style="height: 100%" id="table1" runat="server" border="0"></table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end tuan -->
            <!-- ngay -->
            <div style="width: 100%; float: left; border: 1px #f9d0d5 solid; border-radius: 5px;">
                <div style="height: 30px; color: #D7F4F3; margin-left: 5px; margin-top: 5px;" runat="server" id="dvNgay">
                    <asp:Image runat="server" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Image/TV/icon_lich01.png" Width="20px" />
                    <asp:Label runat="server" ID="lblNgay" Text=""></asp:Label>
                    <%--<table width="100%" id="table3" runat="server" border="0"></table>--%>
                </div>
                <div style="margin-left: 10px;">
                    <div class="marquee-parent">
                        <div class="marquee-child marquee-child2" runat="server" id="marqueeChild1">
                            <div id="scroll" runat="server">
                                <div id="marquee" runat="server">
                                    <table width="100%" id="table" runat="server" border="0"></table>
                                </div>
                            </div>
                            <div id="scroll2" runat="server">
                                <table width="100%" id="table2" runat="server" border="0"></table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end ngay -->
        </div>
        <!-- end tuan ngay -->
        <div class="clear"></div>

        <asp:HiddenField ID="hdDonViID" runat="server" />
        <asp:HiddenField ID="hdbackgroundCurrent" runat="server" />
        <asp:HiddenField ID="hdbackgroundNew" runat="server" />
        <asp:HiddenField ID="marqueeTuan" runat="server" />
        <asp:HiddenField ID="marqueeNgay" runat="server" />
    </form>
</body>
</html>
<%--<script src="http://code.jquery.com/jquery-latest.min.js"
    type="text/javascript"></script>
<%--<script language="javascript" src="../js/jquery.marquee.js"></script>--%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/marquee/jquery.marquee.js") %>" type="text/javascript"></script>

<script type="text/javascript">
    var marqueeTuan = 30000;
    var marqueeNgay = 30000;
    //var marqueeTuan = 8000;
    //var marqueeNgay = 8000;
    if (marqueeTuan != 0) {
        $('.marquee-child.marquee-child1').marquee({
            speed: marqueeTuan,
            gap: 400,
            delayBeforeStart: 0,
            direction: 'up',
            duplicated: true,

        });
    }
    if (marqueeNgay != 0) {
        $('.marquee-child.marquee-child2').marquee({
            speed: marqueeNgay,
            gap: 400,
            delayBeforeStart: 0,
            direction: 'up',
            duplicated: true,

        });
    }


</script>
<%--<script type="text/javascript">
    $(function () {
        var body = $('body');
        var current = 0;

        var heightWindow = $(window).height();
        var heightHeader = $(".header-title").height() + 15;
        var heightTitle = $(".heightCSS").height();
        var heightMarquee = heightWindow - heightHeader - heightTitle;

        var w = $(window).width();
        $('.content-tuan-ngay').css('width', w);

        // $(".marquee-parent").css("height", heightMarquee +"px");

        function nextBackground() {
            var backgroundCur = $('#hdbackgroundCurrent').val();
            var backgroundNew = $('#hdbackgroundNew').val();
            if (backgroundCur != backgroundNew) {
                body.css('background', backgroundNew);
                location.reload();
            }

            var marqueeTuan = $('#marqueeTuan').val();
            var marqueeNgay = $('#marqueeNgay').val();
            $(".marquee-child1").css("animation", "marquee " + marqueeTuan + "s linear infinite");
            $(".marquee-child2").css("animation", "marquee " + marqueeNgay + "s linear infinite");
            
            setTimeout(nextBackground, 1000);
        }
        setTimeout(nextBackground, 1000);
        body.css('background', $('#hdbackgroundCurrent').val());

    });
   
</script>--%>


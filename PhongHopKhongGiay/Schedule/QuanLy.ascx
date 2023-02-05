<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLy.ascx.cs" Inherits="PhongHopKhongGiay.Schedule.QuanLy" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/jquery-3.2.1.slim.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/popper.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/bootstrap.min.js") %>" type="text/javascript"></script>


<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/bootstrap.min.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/jquery.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/bootstrap.min.js") %>" type="text/javascript"></script>--%>

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/bootstrap.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/default-theme/ej.web.all.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default-responsive.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/responsive-css/ej.responsive.css")%>' />

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/jquery-3.4.1.min.js") %>" type="text/javascript"></script>

<script src="/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/bootstrap/js/bootstrap-select.js"></script>
<script src="/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/bootstrap/js/bootstrap.js"></script>

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/jsrender.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/ej.web.all.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/properties.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/ej.culture.vi-VN.min.js") %>" type="text/javascript"></script>

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Notify/pnotify.custom.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Notify/notification.js") %>" type="text/javascript"></script>
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tags-Input/bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tags-Input/bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/AlertNotify/alertify.min.js") %>" type="text/javascript"></script>
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/AlertNotify/css/alertify.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/AlertNotify/css/themes/bootstrap.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/font/Font-awesome.min.css")%>' />
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>






<script id="tooltipTemplate" type="text/x-jsrender">
    <div style="width: 500px!important">
        <div class="row">
            <div class="col-md-8">
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Tên cuộc họp:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:TenCuocHop}}</div>
                </div>
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Thời gian họp:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:ThoiGianHop}}</div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-6">
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Chủ trì:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:TenChuTri}}</div>
                </div>
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Thư ký:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:TenThuKy}}</div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-6">
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Địa điểm:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:TenPhongHop}}</div>
                </div>
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Người soạn lịch:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:TenSoanLich}}</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div style="padding-top: 3px;">
                    <div style="float: left; font: 13px Segoe UI; font-weight: bold;">Thành phần họp:&nbsp;</div>
                    <div style="padding-top: 2px; font: 12px Segoe UI SemiBold;">{{:ThanhPhan}}</div>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="apptemplate" type="text/x-jsrender">

    <div style="height: 100%">
        <div>
            <div style="margin-left: 11px; margin-top: 3px">
                {{:~format(IsDuplicate,Subject)}}
            </div>
        </div>
        <i class="fa fa-paperclip fa-lg" id="btnPopupThemFile" onclick="ShowThemFile({{:Id}})" style="cursor: pointer; margin-left: 11px; margin-top: 3px"></i>
        <a id="btnPopupShowFile" onclick="ShowFile({{:Id}},{{:Categorize}})" style="color: white; cursor: pointer"
            class="">&nbsp{{:CountFile}}</a>
    </div>
</script>


<style type="text/css">
    .bootstrap-tagsinput {
        width: 100% !important;
        height: 100% !important;
    }

    .BodyMain {
        background: #192F5D !important;
    }

    #buttonAction {
        position: relative;
        height: 25px;
    }

    .search-input {
        width: 300px !important;
        float: right !important;
    }

    #buttonAction > div {
        width: 180px;
        position: absolute;
        right: 0px;
    }

    .alertify .ajs-modal {
        z-index: 999999 !important;
    }

    .validationError {
        background-color: #FF8A8A;
    }

    .customAlign {
        float: left;
        padding-right: 20px;
    }
</style>

<style>
    .inline {
        display: inline-block;
    }
    .note-editable {
        padding: 20px !important;
    }

    .btn span.glyphicon {
        opacity: 0;
    }

    .btn.active span.glyphicon {
        opacity: 1;
    }

    #txtSearch_wrapper.e-atc {
        margin-left: -10px;
        margin-top: 14px;
    }

    #searchDiv {
        margin-right: 179px;
        margin-top: -4px;
        float: right;
    }

    .e-appointment {
        border-radius: 5% !important;
    }

    #ChucNang {
        margin-right: -396px;
        margin-top: 8px;
        float: right;
    }

    .table-reponsive td {
        width: 150px !important;
        word-break: break-word !important;
    }

    .e-customAnimation {
        width: 1000px !important;
    }

    .divTagVanBanLienQuan .bootstrap-tagsinput {
        border: none;
        box-shadow: none;
    }

        .divTagVanBanLienQuan .bootstrap-tagsinput input {
            display: none;
        }


    .divTagEmailDonViKhac .bootstrap-tagsinput .tag [data-role="remove"]:after {
        content: "";
        padding: 0px 2px;
    }

    #TinhTrangColor {
        float: right;
        margin-top: 5px;
        padding: 10px;
    }

    .e-viewsdiv {
        float: left !important;
        margin-left: 10px;
    }

    .e-datecommondiv {
        margin-left: 14%;
    }

    .e-draggableworkarea .e-content {
        height: 400px !important;
    }

    .e-schedule .e-dateheadercell {
        height: 38px !important;
    }

    /* .e-scrolltimecells {
        height: 100px !important;
    }*/
    /*    #Schedule1 {
        height: 800px !important;
    }*/

    .e-scheduleinner .e-vertical {
        height: 650px !important;
    }

    .e-table .e-scheduleoutertable {
        margin-bottom: 50px !important;
    }

    #editor_toolbar {
        width: 98% !important;
    }

    #editor_wrapper {
        width: 100% !important;
    }
</style>


<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap.min.css")%>' />
<script src='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap.min.js")%>'></script>

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap-table.min.css")%>' />
<%--<link href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css" rel="stylesheet">--%>

<script src='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/tableExport.min.js")%>'></script>
<%--<script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>--%>

<script src='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap-table.min.js")%>'></script>
<%--<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>--%>

<%--chỉnh ngôn ngữ --%>
<%--<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table-locale-all.min.js"></script>--%>

<script src='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap-table-export.min.js")%>'></script>
<%--<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/extensions/export/bootstrap-table-export.min.js"></script>--%>

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/jquerysctipttop.css")%>' />
<%--<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">--%>
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/flatly/bootstrap.min.css">--%>

<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/materialdesignicons.min.css")%>' />--%>
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/5.0.45/css/materialdesignicons.min.css">

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Drop-Down-Combo-Tree/style.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Drop-Down-Combo-Tree/comboTreePlugin.js") %>" type="text/javascript"></script>


<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap-table-reorder-rows.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/jquery.tablednd.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/BoostrapTable/bootstrap-table-reorder-rows.js") %>" type="text/javascript"></script>

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/SignalR/jquery.signalR-2.2.1.min.js") %>" type="text/javascript"></script>
<script type="text/javascript" src='<%=ResolveClientUrl("~/signalr/hubs") %>'></script>


<%--<script src="Scripts/jquery.signalR-2.2.1.min.js"></script>
<script src="/signalR/hubs"></script>--%>

<script type="text/javascript">

    $(function () {

        // Proxy created on the fly
        var job = $.connection.myHub;

        // Declare a function on the job hub so the server can invoke it
        job.client.displayStatus = function () {
            TriggerOnTableSignal(false);
        };

        // Start the connection
        $.connection.hub.start({ transport: 'longPolling' });
        TriggerOnTableSignal(true);
    });

    function TriggerOnTableSignal(IsFirstTime) {
        if (IsFirstTime == true) {
            $.ajax({
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableSignal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.d.length > 0) {
                    }
                }
            });

        }
        if (IsFirstTime == false) {
            $.ajax({
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableSignal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.d.length > 0) {
                        LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                }
            });
        }
    }

</script>

<style>
    ul[name=ul-group] {
        max-height: 400px;
        overflow-x: auto;
        /*padding-left: 10px;*/
    }

    .ul-tree-type {
        padding-left: 10px;
    }

        .ul-tree-type li {
            list-style-type: none;
            margin: 0;
            /*padding-bottom: 5px;*/
            position: relative;
            cursor: pointer;
        }

        .ul-tree-type > li:last-child {
            border-left: 1px dashed #999;
            bottom: 50px;
            height: 100%;
            top: 0;
        }

        .ul-tree-type .lst-main li::after {
            border-top: 1px dashed #999;
            height: 20px;
            top: 15px;
            width: 25px;
        }

        .ul-tree-type::before, .ul-tree-type::after, .ul-tree-type li::before, .ul-tree-type li::after {
            content: '';
            left: -20px;
            position: absolute;
            right: auto;
        }

        .ul-tree-type .lst-main {
            padding-left: 20px;
        }

            .ul-tree-type .lst-main li {
                margin-bottom: 5px;
            }

        .ul-tree-type li span {
            vertical-align: middle;
        }

    .parent-title {
        border-color: #2196F3 !important;
        color: #000 !important;
        background-color: #99e3e3 !important;
        border-left: 6px solid #2196F3 !important;
        font-size: 15px;
        height: 30px;
        width:90%;
        min-width: 600px;
        line-height: 30px;
        padding-left: 5px;
    }

    .chill-title {
        font-size: 15px;
    }

    .cursor-default {
        cursor: default !important;
    }



    .glyphicon {
        position: relative;
        top: 1px;
        display: inline-block;
        font-family: 'Glyphicons Halflings';
        font-style: normal;
        font-weight: 400;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    .bold {
        font-weight: bold;
    }
</style>








<div id="PrintSchedule" style="display: none">
    <table style="width: 1068px; text-align: left; margin-left: -45px;">
        <tbody>
            <tr>
                <td style="width: 500px; text-align: center">
                    <strong>TỈNH ỦY KHÁNH HÒA</strong>
                </td>

                <td style="width: 50px;"></td>
                <td style="width: 620px; text-align: center;">
                    <strong style="text-decoration: underline;">ĐẢNG CỘNG SẢN VIỆT NAM</strong>
                </td>

            </tr>
            <tr>
                <td style="width: 500px; text-align: center">
                    <strong>VĂN PHÒNG</strong>
                </td>

                <td style="width: 50px; text-align: center;"></td>
                <td style="width: 620px; text-align: center">
                    <strong></strong>
                </td>

            </tr>
            <tr>
                <td style="width: 500px; text-align: center">
                    <strong>*</strong>
                </td>

                <td style="width: 50px;"></td>
                <td style="width: 620px; text-align: center">
                    <strong></strong>
                </td>

            </tr>
            <%--<tr>
                <td style="width: 300px;"></td>
                <td style="width: 100px;"></td>
                <td style="width: 400px; text-align: center">
                    <strong style="text-decoration: underline;">Độc lập - Tự do - Hạnh phúc</strong>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td style="text-align: center">
                    <span style="font-weight: normal">Quận 7, ngày
                        <label id="lblNgay">11</label>
                        tháng
                        <label id="lblThang">8</label>
                        năm
                        <label id="lblNam">2020</label>
                    </span>
                </td>
            </tr>--%>
        </tbody>
    </table>
    <br>
    <table style="width: 1068px;">
        <tbody>
            <tr>
                <td style="width: 100px;"></td>
                <td style="width: 320px; text-align: center">
                    <strong>&nbsp; LỊCH LÀM VIỆC </strong>
                    <br>
                    <strong>CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY</strong>
                </td>
                <td style="width: 200px;"></td>
            </tr>
            <tr>
                <td style="width: 100px;"></td>
                <td style="width: 320px; text-align: center; padding: 6px;">
                    <span id="divThoiGian" style="font-style: italic; font-size: 12px; font-weight: 200">(Tuần thứ
                        38
                        từ ngày
                        14/09/2020
                        đến ngày
                        20/09/2020
                        )
                    </span>
                </td>
                <td style="width: 200px;"></td>
            </tr>
        </tbody>
    </table>
    <br>
    <table style="width: 1068px; text-align: left; margin-left: -45px;">
        <tbody>
            <%-- <tr>
                <td style="width: 600px">
                    <div class="col-md-2" style="font-style: italic; font-weight: 200;">1. Công tác tập trung:</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divCongTacTapTrung">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="col-md-2" style="font-style: italic; font-weight: 200;">2. Lịch cụ thể:</div>
                </td>
            </tr>
            --%>
        </tbody>
    </table>
    <br>
    <div id="TableSchedule" style="text-align: center">
    </div>

    <br>
    <div class="row">
        <%--<table style="width: 700px; margin-left: -45px;">
            <tbody>
                <tr>
                    <td style="width: 459px;">
                        <div style="font-style: italic; font-weight: 200">Nơi nhận:</div>
                        <span style="font-size: 12px;">- VPTU, VP UBND TP;
                        <br />
                            - Đ/c Trần Lưu Quang - Phó Bí thư Thường Trực Thành Ủy;<br />
                            - Đ/c Hà Minh Hiền - Phó trưởng phòng địa bàn 01 Ủy Ban Kiểm tra Thành ủy;<br />
                            - Đ/c Huỳnh Thanh Nhân -UVUBNDTP– Giám đốc Sở Nội vụ;<br />
                            - TTQU, TT HĐND, UBND quận (CT, các PCT);<br />
                            - Các Ban Đảng, UBMTTQVN và các đoàn thể;<br />
                            - Ban Pháp chế,  Ban KT-XH HĐND;<br />
                            - Các Hội quần chúng;<br />
                            - Các Phòng, ban, đơn vị HCSN thuộc Quận; 3 trường THPT;<br />
                            - UBND 10 Phường;<br />
                            - Chi cục thuế KV Q7- huyện Nhà Bè, QLTT số 7, Trạm thú y;<br />
                            - CA, Quân sự, Tòa án, VKS, THA;<br />
                            - VPQU; VP HĐND&UBND (Chánh - Phó VP, Tổ TH);<br />
                            - Lưu VT.
                        </span>
                    </td>
                    <td style="width: 200px;">&nbsp;</td>
                    <td style="width: 250px; text-align: center; vertical-align: top">&nbsp;&nbsp;<strong>TL. CHỦ TỊCH</strong><br>
                        <strong>CHÁNH VĂN PHÒNG</strong>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>Dương Giao Linh</strong>
                    </td>
                </tr>
            </tbody>
        </table>--%>
    </div>
</div>

<div class="content-container-fluid">
    <div class="row">
        <div class="cols-sample-area">
            <div class="row" id="divXemLichHopCuaChuTri">
                <div class="col-md-3">
                    <div class="pull-right" style="margin-top: 7px; font-size: large">
                        Xem lịch họp của chủ trì
                    </div>
                </div>
                <div class="col-md-2">
                    <input type="text" id="ChonChuTriID" style="width: 100%" placeholder="Chọn chủ trì" autocomplete="off" />
                </div>
                <div class="col-md-7">
                    <%--<button type="button" id="btnChuyenDuyetTatCa" class="btn btn-primary"><i class="fa fa-share"></i>&nbsp Chuyển lịch</button>--%>
                    <button type="button" id="btnPrintQRPhongBan" class="btn btn-primary"><i class="fa fa-qrcode"></i>&nbsp QR phòng họp</button>
                    <button type="button" id="btnPopupPhatHanhLichHop" class="btn btn-primary"><i class="fa fa-send"></i>&nbsp Phát hành lịch họp</button>
                    <button type="button" id="btnPopupXemLichHopPhatHanh" style="display: none" class="btn btn-primary"><i class="fa fa-search-plus"></i>&nbsp Xem lịch họp phát hành</button>

                </div>
            </div>
            <!-- Search textbox-->
            <div id="searchDiv">
                <input id="txtSearch" type="text" onkeyup="searchKeyUp()" />
            </div>
            <div id="ChucNang">
                <button type="button" class="btn btn-default" id="btnSearch"><i class="fa fa-search"></i></button>
                <button type="button" class="btn btn-primary" id="btnPopUpDanhSachSchedule"><i class="fa fa-list"></i></button>
                <button type="button" class="btn btn-success" id="btnPopUpDanhSachScheduleXuatExcel"><i class="fa fa-file-excel-o"></i></button>
                <button type="button" class="btn btn-info" id="btnPrint"><i class="fa fa-print"></i></button>
            </div>

            <div id="TinhTrangColor">
                <div data-toggle="buttons">
                    <label class="btn btn-warning active btn-sm" onclick="LoadScheduleByColorStatus('DangTao')">
                        <input type="checkbox" id="DangTao" value="DangTao">
                        <span class="glyphicon glyphicon-ok" style="color: white"></span>
                    </label>
                    Đang tạo&nbsp			
                    <%--<label class="btn btn-danger active btn-sm" onclick="LoadScheduleByColorStatus('ChoDuyet')">
                        <input type="checkbox" id="ChoDuyet" value="ChoDuyet">
                        <span class="glyphicon glyphicon-ok"></span>
                    </label>
                    Chờ duyệt&nbsp	
         
                    <label class="btn btn-info active btn-sm" onclick="LoadScheduleByColorStatus('KhongPheDuyet')" style="color: #fff; background-color: #804000; border-color: #804000;">
                        <input type="checkbox" id="KhongPheDuyet" value="KhongPheDuyet">
                        <span class="glyphicon glyphicon-ok"></span>
                    </label>
                    Không phê duyệt&nbsp--%>
                    <label class="btn btn-primary active  btn-sm" onclick="LoadScheduleByColorStatus('DaDuyet')">
                        <input type="checkbox" id="DaDuyet" value="DaDuyet">
                        <span class="glyphicon glyphicon-ok"></span>
                    </label>
                    Đã duyệt&nbsp

                    <label class="btn btn-success active btn-sm" onclick="LoadScheduleByColorStatus('DaPhatHanh')">
                        <input type="checkbox" id="DaPhatHanh" value="DaPhatHanh">
                        <span class="glyphicon glyphicon-ok"></span>
                    </label>
                    Đã phát hành&nbsp
                    <label class="btn btn-default active btn-sm" onclick="LoadScheduleByColorStatus('HuyHop')" style="color: #fff; background-color: dimgrey; border-color: dimgrey;">
                        <input type="checkbox" id="HuyHop" value="HuyHop">
                        <span class="glyphicon glyphicon-ok"></span>
                    </label>
                    Hủy họp&nbsp
    <label class="btn btn-default active btn-sm" onclick="LoadScheduleByColorStatus('TrungLich')">
        <input type="checkbox" id="TrungLich" value="TrungLich">
        <span class="glyphicon glyphicon-ok"></span>&nbsp<i class="fa fa-flag-o fa-lg"></i>
    </label>
                    Trùng lịch&nbsp
		
	
                </div>
            </div>
            <!--Schedule control div-->
            <div style="float: left;" id="Schedule1"></div>
        </div>
    </div>
</div>

<div id="customPopup" style="padding: 1em; display: none;">
    <div id="appointmenPopup" class="appointmenPopup">
        <table>
            <tr id="trShowFile" style="display: none">
                <td>
                    <input type="hidden" id="IsClickShowFile" value="0">
                    <input type="hidden" id="IsClickShowThemFile" value="0">
                </td>

            </tr>
            <%--<tr id="trChuyenDuyet" style="display: none">
                <td>
                    <button id="btnChuyenDuyet" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-share pull-left "></i>&nbsp Chuyển duyệt</button>
                </td>

            </tr>--%>
            <tr id="trSuaLichHop" style="display: none">
                <td>
                    <button id="btnSuaLichHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-pencil-square-o pull-left "></i>&nbsp Sửa lịch họp</button>
                </td>

            </tr>
            <tr id="trXoaLichHop" style="display: none">
                <td>

                    <button id="btnXoaLichHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-trash-o pull-left "></i>&nbsp Xóa lịch họp
                    </button>
                </td>

            </tr>


            <tr id="trThemChuongTrinhHop" style="display: none">
                <td>
                    <button id="btnThemChuongTrinhHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-sticky-note pull-left "></i>&nbsp Thêm chương trình họp
                    </button>
                </td>

            </tr>
            <tr id="trThemBieuQuyet" style="display: none">
                <td>
                    <button id="btnThemBieuQuyet" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-hand-paper-o pull-left "></i>&nbsp Thêm biểu quyết
                    </button>
                </td>

            </tr>
            <tr id="trXemLichHop" style="display: none">
                <td>
                    <button id="btnXemLichHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-eye pull-left "></i>&nbsp Xem lịch họp
                    </button>
                </td>

            </tr>
            <%--<tr id="trGuiThaoLuan" style="display: none">
                <td>
                    <button id="btnGuiThaoLuan" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-question-circle pull-left "></i>&nbsp Gửi thảo luận
                    </button>
                </td>
            </tr>--%>
            <tr id="trGiayMoiHop" style="display: none">
                <td>
                    <button id="btnGiayMoiHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-envelope-open-o "></i>&nbsp Giấy mời họp
                    </button>
                </td>
            </tr>
            <%--<tr id="trCheckShowKiosk" style="display: none">
                <td>
                    <div style="margin-left: 16px;">
                        <input type="checkbox" id="CheckIsShowKiosk" onchange="updateShowKiosk()" style="margin-top: -5px;">
                        <label style="margin-top: 10px; font-size: large; font-weight: 500">&nbsp Hiển thị Kiosk</label>
                    </div>

                </td>
            </tr>--%>
            <tr id="trHuyLichHop" style="display: none">
                <td>
                    <button id="btnHuyLichHop" style="font-size: large; border-color: white"
                        class="btn btn-default">
                        <i class="fa fa-remove  pull-left "></i>&nbsp Hủy lịch họp
                    </button>
                </td>
            </tr>
        </table>
    </div>
</div>

<div id="customWindowAddDonViKhac" style="padding: 1em; display: none;">
    <div id="appointmentWindowAddDonVi" class="appointmentWindow" style="height: 300px;">
        <form id="customAppointmentWindowAddDonViKhac">
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-2 e-textlabel">
                    Đơn vị khác <span style="color: red">*</span>
                </div>
                <div class="col-md-8">
                    <input type="text" id="ThanhPhanDonViKhac" placeholder="Chọn thành phần tham dự đơn vị khác" autocomplete="off" />
                </div>
            </div>

        </form>
        <br />
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="button" id="btnCheckAll" class="btn btn-default"><i class="fa fa-check-square-o"></i>&nbsp Chọn/Bỏ tất cả</button>
                <button type="button" id="btnChonDonViKhac" class="btn btn-primary"><i class="fa fa-check"></i>&nbsp Chọn</button>
                <button type="button" id="btnTroVeDonViKhac" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
        </div>
    </div>

</div>

<div id="customWindowTaoLuong" style="padding: 1em; display: none;">
    <div id="appointmentWindowTaoLuong" class="appointmentWindow" style="height: 550px;">
        <form id="customAppointmentWindowTaoLuong">
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-2 e-textlabel">
                    Tên nhóm <span style="color: red">*</span>
                </div>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="TenNhom" placeholder="Nhập tên nhóm" />
                    <input type="hidden" id="NhomID" value="0">
                    <input type="hidden" id="TenNhomThanhPhan" value="">
                </div>
            </div>
            <br />
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-2 e-textlabel">
                    Thành phần <span style="color: red">*</span>
                </div>
                <div class="col-md-8">
                    <input type="text" id="ThanhPhanTaoLuong" placeholder="Chọn thành phần" autocomplete="off" />
                </div>
            </div>
            <br />
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuTaoLuong" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i>&nbsp Lưu</button>
                    <button type="button" id="btnLamMoiTaoLuong" class="btn btn-default"><i class="fa fa-refresh "></i>&nbsp Làm mới</button>
                    <button type="button" id="btnChonTaoLuong" class="btn btn-default"><i class="fa fa-check-square-o"></i>&nbsp Chọn</button>
                    <button type="button" id="btnTroVeTaoLuong" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-10">
                    <table id="IDTableNhom"
                        data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="5"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="350"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th class="col-md-1" data-align="center" data-field="" data-checkbox="true"></th>
                                <th class="col-md-1" data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                <th data-field="TenNhom" data-sortable="true" data-align="left">Tên nhóm</th>
                                <th data-formatter="formatterChucNang" data-events="operateEventsNhom" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </form>
        <br />
        <br />
    </div>

</div>

<div id="customWindowViewDetailNhom" style="padding: 1em; display: none;">
    <div id="appointmentWindowViewDetailNhom" class="appointmentWindow" style="height: 550px;">
        <form id="customAppointmentWindowViewDetailNhom">
            <br />
            <div class="row" style="margin-left: 50px;">
                <div class="col-md-10">
                    <table id="IDTableViewDetailNhom"
                        data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="50"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="350"
                        data-sort-order="desc"
                        data-page-list="[50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                <th data-field="HoTen" data-sortable="true" data-align="left">Thành phần tham dự</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </form>
        <br />
        <br />
    </div>

</div>

<div id="customWindow" style="padding: 1em; display: none;">
    <div id="appointmentWindow" class="appointmentWindow">
        <form id="customAppointmentWindow" enctype="multipart/form-data">
            <table>
                <tbody>
                    <tr>
                        <td colspan="8"><legend>Thông tin cuộc họp</legend></td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Loại lịch họp <span style="color: red">*</span> </td>
                        <td colspan="6">
                            <input type="text" id="LoaiLichHopID" placeholder="Chọn loại lịch họp" autocomplete="off" />
                        </td>
                        <td>
                    </tr>
                    <tr id="customSubject">
                        <td class="e-textlabel" style="width: 20% !important;">Tên cuộc họp <span style="color: red">*</span>
                        </td>
                        <td colspan="6">
                            <input id="TenCuocHop" class="Subject" type="text" name="Subject" style="width: 84%" />
                            <input type="hidden" id="LichHopID" value="0">
                            <input type="hidden" id="IsShowKiosk" value="0">
                            <input type="hidden" id="IsClickViewOrEditLichHop" value="0">
                            <input type="hidden" id="RoleUser" value="">
                            <input type="hidden" id="IsTaoLichHop" value="0">
                            <input type="hidden" id="TinhTrangID" value="1">
                            <input type="checkbox" style="margin-top: -1px;" id="IsPrint" checked>
                            <label for="vehicle1" style="margin-top: 10px;">Hiển thị in lịch</label>
                        </td>

                    </tr>
                    <tr id="customStartendtime">
                        <td class="e-textlabel">Thời gian bắt đầu <span style="color: red">*</span></td>
                        <td>
                            <div style="margin-left: -15px">
                                <div class="col-md-6">
                                    <select id="GioBatDau" class="select form-control">
                                        <option value="">Giờ</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>

                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <select id="PhutBatDau" class="select form-control">
                                        <option value="">Phút</option>
                                        <option value="00">00</option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                        <option value="32">32</option>
                                        <option value="33">33</option>
                                        <option value="34">34</option>
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                        <option value="47">47</option>
                                        <option value="48">48</option>
                                        <option value="49">49</option>
                                        <option value="50">50</option>
                                        <option value="51">51</option>
                                        <option value="52">52</option>
                                        <option value="53">53</option>
                                        <option value="54">54</option>
                                        <option value="55">55</option>
                                        <option value="56">56</option>
                                        <option value="57">57</option>
                                        <option value="58">58</option>
                                        <option value="59">59</option>

                                    </select>
                                </div>
                            </div>

                        </td>
                        <td class="e-textlabel" style="width: 13%">Từ ngày<span style="color: red">*</span>
                        </td>
                        <td style="width: 13%">
                            <div class="cols-sample-area" style="margin-left: 1px;">
                                <div class="control">
                                    <input id="NgayHop" type="text" />
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="customStartendtime">
                        <td class="e-textlabel">Thời gian kết thúc <span style="color: red">*</span></td>
                        <td>
                            <div style="margin-left: -15px">
                                <div class="col-md-6">
                                    <select id="GioKetThuc" class=" select form-control">
                                        <option value="">Giờ</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <select id="PhutKetThuc" class=" select form-control">
                                        <option value="">Phút</option>
                                        <option value="00">00</option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                        <option value="32">32</option>
                                        <option value="33">33</option>
                                        <option value="34">34</option>
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                        <option value="47">47</option>
                                        <option value="48">48</option>
                                        <option value="49">49</option>
                                        <option value="50">50</option>
                                        <option value="51">51</option>
                                        <option value="52">52</option>
                                        <option value="53">53</option>
                                        <option value="54">54</option>
                                        <option value="55">55</option>
                                        <option value="56">56</option>
                                        <option value="57">57</option>
                                        <option value="58">58</option>
                                        <option value="59">59</option>
                                    </select>
                                </div>
                            </div>

                        </td>
                        <td class="e-textlabel" style="width: 13%">Đến ngày<span style="color: red">*</span>
                        </td>
                        <td style="width: 13%">
                            <div class="cols-sample-area" style="margin-left: 1px;">
                                <div class="control">
                                    <input id="NgayHopKetThuc" type="text" />
                                </div>
                            </div>
                        </td>
                    </tr>







                    <tr>
                        <td class="e-textlabel">Nhắc lịch họp

                        </td>
                        <td>
                            <input type="text" id="ThoiGianNhacLichHop" style="width: 100%" placeholder="Chọn thời gian nhắc lịch" autocomplete="off" />

                        </td>
                        <td>
                            <label class="e-textlabel">Đối tượng nhắc</label>

                        </td>
                        <td style="width: 19%">

                            <input type="text" id="DoiTuongNhacID" style="width: 100%" placeholder="Chọn đối tượng nhắc" autocomplete="off" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Chủ trì <span style="color: red">*</span>
                        </td>
                        <td>
                            <div style="margin-left: -15px">
                                <div class="col-md-6">
                                    <input type="text" id="ChuTriID" placeholder="Chọn chủ trì" autocomplete="off" />
                                </div>
                                <div class="col-md-6">
                                    <input type="checkbox" style="margin-top: -1px;" id="KhongHienThi">
                                    <label for="vehicle1" style="margin-top: 10px;">Không hiển thị</label>
                                </div>
                            </div>
                        </td>

                        <td class="e-textlabel">Thư ký <span style="color: red">*</span>

                        </td>
                        <td>
                            <input type="text" id="ThuKyID" placeholder="Chọn thư ký" autocomplete="off" />

                        </td>

                    </tr>
                    <tr>
                        <td class="e-textlabel">Hiển thị in chủ trì</td>
                        <td colspan="6">
                            <input type="text" id="HienThiInChuTri" style="width: 100%; height: 60px !important; resize: vertical" data-role="tagsinput" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Chuẩn bị</td>
                        <td colspan="6">
                            <input type="text" id="ChuanBiID" placeholder="Chọn phòng/ cá nhân chuẩn bị" autocomplete="off" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Chuẩn bị khác</td>
                        <td colspan="6">
                            <textarea id="ChuanBiKhac" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Thành phần <span style="color: red">*</span>

                        </td>
                        <td colspan="6">
                            <input type="text" id="ThanhPhanID" placeholder="Chọn thành phần tham dự họp" autocomplete="off" />
                        </td>
                        <td>
                            <div class="col-md-1 e-textlabel" style="margin-left: -19px; margin-top: 8px">
                                <button type="button" id="btnTaoLuong" class="btn btn-success"><i class="fa fa-plus"></i></button>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td class="e-textlabel">Hiển thị in thành phần</td>
                        <td colspan="6">
                            <input type="text" id="HienThiInThanhPhan" style="width: 50%!important; height: 60px !important; resize: vertical" data-role="tagsinput" />
                        </td>
                    </tr>
                    <tr id="customDescription">
                        <td class="e-textlabel">Thành phần tham dự khác</td>
                        <td colspan="6">
                            <textarea id="ThanhPhanThamDuKhac" class="ThanhPhanThamDuKhac" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Phòng họp <span style="color: red">*</span> </td>
                        <td colspan="6">
                            <input type="text" id="PhongHopID" placeholder="Chọn phòng họp" autocomplete="off" />
                        </td>
                        <td>
                    </tr>
                    <tr id="trTenPhongHopKhac" style="display: none">
                        <td class="e-textlabel">Tên phòng họp khác <span style="color: red">*</span> </td>
                        <td colspan="6">
                            <textarea id="TenPhongHopKhac" name="Description" rows="1" cols="50" style="width: 100%; resize: vertical"></textarea>
                        </td>
                        <td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Ghi chú</td>
                        <td colspan="6">
                            <textarea id="GhiChu" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td class="e-textlabel" style="padding-top: 0px;">Link họp Google Meeting</td>
                        <td colspan="6">

                            <div class="row col-md-5">
                                <input type="text" id="GoogleMeet" readonly placeholder="Link phòng họp Google Meeting" class="bootstrap-tagsinput" style="width: 100%; resize: vertical; height: 34px !important;" />
                            </div>
                            <div class="col-md-7">

                                <!--Add buttons to initiate auth sequence and sign out-->
                                <span id="authorize_button" class="btn btn-primary" style="display: none;">Xác thực</span>
                                <span id="create_meeting_button" class="btn btn-success">Tạo link Google Meeting</span>
                                <span id="btnGoogleMeetDel" class="btn btn-danger">Xóa link</span>
                                <span id="signout_button" class="btn btn-danger" style="display: none;">Đăng xuất</span>

                            </div>
                            <div class="clear"></div>
                            <div class="row col-md-12" style="display: none;">
                                <br />
                                <pre id="content" style="white-space: pre-wrap;"></pre>
                            </div>
                        </td>
                    </tr>
                    <tr id="customAlldayrecurcheck" style="display: none">
                        <td>
                            <div id="alldayCheck" class="customAlign">
                                <div class='e-textlabel customAlign'>AllDay:</div>
                                <div class="customAlign">
                                    <input id="AllDay" class="AllDay" type="checkbox" name="AllDay" />
                                </div>
                            </div>
                            <div id="recurCheck" class="customAlign">
                                <div class="e-textlabel customAlign">Recurrence:</div>
                                <div class="customAlign">
                                    <input id="Recurrence" class="Recurrence" type="checkbox" name="Recurrence" />
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8"><legend>Tài liệu họp</legend></td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Đối tượng xem</td>
                        <td>
                            <input type="text" id="DoiTuongXemID" placeholder="Chọn" autocomplete="off" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Cơ quan chủ trì <span style="color: red">*</span></td>
                        <td>
                            <input id="TaiLieu_CoQuanChuTri" type="text" value="" name="TaiLieu_CoQuanChuTri" style="width: 100%" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Nội dung tài liệu <span style="color: red">*</span></td>
                        <td>
                            <input id="TenTaiLieu" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                            <input type="hidden" id="TaiLieuCuocHopID" value="0">
                            <input type="hidden" id="TenFile" value="">
                            <input type="hidden" id="FileID" value="">
                        </td>
                    </tr>

                    <tr style="display: none">
                        <td class="e-textlabel">Văn bản liên quan</td>
                        <td>
                            <button type="button" id="btnShowVanBanLienQuan" class="btn btn-info">...</button>
                            <div class="divTagVanBanLienQuan">
                                <input id="TagVanBanLienQuan" data-role="tagsinput" type="text" />
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Tệp đính kèm</td>
                        <td>
                            <input type="file" id="fileSelect" multiple onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                            <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="hidden" id="TrichYeuVanBanLienQuan" />
                            <input type="checkbox" style="margin-top: -3px;" id="DuocCongKhai" checked="checked" value="True">
                            <label>Công khai</label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="button" id="btnThem" class="btn btn-success">Thêm</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel" style="float: left">Danh sách tài liệu</td>
                        <td colspan="6">
                            <div>
                                <ul name="ul-group" id="TaiLieuHop_CoQuanChuTriTreeView">
                                </ul>
                            </div>

                            <script id="dataCoQuanChuTri-Template" type="x-tmpl-mustache">   
                                    <li class="mg-b-5p" style=" margin-bottom: 5px;">
                                        <div class="parent-title inline" data-id="{{Index}}" data-name="{{TaiLieu_CoQuanChuTri}}" onclick="quanLyController.f_Close(this)">
                                            <i class="glyphicon glyphicon-plus"></i>
                                            <span class="bold">{{TaiLieu_CoQuanChuTri}} </span>
                                        </div>
                                        <div class="inline">
                                            <button type="button" data-TenCoQuanChuTri="{{TaiLieu_CoQuanChuTri}}"
                                                class="Edit_FileCuocHop btn btn-info btn-xs" onclick="f_UpdTaiLieuCoQuanChuTri(this)">
                                                    <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                            </button>
                                            <button type="button" data-TenCoQuanChuTri="{{TaiLieu_CoQuanChuTri}}" class="btn btn-danger btn-xs" onclick="quanLyController.f_DeleteCoQuanChuTri(this)">
                                                  <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                            </button>
                                        </div>
                                       <ul id="ul-file-{{Index}}" data-ulFileShow="ul-file-{{Index}}" class="ul-tree-type" style="display: none;">
                                            <li>
                                                <ul name="ul-listFile-{{Index}}" class="lst-main" id="TaiLieuHop_CoQuanChuTri_ListFile_{{Index}}">
                                                    
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                            </script>

                            <script id="dataCoQuanChuTri-listNoiDung-Template" type="x-tmpl-mustache">   
                                <li>
                                    <div class="chill-title inline" data-id-parent-tencoquanchutri="{{TaiLieu_CoQuanChuTri}}"  data-id-parent-coquanchutri="{{ParentID}}" data-id-chill="{{Index}}" data-name-chill="{{TaiLieu_NoiDung}}" onclick="quanLyController.f_CloseChill(this)">
                                            <i class="glyphicon glyphicon-plus"></i>
                                            <span class="bold">{{TaiLieu_NoiDung}}</span>
                                    </div>
                                    <div class="inline">
                                            <button type="button" data-TenNoiDungTaiLieu="{{TaiLieu_NoiDung}}" data-TenCoQuanChuTri-NoiDung="{{TaiLieu_CoQuanChuTri}}"
                                                class="Edit_FileCuocHop btn btn-info btn-xs" onclick="f_UpdTaiLieuNoiDung(this)">
                                                    <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                            </button>
                                            <button type="button" data-TenNoiDungTaiLieu="{{TaiLieu_NoiDung}}" class="btn btn-danger btn-xs" onclick="quanLyController.f_DeleteTaiLieuNoiDung(this)">
                                                  <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                            </button>
                                        </div>
                                    <ul id="ul-file-chill-{{ParentID}}-{{Index}}" data-ulFileShow="ul-file-chill-{{ParentID}}-{{Index}}" class="ul-tree-type" style="display: none;">
                                            <li>
                                                <ul name="ul-listFile-chill-{{ParentID}}-{{Index}}" class="lst-main" id="TaiLieuHop_ListNoidung_{{ParentID}}_{{Index}}">
                                                    
                                                </ul>
                                            </li>
                                    </ul>
                                </li>            
                            </script>

                            <script id="dataCoQuanChuTri-listFile-Template" type="x-tmpl-mustache">   
                                <li data-id-parent-noidung="01">
                                    <span class="gly-file glyphicon glyphicon-file" title="{{TenFile}}"></span>
                                    <span class="cursor-default">{{TenFile}}</span>
                                    {{{IsCongKhai}}}
                                    <button type="button" 
                                    data-TaiLieuCuocHopID="{{TaiLieuCuocHopID}}"
                                    data-TenTaiLieu="{{TenTaiLieu}}"
                                    data-TaiLieu_CoQuanChuTri="{{TaiLieu_CoQuanChuTri}}"
                                    data-TenFile="{{TenFile}}"
                                    data-FileID="{{FileID}}"
                                    data-VanBanLienQuan="{{VanBanLienQuan}}"
                                    data-DuocCongKhai="{{DuocCongKhai}}"
                                    class="Edit_FileCuocHop btn btn-info btn-xs" onclick="quanLyController.f_UpdTaiLieuCuocHop(this)">
                                        <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>
                                    <button type="button" data-fileid={{FileID}} class=" btn btn-default btn-xs" onclick="quanLyController.f_DonwLoadFile(this)">
                                        <i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif" ;=""></span></i>
                                    </button>
                                    <button type="button" data-fileid={{FileID}} class="btn btn-danger btn-xs" onclick="quanLyController.f_DeleteFile(this)">
                                        <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>
                                </li>            
                            </script>

                            <div style="margin-top: 11px; display: none;">
                                <table id="IDTableDanhSachTaiLieu"
                                    data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
                                    data-toggle="table"
                                    data-page-size="5"
                                    data-mobile-responsive="true"
                                    data-pagination="true"
                                    data-show-footer="false"
                                    data-height="500"
                                    data-formatter="detailFormatter"
                                    data-sort-order="desc"
                                    data-page-list="[5, 25, 50, 100, ALL]">
                                    <thead>
                                        <tr class="headings">
                                            <th data-align="center" data-sortable="true" data-field="STT">STT</th>
                                            <th data-field="TaiLieu_CoQuanChuTri" data-sortable="true" data-align="left">Cơ quan chủ trì</th>
                                            <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                            <th data-field="TenFile" style="word-break: break-word" data-sortable="true" data-align="left">Tên Tệp</th>
                                            <%--<th data-field="VanBanLienQuan" data-sortable="true" data-align="center">Văn bản liên quan</th>--%>
                                            <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                            <th data-field="ChucNang" data-formatter="ChucNangChinhSuaFile" data-events="operateEvents" data-align="center">Chức năng</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>




                        </td>
                    </tr>
                    <tr id="trNoiDungKhongPheDuyet" style="display: none">
                        <td class="e-textlabel" style="float: left">Nội dung không phê duyệt</td>
                        <td class="e-textlabel" style="float: left"></td>
                        <td colspan="6">
                            <textarea id="NoiDungKhongPheDuyet" readonly="readonly" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br />

        </form>
        <div>
            <div class="col-md-3"></div>
            <button type="button" id="btnLuu" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu</button>
            <button type="button" id="btnSaoChep" class="btn btn-primary"><i class="fa fa-copy"></i>&nbsp Sao chép</button>
            <button type="button" style="display: none" class="btn btn-default" id="btnPrintQR"><i class="fa fa-qrcode">&nbsp Tải QR</i></button>
            <a id="linkQRCode" href="/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/QR_Image/QR.png" style="display: none" download>QR Code</a>
            <%--<button type="button" id="btnChuyenDuyetCuocHop" class="btn btn-primary">
                <i class="fa fa-share"></i>
                Chuyển duyệt
            </button>--%>
            <button type="button" id="btnPheDuyetLichHop" class="btn btn-primary"><i class="fa fa-check-circle"></i>&nbsp Phê duyệt</button>
            <button type="button" id="btnTroVe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
        </div>
    </div>

</div>

<div id="customWindowDetail" style="padding: 1em; display: none;">
    <div id="appointmentWindowDetail" class="appointmentWindow">
        <form id="customAppointmentWindowDetail">
            <div style="margin-left: 42px">
                <div class="row">
                    <div class="col-md-12">
                        <legend>Thông tin cuộc họp</legend>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Loại lịch họp
                    </div>
                    <div class="col-md-3">
                        <label id="lblLoaiLichHop"></label>
                    </div>
                    <div class="col-md-2 e-textlabel">
                        Cuộc họp
                    </div>
                    <div class="col-md-3">
                        <label id="lblTenCuocHop"></label>
                    </div>
                </div>
                <br />
                <div class="row">

                    <div class="col-md-2 e-textlabel">
                        Thời gian họp
                    </div>
                    <div class="col-md-4">
                        <label id="lblGioBatDau"></label>

                        &nbsp<label id="lblNgayHop"></label>
                        -&nbsp<label id="lblGioKetThuc">
                        </label>
                        &nbsp<label id="lblNgayHopKetThuc"></label>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Chủ trì
                    </div>
                    <div class="col-md-3">
                        <label id="lblChuTri"></label>
                    </div>
                    <div class="col-md-2 e-textlabel">
                        Thư ký
                    </div>
                    <div class="col-md-4">
                        <label id="lblThuKy"></label>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Địa điểm
                    </div>
                    <div class="col-md-3">
                        <label id="lblDiaDiem"></label>
                    </div>
                    <div class="col-md-2 e-textlabel">
                        Người soạn lịch
                    </div>
                    <div class="col-md-4">
                        <label id="lblNguoiSoanLich"></label>
                    </div>
                </div>
                <br />
                <div id="divTenPhongHopKhac" style="display: none">
                    <div class="row">
                        <div class="col-md-2 e-textlabel">
                            Tên phòng họp khác
                        </div>
                        <div class="col-md-8">
                            <label id="lblTenPhongHopKhac"></label>
                        </div>
                    </div>
                    <br />
                </div>
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Thành phần họp
                    </div>
                    <div class="col-md-8">
                        <label id="lblThanhPhanHop"></label>
                    </div>
                </div>
                <br />



                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Khách mời
                    </div>
                    <div class="col-md-8">
                        <label id="lblKhachMoi"></label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Chương trình họp
                    </div>
                    <%-- <div class="col-md-3">
                        <a id="urlChuongTrinhHop">Xem chi tiết chương trình họp</a>
                    </div>--%>
                    <div class="col-md-9">
                        <table id="IDTableChuongTrinhHopDetail"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-min-height="200"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr>
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenChuongTrinh" data-sortable="true" data-align="left">Tên chương trình</th>
                                    <th data-formatter="formatter_ChucNangChuongTrinhHopDetail" data-events="operateEventsChuongTrinhHopDetail" data-align="center"></th>
                                </tr>

                            </thead>
                        </table>
                    </div>
                    <div class="col-md-2 e-textlabel">
                        Biểu quyết
                    </div>
                    <div class="col-md-3">
                        <a id="urlNoiDungBieuQuyet">Xem nội dung biểu quyết</a>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Link họp Google Meeting
                    </div>
                    <div class="col-md-8">
                        <span id="lblGoogleMeet"></span>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Danh sách tài liệu họp
                    </div>
                    <div class="col-md-9">
                        <table id="IDTableDanhSachTaiLieuDetail"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-min-height="200"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TaiLieu_CoQuanChuTri" data-sortable="true" data-align="left">Cơ quan chủ trì</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên Tệp</th>
                                    <%--<th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="left">Văn bản liên quan</th>--%>
                                    <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>

                </div>
                <%--                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Danh sách thảo luận
                    </div>
                    <div class="col-md-9">
                        <table id="IDTableDanhSachThaoLuanDetail"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="200"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-field="STT" data-sortable="true">STT</th>
                                    <th data-field="TenLinhVuc" data-sortable="true" data-align="left">Tên Lĩnh vực</th>
                                    <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên file</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>--%>
                <br />
                <div id="divNoiDungKhongPheDuyet" class="row">
                    <div class="col-md-3 e-textlabel">
                        Nội dung không phê duyệt
                    </div>
                    <div class="col-md-6">
                        <label id="lblNoiDungKhongPheDuyet"></label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 e-textlabel">
                        Tình Trạng
                    </div>
                    <div class="col-md-2">
                        <div id="TinhTrangDetail">
                            <button class="btn btn-default" id="lblHuy" style="color: #fff; background-color: dimgrey; border-color: black; display: none">
                                &nbsp Hủy lịch họp&nbsp</button>
                            <button type="button" id="lblDangTao" style="display: none" class="btn btn-warning">&nbsp Đang tạo&nbsp</button>
                            <button type="button" id="lblDaDuyet" style="display: none" class="btn btn-primary">&nbsp Đã duyệt&nbsp</button>
                            <button type="button" id="lblChoDuyet" style="display: none" class="btn btn-danger">&nbsp Chờ duyệt&nbsp</button>
                            <button type="button" id="lblDaPhatHanh" style="display: none" class="btn btn-success">&nbsp Đã phát hành&nbsp</button>
                            <button type="button" id="lblKhongPheDuyet" style="display: none; color: #fff; background-color: #804000; border-color: #804000;" class="btn btn-success">&nbsp Không phê duyệt &nbsp</button>
                        </div>
                    </div>
                </div>
            </div>

        </form>
        <div>
            <div class="col-md-6"></div>
            <button type="button" id='btnXemLichHopTroVe' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Trở về</button>
        </div>
    </div>

</div>

<div id="customWindowXemChuongTrinhHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowXemChuongTrinhHop" class="appointmentWindow">
        <form id="customAppointmentWindowXemChuongTrinhHop">
            <div>
                <textarea id="summernoteXemChuongTrinhHop" name="editordata"></textarea>
            </div>
            <br />
        </form>
        <div>
            <br />
        </div>
    </div>

</div>

<div id="customWindowXemBieuQuyet" style="padding: 1em; display: none;">
    <div id="appointmentWindowXemBieuQuyet" class="appointmentWindow">
        <form id="customAppointmentWindowXemBieuQuyet">
            <div class="row">
                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableXemDanhSachBieuQuyet"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="300"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TieuDe" data-sortable="true" data-align="left">Tiêu đề</th>
                                    <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </form>

    </div>

</div>

<div id="customWindowThemChuongTrinhHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowThemChuongTrinhHop" class="appointmentWindow">
        <form id="customAppointmentWindowThemChuongTrinhHop">
            <div class="row" style="margin-bottom: 10px">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Tên chương trình họp</div>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="TenChuongTrinh" />
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Giờ bắt đầu<span style="color: red">*</span></div>
                <div class="col-md-2">
                    <select id="GioBatDauChuongTrinhHop" class="form-control">
                        <option value="">Giờ</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>

                    </select>
                </div>
                <div class="col-md-2">
                    <select id="PhutBatDauChuongTrinhHop" class="form-control">
                        <option value="">Phút</option>
                        <option value="00">00</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                        <option value="32">32</option>
                        <option value="33">33</option>
                        <option value="34">34</option>
                        <option value="35">35</option>
                        <option value="36">36</option>
                        <option value="37">37</option>
                        <option value="38">38</option>
                        <option value="39">39</option>
                        <option value="40">40</option>
                        <option value="41">41</option>
                        <option value="42">42</option>
                        <option value="43">43</option>
                        <option value="44">44</option>
                        <option value="45">45</option>
                        <option value="46">46</option>
                        <option value="47">47</option>
                        <option value="48">48</option>
                        <option value="49">49</option>
                        <option value="50">50</option>
                        <option value="51">51</option>
                        <option value="52">52</option>
                        <option value="53">53</option>
                        <option value="54">54</option>
                        <option value="55">55</option>
                        <option value="56">56</option>
                        <option value="57">57</option>
                        <option value="58">58</option>
                        <option value="59">59</option>

                    </select>
                </div>
                <div class="col-md-1 e-textlabel" style="margin-left: 18px">Từ Ngày<span style="color: red">*</span></div>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="TuNgayChuongTrinhHop" />
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Giờ kết thúc<span style="color: red">*</span></div>
                <div class="col-md-2">
                    <select id="GioKetThucChuongTrinhHop" class="form-control">
                        <option value="">Giờ</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>

                    </select>
                </div>
                <div class="col-md-2">
                    <select id="PhutKetThucChuongTrinhHop" class="form-control">
                        <option value="">Phút</option>
                        <option value="00">00</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                        <option value="32">32</option>
                        <option value="33">33</option>
                        <option value="34">34</option>
                        <option value="35">35</option>
                        <option value="36">36</option>
                        <option value="37">37</option>
                        <option value="38">38</option>
                        <option value="39">39</option>
                        <option value="40">40</option>
                        <option value="41">41</option>
                        <option value="42">42</option>
                        <option value="43">43</option>
                        <option value="44">44</option>
                        <option value="45">45</option>
                        <option value="46">46</option>
                        <option value="47">47</option>
                        <option value="48">48</option>
                        <option value="49">49</option>
                        <option value="50">50</option>
                        <option value="51">51</option>
                        <option value="52">52</option>
                        <option value="53">53</option>
                        <option value="54">54</option>
                        <option value="55">55</option>
                        <option value="56">56</option>
                        <option value="57">57</option>
                        <option value="58">58</option>
                        <option value="59">59</option>

                    </select>
                </div>
                <div class="col-md-1 e-textlabel" style="margin-left: 18px">Đến Ngày<span style="color: red">*</span></div>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="DenNgayChuongTrinhHop" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung chương trình họp</div>
                <div class="col-md-8">
                    <textarea id="summernote" name="editordata"></textarea>
                </div>
            </div>
            <div id="container">


                <input type="hidden" id="ChuongTrinhHopID" value="0">
            </div>
            <br />
        </form>
        <div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <button type="button" id="btnLuuChuongTrinhHop" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu</button>
                    <button type="button" id="btnTroVeChuongTrinhHop" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <table id="IDTableChuongTrinhHop"
                    data-classes="table table-striped jambo_table bulk_action vertical-align"
                    data-toggle="table"
                    data-page-size="5"
                    data-mobile-responsive="true"
                    data-pagination="true"
                    data-show-footer="false"
                    data-height="350"
                    data-formatter="detailFormatter"
                    data-sort-order="desc"
                    data-page-list="[5, 25, 50, 100, ALL]">
                    <thead>
                        <tr>
                            <th data-align="center" data-field="STT" data-sortable="true">STT</th>
                            <th data-field="TenChuongTrinh" data-sortable="true" data-align="left">Tên chương trình</th>
                            <th data-field="ThoiGianBatDau" data-sortable="true" data-align="left">Thời gian bắt đầu</th>
                            <th data-field="ThoiGianKetThuc" data-sortable="true" data-align="left">Thời gian kết thúc</th>
                            <th data-formatter="formatter_ChucNangChuongTrinhHop" data-events="operateEventsChuongTrinhHop" data-align="center">Chức năng</th>
                        </tr>

                    </thead>
                </table>
            </div>
        </div>
    </div>

</div>


<div id="customWindowCanhBaoTrungLichHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowCanhBaoTrungLichHop" class="appointmentWindow">
        <form id="customAppointmentWindowCanhBaoTrungLichHop">
            <div class="row" style="margin-left: 25px;">
                <div class="col-md-10 e-textlabel">
                    <h4>Hiện tại chủ trì này đang điều hành cuộc họp tại 1 thời điểm, bạn có muốn tiếp tục không ? </h4>
                </div>
            </div>
        </form>
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="button" id="btnDongYCanhBaoTrungLichHop" class="btn btn-primary">&nbsp Đồng ý</button>&nbsp&nbsp
                <button type="button" id="btnTroVeCanhBaoTrungLichHop" class="btn btn-info">&nbsp Trở về</button>
            </div>
        </div>
    </div>

</div>

<div id="customWindowGuiThaoLuan" style="padding: 1em; display: none;">
    <div id="appointmentWindowGuiThaoLuan" class="appointmentWindow">
        <form id="customAppointmentWindowGuiThaoLuan" style="margin-left: 70px;">
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Lĩnh vực <span style="color: red">*</span>
                </div>
                <div class="col-md-7">
                    <input type="text" id="LinhVucID" placeholder="Chọn lĩnh vực" autocomplete="off" />
                    <input type="hidden" id="ThaoLuanID" value="0" />
                    <input type="hidden" id="FileIDThaoLuan" />
                    <input type="hidden" id="TenFileThaoLuan" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Nội dung <span style="color: red">*</span>
                </div>
                <div class="col-md-7">
                    <textarea id="NoiDung" rows="5" cols="50" style="width: 100%; height: 70px !important; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Tệp đính kèm
                </div>
                <div class="col-md-7">
                    <input type="file" id="fileSelectThaoLuan" onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                    <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                </div>
            </div>
            <br />
            <div>
                <div class="col-md-4"></div>
                <button type="button" id="btnLuuThaoLuan" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu&nbsp</button>
                <button type="button" id="btnThaoLuanTroVe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Danh sách thảo luận
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-12">
                    <table id="IDTableDanhSachThaoLuan"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="5"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="350"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-field="STT" data-sortable="true">STT</th>
                                <th data-field="TenLinhVuc" data-sortable="true" data-align="left">Tên Lĩnh vực</th>
                                <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                <th data-field="TenFile" class="col-xs-2" data-sortable="true" data-align="left">Tên file</th>
                                <th data-formatter="ChucNangChinhSuaFile" data-events="operateEventsThaoLuan" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowGiayMoiHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowGiayMoiHop" class="appointmentWindow">
        <form id="customAppointmentWindowGiayMoiHop" style="margin-left: 70px;">
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Tệp đính kèm
                </div>
                <div class="col-md-7">
                    <input type="hidden" id="GiayMoiHopID" value="0" />
                    <input type="hidden" id="FileIDGiayMoiHop" />
                    <input type="hidden" id="TenFileGiayMoiHop" />
                    <input type="file" id="fileSelectGiayMoiHop" onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                    <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                </div>
            </div>
            <br />
            <div>
                <div class="col-md-4"></div>
                <button type="button" id="btnLuuGiayMoiHop" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu&nbsp</button>
                <button type="button" id="btnGiayMoiHopTroVe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Danh sách giấy mời họp
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-12">
                    <table id="IDTableDanhSachGiayMoiHop"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="5"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="350"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-field="STT" data-sortable="true">STT</th>
                                <th data-field="TenFile" class="col-xs-2" data-sortable="true" data-align="left">Tên file</th>
                                <th data-formatter="ChucNangChinhSuaFileGiayMoiHop" data-events="operateEventsGiayMoiHop" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowThemBieuQuyet" style="padding: 1em; display: none;">
    <div id="appointmentWindowThemBieuQuyet" class="appointmentWindow">
        <form id="customAppointmentWindowThemBieuQuyet">

            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Tiêu đề <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="TieuDe" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                    <input type="hidden" id="BieuQuyetID" value="0">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung biểu quyết</div>
                <div class="col-md-8">
                    <textarea id="NoiDungBieuQuyet" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuBieuQuyet" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu&nbsp</button>
                    <button type="button" id="btnLamMoiBieuQuyet" class="btn btn-default"><i class="fa fa-refresh "></i>&nbsp Làm mới</button>
                    <button type="button" id="btnTroVeBieuQuyet" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">
                    Danh sách biểu quyết
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableDanhSachBieuQuyet"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="300"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TieuDe" data-sortable="true" data-align="left">Tiêu đề</th>
                                    <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                    <th data-formatter="ChucNang" data-events="operateEventsDanhSachBieuQuyet" data-align="center">Chức năng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </form>

    </div>

</div>


<div id="customWindowVanBanLienQuan" style="padding: 1em; display: none;">
    <div id="appointmentWindowVanBanLienQuan" class="appointmentWindow">
        <form id="customAppointmentWindowVanBanLienQuan">
            <div class="">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#VanBanDen" data-toggle="tab">Văn bản đến</a></li>
                    <li><a href="#VanBanDi" data-toggle="tab">Văn bản đi</a></li>
                </ul>
            </div>
            <div class="tab-content">
                <div class="tab-pane active" id="VanBanDen">
                    <br />
                    <div class="">
                        <div class="col-md-1"></div>
                        <div class="col-md-1 e-textlabel" style="margin-left: 18px">Tìm kiếm</div>
                        <div class="col-md-6">
                            <input id="TimKiemVanBanDen" type="text" style="width: 100%" />
                        </div>

                    </div>
                    <br />
                    <br />
                    <div class="">
                        <div class="col-md-4"></div>
                        <div class="col-md-6">
                            <button type="button" id="btnTimKiemVanBanDen" class="btn btn-default"><i class="fa fa-search "></i>&nbsp Tìm kiếm&nbsp</button>
                            <button type="button" id="btnChonVanBanDen" class="btn btn-primary"><i class="fa fa-check "></i>&nbsp Chọn&nbsp</button>
                            <button type="button" id="btnTroVeTimKiemVanBanDen" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                        </div>
                    </div>
                    <br />

                    <div class="">
                        <div class="col-md-12">
                            <div style="margin-top: 11px">
                                <table id="IDTableDanhSachVanBanLienQuanDen"
                                    data-classes="table table-striped jambo_table bulk_action vertical-align"
                                    data-toggle="table"
                                    data-page-size="5"
                                    data-mobile-responsive="true"
                                    data-pagination="true"
                                    data-show-footer="false"
                                    data-height="400"
                                    data-formatter="detailFormatter"
                                    data-sort-order="desc"
                                    data-page-list="[5, 25, 50, 100, ALL]">
                                    <thead>
                                        <tr class="headings">
                                            <th data-field="" data-checkbox="true"></th>
                                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                            <th data-field="sodendaydu" data-sortable="true" data-align="left">Số đến</th>
                                            <th data-field="trichyeu" class="col-md-3" data-sortable="true" data-align="left">Trích yếu</th>
                                            <th data-field="ngayden" data-sortable="true" data-align="left">Ngày đến</th>
                                            <th data-field="hanxuly" data-sortable="true" data-align="left">Hạn xử lý</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="VanBanDi">
                    <br />
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-1 e-textlabel" style="margin-left: 18px">Tìm kiếm <span style="color: red">*</span></div>
                        <div class="col-md-6">
                            <input id="TimKiemVanBanDi" type="text" style="width: 100%" />
                        </div>

                    </div>

                    <br />
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-6">
                            <button type="button" id="btnTimKiemVanBanDi" class="btn btn-default"><i class="fa fa-search "></i>&nbsp Tìm kiếm&nbsp</button>
                            <button type="button" id="btnChonVanBanDi" class="btn btn-primary"><i class="fa fa-check "></i>&nbsp Chọn&nbsp</button>
                            <button type="button" id="btnTroVeTimKiemVanBanDi" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-10">
                            <div style="margin-top: 11px">
                                <table id="IDTableDanhSachVanBanLienQuanDi"
                                    data-classes="table table-striped jambo_table bulk_action vertical-align"
                                    data-toggle="table"
                                    data-page-size="5"
                                    data-mobile-responsive="true"
                                    data-pagination="true"
                                    data-show-footer="false"
                                    data-height="300"
                                    data-formatter="detailFormatter"
                                    data-sort-order="desc"
                                    data-page-list="[5, 25, 50, 100, ALL]">
                                    <thead>
                                        <tr class="headings">
                                            <th data-field="" data-checkbox="true"></th>
                                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                            <th data-field="sodendaydu" data-sortable="true" data-align="left">Số phát hành</th>
                                            <th data-field="trichyeu" class="col-md-3" data-sortable="true" data-align="left">Trích yếu</th>
                                            <th data-field="ngayden" data-sortable="true" data-align="left">Ngày phát hành</th>
                                            <th data-field="hanxuly" data-sortable="true" data-align="left">Hạn xử lý</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div>

<div id="customWindowDanhSachSchedulePhatHanh" style="padding: 1em; display: none;">
    <div id="appointmentWindowDanhSachSchedulePhatHanh" class="appointmentWindow">
        <form id="customAppointmentDanhSachSchedulePhatHanh">
            <br />
            <div class="row">
                <div class="col-md-7"></div>
                <div class="col-md-5 pull-right">
                    <button type="button" id="btnPhatHanhMulti" class="btn btn-primary"><i class="fa fa-paper-plane-o"></i>&nbsp Phát hành&nbsp</button>
                    <button type="button" id="btnHuyLichHopMulti" class="btn btn-danger"><i class="fa  fa-remove"></i>&nbsp Hủy lịch họp</button>
                    <button type="button" id="btnTroVePhatHanhMulti" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-md-12">
                    <div style="margin-top: -24px">
                        <table id="IDTableDanhSachSchedulePhatHanh"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-search="true"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="400"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-field="" data-checkbox="true"></th>
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenCuocHop" class="col-md-4" data-sortable="true" data-align="left">Tên cuộc họp</th>
                                    <th data-field="ThoiGian" data-sortable="true" data-align="center">Thời gian</th>
                                    <th data-field="TenPhongHop" data-sortable="true" data-align="center">Địa điểm</th>
                                    <th data-field="TenTinhTrang" data-formatter="formatterTinhTrang" data-sortable="true" data-align="center">Tình trạng</th>
                                    <th data-formatter="ChucNang" data-events="operateEventsSchedulePhatHanh" data-align="center">Chức năng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </form>

    </div>

</div>

<div id="customWindowDanhSachSchedulePhatHanhXuatExcel" style="padding: 1em; display: none;">
    <div id="appointmentWindowDanhSachSchedulePhatHanhXuatExcel" class="appointmentWindow">
        <form id="customAppointmentDanhSachSchedulePhatHanhXuatExcel">
            <br />
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2 pull-right">
                    <button type="button" id="btnXuatExcel" class="btn btn-success"><i class="fa fa-file-excel-o"></i>&nbsp Xuất Excel&nbsp</button>
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableDanhSachSchedulePhatHanhXuatExcel"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="500"
                            data-use-row-attr-func="true"
                            data-reorderable-rows="true"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenCuocHop" class="col-xs-3" data-sortable="true" data-align="left">Tên cuộc họp</th>
                                    <th data-field="ThoiGian" data-sortable="true" data-align="center">Thời gian</th>
                                    <th data-field="TenPhongHop" data-sortable="true" data-align="center">Địa điểm</th>
                                    <th data-field="TenTinhTrang" data-formatter="formatterTinhTrang" data-sortable="true" data-align="center">Tình trạng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </form>

    </div>

</div>


<div id="customWindowDanhSachPhongHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowDanhSachPhongHop" class="appointmentWindow">
        <form id="customAppointmentDanhSachPhongHop">
            <br />
            <div class="row">
                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableDanhSachPhongHop"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="7"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="420"
                            data-use-row-attr-func="true"
                            data-reorderable-rows="true"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[7, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="Ten" data-sortable="true" data-align="left">Tên phòng họp</th>
                                    <th data-sortable="true" data-formatter="DownloadQR" data-events="EventsDownloadQR">Tải QR</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </form>

    </div>

</div>


<div id="customWindowPhatHanhLichHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowPhatHanhLichHop" class="appointmentWindow">

        <form id="customAppointmentPhatHanhLichHop">
            <div class="row">
                <%--<div class="col-md-1">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    LỊCH LÀM VIỆC CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY
                </div>
            </div>
            <div class="row">
                <%-- <div class="col-md-3">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    (Tuần thứ
                    <label id="lblTuan"></label>
                    từ ngày
                    <label id="lblTuNgay"></label>
                    đến ngày
                    <label id="lblDenNgay"></label>
                    )
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Nội dung </div>
                <div class="col-md-8">
                    <textarea id="NoiDungPhatHanh" name="Description" rows="10" cols="50" style="width: 100%; height: 50%; resize: vertical"></textarea>
                    <input type="hidden" id="PhatHanhID" value="0">
                    <input type="hidden" id="LichHopPhatHanhID" value="">
                    <input type="hidden" id="LoaiLichHopPhatHanhTuan" value="0">
                    <input type="hidden" id="IsClickPhatHanhMutil" value="">
                    <input type="hidden" id="ListEmailThanhPhan" value="">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Lịch đã ký <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <input type="file" id="fileSelectPhatHanh" onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                    <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                    <input type="hidden" id="TenFilePhatHanh" value="">
                    <input type="hidden" id="FileIDPhatHanh" value="">
                </div>
            </div>
            <div class="row" id='divIDTableFileLichHopPhatHanh' style="display: none">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px"></div>
                <div class="col-md-8">
                    <table id="IDTableFileLichHopPhatHanh"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="5"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="200"
                        data-use-row-attr-func="true"
                        data-reorderable-rows="true"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                <th data-formatter="ChucNangChinhSuaFileLichHopPhatHanh" data-events="operateEventsFileLichHopPhatHanh" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Email đơn vị / cá nhân</div>
                <div class="col-md-8">
                    <div class="divTagEmailDonViKhac divTagVanBanLienQuan">
                        <input type="text" id="EmailDonViKhac" disabled style="width: 100%" name="Description" data-role="tagsinput" />
                    </div>

                </div>
                <div class="col-md-1 e-textlabel" style="margin-left: -19px; margin-top: 8px">
                    <button type="button" id="btnAddDonViKhac" class="btn btn-success"><i class="fa fa-plus"></i></button>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Email nhận thông báo <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <input type="text" id="EmailNhanThongBao" style="width: 100%" name="Description" data-role="tagsinput" />
                </div>

            </div>
            <br />



            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuPhatHanh" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu&nbsp</button>
                    <button type="button" id="btnPhatHanh" class="btn btn-primary"><i class="fa fa-send-o "></i>&nbsp Phát hành</button>
                    <button type="button" id="btnPhatHanhTrucTiep" class="btn btn-primary" style="display: none"><i class="fa fa-send-o "></i>&nbsp Phát hành</button>
                    <button type="button" id="btnTroVePhatHanh" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowGuiEmailThanhPhanNgoaiCoQuan" style="padding: 1em; display: none;">
    <div id="appointmentWindowGuiEmailThanhPhanNgoaiCoQuan" class="appointmentWindow">

        <form id="customAppointmentWindowGuiEmailThanhPhanNgoaiCoQuan">
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Email nhận thông báo</div>
                <div class="col-md-8">
                    <input type="text" id="EmailNhanThongBaoThanhPhanNgoaiCoQuan" style="width: 100%" name="Description" data-role="tagsinput" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnGuiEmailThanhPhanNgoaiCoQuan" class="btn btn-primary"><i class="fa fa-send-o "></i>&nbsp Gửi Email</button>
                    <button type="button" id="btnTroVeGuiEmailThanhPhanNgoaiCoQuan" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowInLichHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowInLichHop" class="appointmentWindow">
        <form id="customAppointmentInLichHop">
            <div class="row">
                <%--<div class="col-md-1">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    LỊCH LÀM VIỆC CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY
                </div>
            </div>
            <div class="row">
                <%--<div class="col-md-3">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    <div id="lblThoiGian">
                        (Tuần thứ
                        <label id="lblTuanIn"></label>
                        từ ngày
                        <label id="lblTuNgayIn"></label>
                        đến ngày
                        <label id="lblDenNgayIn"></label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Công tác tập trung <span style="color: red">*</span></div>
                <div class="col-md-9">
                    <div id="CongTacTapTrung"></div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnInLichHop" class="btn btn-primary"><i class="fa fa-print"></i>&nbsp In lịch</button>
                    <button type="button" id="btnTroVeLichHop" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowXemLichHopPhatHanh" style="padding: 1em; display: none;">
    <div id="appointmentWindowXemLichHopPhatHanh" class="appointmentWindow">
        <form id="customAppointmentXemLichHopPhatHanh">
            <div class="row">
                <%--<div class="col-md-1">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    LỊCH LÀM VIỆC CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY
                </div>
            </div>
            <div class="row">
                <%-- <div class="col-md-3">
                </div>--%>
                <div class="col-md-12 e-textlabel" style="font-size: large; text-align: center;">
                    (Tuần thứ
                    <label id="lblTuanXemLichHopPhatHanh"></label>
                    từ ngày
                    <label id="lblTuNgayXemLichHopPhatHanh"></label>
                    đến ngày
                    <label id="lblDenNgayXemLichHopPhatHanh"></label>
                    )
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Nội dung <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="NoiDungPhatHanhXemLichHopPhatHanh" name="Description" rows="10" cols="50" style="width: 100%; height: 50%; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Lịch đã ký <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <table id="IDTableFileXemLichHopPhatHanh"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="1"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="200"
                        data-use-row-attr-func="true"
                        data-reorderable-rows="true"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                <th data-formatter="ChucNangChinhSuaFileTaiLieuHop" data-events="operateEventsFile" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Email đơn vị / cá nhân</div>
                <div class="col-md-8">
                    <input type="text" id="EmailDonViKhacXemLichHopPhatHanh" style="width: 100%" disabled name="Description" data-role="tagsinput" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px">Email nhận thông báo</div>
                <div class="col-md-8">
                    <input type="text" id="EmailNhanThongBaoXemLichHopPhatHanh" style="width: 100%" disabled name="Description" data-role="tagsinput" />
                </div>
            </div>
            <br />


            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnTroVePhatHanhXemLichHopPhatHanh" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowShowFileDinhkem" style="padding: 1em; display: none;">
    <div id="appointmentWindowShowFileDinhkem" class="appointmentWindow">
        <form id="customAppointmentDanhSachShowFileDinhkem">
            <br />
            <div class="row">
                <div class="col-md-9"></div>
                <div class="col-md-3 pull-right">
                    <button type="button" data-toggle="tooltip" data-placement="top" title="Gửi Email tài liệu" id="btnGuiEmailTaiLieu" style="display: none" class="btn btn-default"><i class="fa fa-envelope-o"></i></button>
                    <button type="button" data-toggle="tooltip" data-placement="top" title="Không công khai" id="btnKhongCongKhai" class="btn btn-default" style="display: none"><i class="fa fa-eye-slash"></i></button>
                    <button type="button" data-toggle="tooltip" data-placement="top" title="Công khai" id="btnCongKhai" class="btn btn-default" style="display: none"><i class="fa fa-globe"></i></button>
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableDanhSachTaiLieuHop"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="5"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="400"
                            data-use-row-attr-func="true"
                            data-reorderable-rows="true"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-field="" data-checkbox="true"></th>
                                    <th data-align="center" data-sortable="true" data-field="STT">STT</th>
                                    <th data-field="TaiLieu_CoQuanChuTri" data-sortable="true" data-align="left">Cơ quan chủ trì</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                    <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                    <th data-formatter="ChucNangChinhSuaFileTaiLieuHop" data-events="operateEventsFile" data-align="center">Chức năng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </form>

    </div>

</div>

<div id="customWindowShowThemFileDinhkem" style="padding: 1em; display: none;">
    <div id="appointmentWindowShowThemFileDinhkem" class="appointmentWindow">
        <form id="customAppointmentDanhSachShowThemFileDinhkem" enctype="multipart/form-data" style="margin-left: 30px">
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Cơ quan chủ trì <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TaiLieu_CoQuanChuTriShowThemFileDinhkem" type="text" value="" name="TaiLieu_CoQuanChuTriShowThemFileDinhkem" style="width: 100%" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Nội dung tài liệu  <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenTaiLieuShowThemFileDinhkem" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                    <input type="hidden" id="TaiLieuCuocHopIDShowThemFileDinhkem" value="0">
                    <input type="hidden" id="TenFileShowThemFileDinhkem" value="">
                    <input type="hidden" id="FileIDShowThemFileDinhkem" value="">
                </div>
            </div>
            <br />


            <div class="row" style="display: none;">
                <div class="col-md-2 e-textlabel">Văn bản liên quan</div>
                <div class="col-md-9">
                    <button type="button" id="btnShowVanBanLienQuanShowThemFileDinhkem" class="btn btn-info">...</button>
                    <input id="TagVanBanLienQuanShowThemFileDinhKem" data-role="tagsinput" type="text" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">Tệp đính kèm</div>
                <div class="col-md-9">
                    <input type="file" id="fileSelectShowThemFileDinhkem" onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                    <span style="color: red">xlsx, xls, docx, doc, pdf</span><br>
                    <input type="checkbox" style="margin-top: -3px;" id="DuocCongKhaiShowThemFileDinhkem" checked="checked" value="True">
                    <label>Công khai</label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemShowThemFileDinhkem" class="btn btn-success">Thêm</button>
                </div>
            </div>

            <br />
            <div style="margin-left: -32px;">
                <div class="col-md-2 e-textlabel">
                    Danh sách tài liệu họp 
                </div>
                <div class="col-md-9">
                </div>
            </div>
            <br />
            <div class="">
                <div class="col-md-12">
                    <table id="IDTableDanhSachTaiLieuHopShowThemFileDinhkem"
                        data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="5"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="400"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-sortable="true" data-field="STT">STT</th>
                                <th data-field="TaiLieu_CoQuanChuTri" data-sortable="true" data-align="left">Cơ quan chủ trì</th>
                                <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Nội dung tài liệu</th>
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                <%-- <th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="center">Văn bản liên quan</th>--%>
                                <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                <th data-formatter="ChucNangChinhSuaFile" data-events="operateEventsShowThemFileDinhkem" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </form>
    </div>

</div>

<script type="text/javascript">

    $.fn.bootstrapTable.locales['vi-VN'] = $.fn.bootstrapTable.locales['vi'] = {
        formatCopyRows() {
            return 'Copy Rows'
        },
        formatPrint() {
            return 'Print'
        },
        formatLoadingMessage() {
            return 'Đang tải'
        },
        formatRecordsPerPage(pageNumber) {
            return `${pageNumber} bản ghi mỗi trang`
        },
        formatShowingRows(pageFrom, pageTo, totalRows, totalNotFiltered) {
            if (totalNotFiltered !== undefined && totalNotFiltered > 0 && totalNotFiltered > totalRows) {
                return `Hiển thị từ trang ${pageFrom} đến ${pageTo} của ${totalRows} bảng ghi (filtered from ${totalNotFiltered} total rows)`
            }

            return `Hiển thị từ trang ${pageFrom} đến ${pageTo} của ${totalRows} bảng ghi`
        },
        formatSRPaginationPreText() {
            return 'previous page'
        },
        formatSRPaginationPageText(page) {
            return `to page ${page}`
        },
        formatSRPaginationNextText() {
            return 'next page'
        },
        formatDetailPagination(totalRows) {
            return `Showing ${totalRows} rows`
        },
        formatClearSearch() {
            return 'Clear Search'
        },
        formatSearch() {
            return 'Tìm kiếm'
        },
        formatNoMatches() {
            return 'Không có dữ liệu'
        },
        formatPaginationSwitch() {
            return 'Hide/Show pagination'
        },
        formatPaginationSwitchDown() {
            return 'Show pagination'
        },
        formatPaginationSwitchUp() {
            return 'Hide pagination'
        },
        formatRefresh() {
            return 'Refresh'
        },
        formatToggle() {
            return 'Toggle'
        },
        formatToggleOn() {
            return 'Show card view'
        },
        formatToggleOff() {
            return 'Hide card view'
        },
        formatColumns() {
            return 'Columns'
        },
        formatColumnsToggleAll() {
            return 'Toggle all'
        },
        formatFullscreen() {
            return 'Fullscreen'
        },
        formatAllRows() {
            return 'All'
        },
        formatAutoRefresh() {
            return 'Auto Refresh'
        },
        formatExport() {
            return 'Export data'
        },
        formatJumpTo() {
            return 'GO'
        },
        formatAdvancedSearch() {
            return 'Advanced search'
        },
        formatAdvancedCloseButton() {
            return 'Close'
        },
        formatFilterControlSwitch() {
            return 'Hide/Show controls'
        },
        formatFilterControlSwitchHide() {
            return 'Hide controls'
        },
        formatFilterControlSwitchShow() {
            return 'Show controls'
        }
    }
    $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['vi-VN'])

    $(document).keydown(function (event) {
        //$('#EmailDonViKhac').find('a').remove();
        //$('divTagVanBanLienQuan').attr('disabled', 'disabled');
        $('#EmailDonViKhac').tagsinput('input').prop("readonly", true);
    });

    //$(document).on("contextmenu", function (e) {
    //    e.preventDefault();
    //});




    function LoadScheduleByColorStatus(LableId) {
        return;
        $("#Schedule1").ejSchedule({
            appointmentSettings: {
                dataSource: ""
            }
        });
        if (dataMapSchedule == null) {
            return;
        }
        switch (LableId) {
            case "DangTao":
                if (!$("#" + LableId + "").is(":checked")) {
                    TinhTrangColor.push(1);
                }
                else {
                    removeItem(TinhTrangColor, 1)
                }

                break;
            case "ChoDuyet":
                if (!$("#" + LableId + "").is(":checked")) {

                    TinhTrangColor.push(2);
                }
                else {
                    removeItem(TinhTrangColor, 2)
                }
                break;
            case "KhongPheDuyet":
                if (!$("#" + LableId + "").is(":checked")) {
                    TinhTrangColor.push(9);
                }
                else {
                    removeItem(TinhTrangColor, 9)
                }
                break;
            case "DaDuyet":
                if (!$("#" + LableId + "").is(":checked")) {

                    TinhTrangColor.push(8);
                }
                else {
                    removeItem(TinhTrangColor, 8)
                }
                break;
            case "DaPhatHanh":
                if (!$("#" + LableId + "").is(":checked")) {

                    TinhTrangColor.push(3);
                }
                else {
                    removeItem(TinhTrangColor, 3)
                }
                break;
            case "HuyHop":
                if (!$("#" + LableId + "").is(":checked")) {

                    TinhTrangColor.push(4);
                }
                else {
                    removeItem(TinhTrangColor, 4)
                }
                break;
        }
        if (LableId == "TrungLich") {
            if (!$("#" + LableId + "").is(":checked")) {
                $("#Schedule1").ejSchedule({
                    appointmentSettings: {
                        dataSource: dataMapSchedule.filter(x => TinhTrangColor.indexOf(+x.Categorize) !== -1 && (x.IsDuplicate == true || x.IsDuplicate == false || x.IsDuplicate == null))
                    }
                });
            }
            else {
                $("#Schedule1").ejSchedule({
                    appointmentSettings: {
                        dataSource: dataMapSchedule.filter(x => TinhTrangColor.indexOf(+x.Categorize) !== -1 && (x.IsDuplicate == false || x.IsDuplicate == null))
                    }
                });
            }
        }
        else {

            $("#Schedule1").ejSchedule({
                appointmentSettings: {
                    dataSource: dataMapSchedule.filter(x => TinhTrangColor.indexOf(+x.Categorize) !== -1)
                }
            });


        }


    };


    ej.DatePicker.Locale['vi-VN'] = {
        watermarkText: "Chọn ngày",
        buttonText: 'Hôm nay'
    };

    $("#NgayHop").ejDatePicker({
        locale: "vi-VN",
        dateFormat: "dd/MM/yyyy",
        width: "100%",
    });
    $("#NgayHopKetThuc").ejDatePicker({
        locale: "vi-VN",
        dateFormat: "dd/MM/yyyy",
        width: "100%",
    });
    $("#TuNgayChuongTrinhHop").ejDatePicker({
        locale: "vi-VN",
        dateFormat: "dd/MM/yyyy",
        width: "100%",
    });

    $("#DenNgayChuongTrinhHop").ejDatePicker({
        locale: "vi-VN",
        dateFormat: "dd/MM/yyyy",
        width: "100%",
    });

    alertify.defaults.transition = "slide";
    alertify.defaults.theme.ok = "btn btn-primary";
    alertify.defaults.theme.cancel = "btn btn-default"
    alertify.defaults.theme.input = "form-control";
    var Loai = "";
    var TuNgay = "";
    var DenNgay = "";
    var Thang = "";
    var Nam = "";

    $(function () {

        $('#summernote').summernote({
            height: 300,
            width: 1000,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                //['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
            ]
        });


        $('#NoiDungPhatHanhXemLichHopPhatHanh').summernote({
            height: 300,
            width: 1000,
            toolbar: [
                ['view']
            ]
        });
        $('#CongTacTapTrung').summernote({
            height: 300,
            width: 800,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                //['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
            ]
        });

        $('#NoiDungPhatHanh').summernote({
            height: 300,
            width: 1000,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                //['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
            ]
        });

        $('#summernoteXemChuongTrinhHop').summernote({
            toolbar: [
                ['view']
            ]
        });
    });


    ej.Schedule.Locale["vi-VN"] = {
        ReminderWindowTitle: "cửa sổ nhắc nhở",
        CreateAppointmentTitle: "tạo Bổ nhiệm",
        RecurrenceEditTitle: "Sửa Lặp lại hẹn",
        RecurrenceEditMessage: "Làm thế nào bạn muốn thay đổi cuộc hẹn trong chuỗi?",
        RecurrenceEditOnly: "Chỉ có cuộc hẹn này",
        RecurrenceEditSeries: "toàn bộ loạt",
        PreviousAppointment: "Bổ nhiệm trước",
        NextAppointment: "Bổ nhiệm kế tiếp",
        AppointmentSubject: "Môn học",
        StartTime: "Thời gian bắt đầu",
        EndTime: "Thời gian kết thúc",
        AllDay: "Cả ngày",
        StartTimeZone: "Khu Thời gian bắt đầu",
        EndTimeZone: "Time Zone End",
        Today: "Hôm nay",
        Recurrence: "lặp lại",
        Done: "Làm xong",
        Cancel: "hủy bỏ",
        Ok: "Được",
        Repeat: "lặp lại",
        RepeatBy: "lặp lại bởi",
        RepeatEvery: "lặp lại mỗi",
        RepeatOn: "lặp lại",
        StartsOn: "bắt đầu vào",
        Ends: "Kết thúc",
        Summary: "Tóm lược",
        Daily: "hằng ngày",
        Weekly: "hàng tuần",
        Monthly: "hằng tháng",
        Yearly: "hàng năm",
        Every: "tất cả",
        EveryWeekDay: "mỗi ngày trong tuần",
        Never: "Không bao giờ",
        After: "Sau",
        Occurrence: "Sự xuất hiện (s)",
        On: "Trên",
        Edit: "Chỉnh sửa",
        RecurrenceDay: "Day (s)",
        RecurrenceWeek: "Tuần (s)",
        RecurrenceMonth: "Tháng (s)",
        RecurrenceYear: "Năm (s)",
        The: "Các",
        OfEvery: "của mỗi",
        First: "Đầu tiên",
        Second: "Thứ hai",
        Third: "thứ ba",
        Fourth: "thứ tư",
        Last: "Cuối cùng",
        WeekDay: "Weekday",
        WeekEndDay: "Cuối tuần ngày",
        Subject: "Môn học",
        Categorize: "Thể loại",
        DueIn: "do Trong",
        DismissAll: "Giải tán hết đi",
        Dismiss: "Bỏ qua",
        OpenItem: "mở hàng",
        Snooze: "giấc ngũ ngắn",
        Day: "Ngày",
        Week: "Tuần",
        WorkWeek: "Tuần làm việc",
        Month: "Tháng",
        AddEvent: "Thêm sự kiện",
        CustomView: "custom View",
        Agenda: "chương trình nghị sự",
        Detailed: "chỉnh sửa bổ nhiệm",
        EventBeginsin: "Bổ nhiệm Begins trong",
        Editevent: "chỉnh sửa bổ nhiệm",
        Editseries: "chỉnh sửa Chuỗi",
        Times: "thời gian",
        Until: "cho đến khi",
        Eventwas: "được bổ nhiệm",
        Hours: "giờ",
        Minutes: "phút",
        Overdue: "Bổ nhiệm quá hạn",
        Days: "day (s)",
        Event: "Biến cố",
        Select: "lựa chọn",
        Previous: "trước",
        Next: "kế tiếp",
        Close: "gần",
        Delete: "Xóa bỏ",
        Date: "Ngày",
        Showin: "Hiện tại",
        Gotodate: "Tới Đến ngày",
        Resources: "TÀI NGUYÊN",
        RecurrenceDeleteTitle: "Xóa Lặp lại hẹn",
        Location: "Vị trí",
        Priority: "quyền ưu tiên",
        RecurrenceAlert: "Báo động",
        NoTitle: "Không tiêu đề",
        OverFlowAppCount: "nhiều cuộc hẹn)",
        WrongPattern: "Các mô hình tái phát là không hợp lệ",
        CreateError: "Thời hạn bổ nhiệm phải được ngắn hơn thường xuyên như thế nào nó xảy ra. Rút ngắn thời gian, hoặc thay đổi mô hình tái phát trong Appointment Recurrence hộp thoại.",
        DragResizeError: "Không thể sắp xếp lại một sự xuất hiện của các cuộc hẹn định kỳ nếu nó bỏ qua một sự xuất hiện sau này của việc bổ nhiệm cùng.",
        StartEndError: "thời gian kết thúc phải lớn hơn thời gian bắt đầu",
        MouseOverDeleteTitle: "xóa hẹn",
        DeleteConfirmation: "Bạn có chắc chắn muốn xóa cuộc hẹn này?",
        Time: "Thời gian",
        EmptyResultText: "Chưa có đề xuất",
        BlockIntervalAlertTitle: "Cảnh báo",
        BlockIntervalError: "Khoảng thời gian đã chọn đã bị chặn và không khả dụng cho lựa chọn",
        RecurrenceDateValidation: "Một số tháng có ít hơn ngày được chọn. Trong những tháng này, sự xuất hiện sẽ rơi vào ngày cuối cùng của tháng",
        SeriesChangeAlert: "Những thay đổi được thực hiện cho các phiên bản cụ thể của loạt bài này sẽ bị hủy bỏ và các cuộc hẹn đó sẽ kết hợp lại loạt bài"
    };

    function _getImages(IsDuplicate, Subject) {
        switch (IsDuplicate) {
            case true:
                return '<i class="fa fa-flag"></i> ' + Subject + '';
            default:
                return Subject;
        }
    }

    $.views.helpers({ format: _getImages });

    $(function () {
        $("#Schedule1").ejSchedule({
            appointmentTemplateId: "#apptemplate",
            tooltipSettings: {
                enable: true,
                templateId: "#tooltipTemplate"
            },
            width: "100%",
            height: "2000px",
            views: ["Day", "Week", "Month"],
            startHour: 5,
            endHour: 22,
            showAllDayRow: false,
            allowDelete: false,
            workHours: {
                highlight: true,
                start: 7,
                end: 22
            },
            dateFormat: "dd/MM/yyyy",
            timeMode: ej.Schedule.TimeMode.Hour24,
            //currentDate: new Date('2020-07-24'),
            categorizeSettings: {
                enable: true,
                allowMultiple: true,
                dataSource: [
                    { text: "Orange Category", id: 1, color: "#f0ad4e", fontColor: "#ffffff" },
                    { text: "Red Category", id: 2, color: "rgba(255, 0, 0, 0.7)", fontColor: "#ffffff" },
                    { text: "Blue Category", id: 8, color: "#337ab7", fontColor: "#ffffff" },
                    { text: "Green Category", id: 3, color: "#008000", fontColor: "#ffffff" },
                    { text: "Black Category", id: 4, color: "#696969", fontColor: "#ffffff" },
                    { text: "Yellow Category", id: 6, color: "#d0af2b", fontColor: "#ffffff" },
                    { text: "", id: 9, color: "#804000", fontColor: "#ffffff" }
                ],
                text: "text", id: "id", color: "color", fontColor: "fontColor"
            },
            appointmentSettings: {
                id: "Id",
                subject: "Subject",
                startTime: "StartTime",
                endTime: "EndTime",
                description: "Description",
                allDay: "AllDay",
                CountFile: "CountFile",
                categorize: "Categorize",
                TenChuTri: "TenChuTri",
                TenThuKy: "TenThuKy",
                TenSoanLich: "TenSoanLich",
                ThanhPhan: "ThanhPhan",
                ThoiGianHop: "ThoiGianHop",
                TenPhongHop: "TenPhongHop",
                TenCuocHop: "TenCuocHop",
                PhongHopID: "PhongHopID",
                NguoiChuTriID: "NguoiChuTriID",
                IsDuplicate: "IsDuplicate",
                IsShowKiosk: "IsShowKiosk"

            },
            navigation: "OnNavigation",
            locale: "vi-VN",
            appointmentWindowOpen: "onAppointmentWindowOpen",
            cellClick: "onClick",
            //create: "onCreate",
            appointmentClick: "OnAppointmentClick",
            dragStop: "OnDragStop",
            resizeStop: "OnResizeStop",
        });

        LoadFirstTimeSchedule();

        $("#Schedule1").ejSchedule({
            navigation: function (args) {
                var currentDate = args.currentDate;
                var dd = String(currentDate.getDate()).padStart(2, '0');
                var mm = String(currentDate.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = currentDate.getFullYear();

                Loai = args.currentView;
                if (args.currentView == "day") {
                    return;
                }
                if (args.currentView == "month") {

                    Thang = mm;
                    Nam = yyyy;
                }

                else {

                    switch (currentDate.getDay()) {
                        case 0: // chủ nhật
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 6));
                            DenNgay = yyyy + '-' + mm + '-' + dd;
                            break;
                        case 1: // thứ hai
                            TuNgay = yyyy + '-' + mm + '-' + dd;
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                            break;
                        case 2: // thứ ba
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 1));
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                            break;
                        case 3:// thứ tư
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 2));
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                            break;
                        case 4:// thứ năm
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 3));
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));

                            break;
                        case 5: // thứ sáu
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 4));
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                            break;
                        case 6: // thứ bảy
                            TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 5));
                            DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                            break;
                    }
                }
                LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "");
                LoadNoiDungInAnTheoThoiGian(TuNgay, DenNgay);
                CheckPhatHanhByThoiGian(TuNgay, DenNgay, "3");// Đã phát hành
            }
        });

        function formatDate(date) {
            var d = new Date(date),
                month = '' + (d.getMonth() + 1),
                day = '' + d.getDate(),
                year = d.getFullYear();

            if (month.length < 2)
                month = '0' + month;
            if (day.length < 2)
                day = '0' + day;

            return [year, month, day].join('-');
        }

        function LoadFirstTimeSchedule() {
            var currentDate = new Date();
            var dd = String(currentDate.getDate()).padStart(2, '0');
            var mm = String(currentDate.getMonth() + 1).padStart(2, '0'); //January is 0!
            var yyyy = currentDate.getFullYear();
            Loai = "week";

            switch (currentDate.getDay()) {
                case 0: // chủ nhật
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 6));
                    DenNgay = yyyy + '-' + mm + '-' + dd;
                    break;
                case 1: // thứ hai
                    TuNgay = yyyy + '-' + mm + '-' + dd;
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                    break;
                case 2: // thứ ba
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 1));
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                    break;
                case 3:// thứ tư
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 2));
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                    break;
                case 4:// thứ năm
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 3));
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));

                    break;
                case 5: // thứ sáu
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 4));
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                    break;
                case 6: // thứ bảy
                    TuNgay = formatDate(currentDate.setDate(currentDate.getDate() - 5));
                    DenNgay = formatDate(currentDate.setDate(currentDate.getDate() + 6));
                    break;
            }
            LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "");
            LoadNoiDungInAnTheoThoiGian(TuNgay, DenNgay);
            CheckPhatHanhByThoiGian(TuNgay, DenNgay, "3");//Đã phát hành
        }

        //Append the reminder list to the Schedule header
        $("#Schedule1").find("tr.e-scheduleheader td").first().append($("#searchDiv"));
        $("#Schedule1").find("tr.e-scheduleheader td").first().append($("#ChucNang"));
        //$("#Schedule1").find("tr.e-scheduleheader td").first().append($("#TinhTrangColor"));

        $("#txtSearch").ejAutocomplete({ width: "241", watermarkText: "Tìm cuộc họp", showEmptyResultText: false, showPopupButton: false });
        $(".searchgroup").css("display", "inline-block");
        $("#txtSearch").keydown(function (e) {
            if (e.keyCode == 46) {
                $("#txtSearch").val("");
                showResult(null, "");
            }
        });

    });


    function OnResizeStop(args) {
        if (args.appointment.Categorize == 4) {
            return;
        }
        var dd = String(args.appointment.StartTime.getDate()).padStart(2, '0');
        var mm = String(args.appointment.StartTime.getMonth() + 1).padStart(2, '0'); //January is 0!
        var yyyy = args.appointment.StartTime.getFullYear();

        var NgayHop = yyyy + '-' + mm + '-' + dd
        var GioBatDau =
            ("0" + args.appointment.StartTime.getHours()).slice(-2) + ":" +
            ("0" + args.appointment.StartTime.getMinutes()).slice(-2) + ":" +
            ("0" + args.appointment.StartTime.getSeconds()).slice(-2)

        var GioKetThuc =
            ("0" + args.appointment.EndTime.getHours()).slice(-2) + ":" +
            ("0" + args.appointment.EndTime.getMinutes()).slice(-2) + ":" +
            ("0" + args.appointment.EndTime.getSeconds()).slice(-2)
        var dataLichHop =
        {
            "objLichHop": {
                "LichHopID": args.appointment.Id,
                "IsDelete": false,
                "NgayHop": NgayHop,
                "GioBatDau": GioBatDau,
                "GioKetThuc": GioKetThuc,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTimeDragAndDropSchedule",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    //alert_success("Lưu thành công");
                    //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                }
                else {
                    alert_error("Xảy ra lỗi")

                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }
    function OnDragStop(args) {
        if (args.appointment.Categorize == 4) {
            return;
        }
        var dd = String(args.appointment.StartTime.getDate()).padStart(2, '0');
        var mm = String(args.appointment.StartTime.getMonth() + 1).padStart(2, '0'); //January is 0!
        var yyyy = args.appointment.StartTime.getFullYear();

        var NgayHop = yyyy + '-' + mm + '-' + dd
        var GioBatDau =
            ("0" + args.appointment.StartTime.getHours()).slice(-2) + ":" +
            ("0" + args.appointment.StartTime.getMinutes()).slice(-2) + ":" +
            ("0" + args.appointment.StartTime.getSeconds()).slice(-2)

        var GioKetThuc =
            ("0" + args.appointment.EndTime.getHours()).slice(-2) + ":" +
            ("0" + args.appointment.EndTime.getMinutes()).slice(-2) + ":" +
            ("0" + args.appointment.EndTime.getSeconds()).slice(-2)

        var dataCheckTrungLich =
        {
            "objLichHop": {
                "LichHopID": args.appointment.Id,
                "NgayHop": NgayHop,
                "GioBatDau": GioBatDau,
                "GioKetThuc": GioKetThuc,
                "PhongHopID": args.appointment.PhongHopID,
                "NguoiChuTriID": args.appointment.NguoiChuTriID,
            },

        };

        if (args.appointment.Categorize == 3) //  đã phát hành
        {

            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CheckTrungLichHopByUserID",
                data: JSON.stringify(dataCheckTrungLich),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var obj = JSON.parse(reponse.d);
                        if (obj[0].IsExist == 1) {
                            alert_warning("Lịch họp này trùng với phòng hiện tại ! Xin vui lòng chọn phòng họp khác ")
                            LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "")
                            return;
                        }
                        else {

                            alertify.confirm("<h4>Lịch họp này sẽ dời vào ngày " + dd + "/" + mm + "/" + yyyy + " <br> Khung giờ " + GioBatDau.slice(0, -3) + " - " + GioKetThuc.slice(0, -3) + "</br>" +
                                "Hệ thống sẽ gửi tin nhắn tự động. Bạn có muốn tiếp tục giữ quyết định này không ?</h4 >",
                                function () {
                                    var dataLichHop =
                                    {
                                        "objLichHop": {
                                            "LichHopID": args.appointment.Id,
                                            "IsDelete": false,
                                            "NgayHop": NgayHop,
                                            "GioBatDau": GioBatDau,
                                            "GioKetThuc": GioKetThuc,
                                            "IsDuplicate": false,
                                            "TinhTrangID": 3
                                        }
                                    };
                                    $.ajax({
                                        type: "POST",
                                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTimeDragAndDropSchedule",
                                        data: JSON.stringify(dataLichHop),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        async: false,
                                        success: function (reponse) {
                                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                            if (reponse.d) {
                                                GuiSMSThongBaoLichHop(args.appointment.Id);
                                            }
                                            else {
                                                alert_error("Xảy ra lỗi")

                                            }


                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                        },
                                    });
                                    //alert_warning("Lịch họp này đã trùng với phòng họp hiện tại. Xin vui lòng chọn khoảng thời gian khác");
                                },
                                function () {
                                    LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "")
                                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');


                        }
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });

        }
        if (args.appointment.Categorize != 3) //
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CheckTrungLichHopByUserID",
                data: JSON.stringify(dataCheckTrungLich),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var obj = JSON.parse(reponse.d);
                        if (obj[0].IsExist == 1) {
                            alertify.confirm("<h4>Lịch họp này đã trùng với phòng họp hiện tại ?</br> Bạn có muốn tiếp tục giữ quyết định này không</h4>",
                                function () {
                                    var dataLichHop =
                                    {
                                        "objLichHop": {
                                            "LichHopID": args.appointment.Id,
                                            "IsDelete": false,
                                            "IsDuplicate": true,
                                            "NgayHop": NgayHop,
                                            "GioBatDau": GioBatDau,
                                            "GioKetThuc": GioKetThuc,
                                        }
                                    };
                                    $.ajax({
                                        type: "POST",
                                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTimeDragAndDropSchedule",
                                        data: JSON.stringify(dataLichHop),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        async: false,
                                        success: function (reponse) {
                                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                            if (reponse.d) {
                                                LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "")
                                                //alert_success("Lưu thành công");
                                                //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                                            }
                                            else {
                                                alert_error("Xảy ra lỗi")

                                            }


                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                        },
                                    });
                                    //alert_warning("Lịch họp này đã trùng với phòng họp hiện tại. Xin vui lòng chọn khoảng thời gian khác");
                                },
                                function () {
                                    LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "")
                                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');



                        }
                        else {
                            var dataLichHop =
                            {
                                "objLichHop": {
                                    "LichHopID": args.appointment.Id,
                                    "IsDelete": false,
                                    "NgayHop": NgayHop,
                                    "GioBatDau": GioBatDau,
                                    "GioKetThuc": GioKetThuc,
                                    "IsDuplicate": false,
                                }
                            };
                            $.ajax({
                                type: "POST",
                                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTimeDragAndDropSchedule",
                                data: JSON.stringify(dataLichHop),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                async: false,
                                success: function (reponse) {
                                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                    if (reponse.d) {
                                        //alert_success("Lưu thành công");
                                        //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                                    }
                                    else {
                                        alert_error("Xảy ra lỗi")

                                    }


                                },
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                },
                            });
                        }
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        }


    }
    function OnNavigation() {

    }




    function OnAppointmentClick(args) {
        //var RoleUser = "PheDuyet"
        //var RoleUser = "ThuKy"
        //var RoleUser = "ChuToa"
        //var RoleUser = "ThanhPhanhHop"
        var RoleUser = "QuanLy";
        $("#RoleUser").val(RoleUser);

        if (args.appointment) {
            if (RoleUser == "QuanLy") {
                $("#LichHopID").val(args.appointment.Id);

                $("#trChuyenDuyet").css("display", "none");
                $("#trSuaLichHop").css("display", "none");
                $("#trXoaLichHop").css("display", "none");
                $("#trThemChuongTrinhHop").css("display", "none");
                $("#trThemBieuQuyet").css("display", "none");
                $("#trXemLichHop").css("display", "none");
                $("#trGuiThaoLuan").css("display", "none");
                $("#trGiayMoiHop").css("display", "");
                $("#trHuyLichHop").css("display", "none");
                $("#trCheckShowKiosk").css("display", "none");

                switch (args.appointment.Categorize) {
                    case "1": // Đang tạo
                        $("#trChuyenDuyet").css("display", "");
                        $("#trSuaLichHop").css("display", "");
                        $("#trXoaLichHop").css("display", "");
                        $("#trThemChuongTrinhHop").css("display", "");
                        $("#trThemBieuQuyet").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        break;
                    case "2": //Chờ duyệt
                        $("#trSuaLichHop").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        $("#trXoaLichHop").css("display", "");
                        $("#trThemChuongTrinhHop").css("display", "");
                        $("#trThemBieuQuyet").css("display", "");
                        break;
                    case "3": //Đã phát hành
                        $("#trHuyLichHop").css("display", "");
                        $("#trSuaLichHop").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        $("#trThemChuongTrinhHop").css("display", "");
                        $("#trGuiThaoLuan").css("display", "");
                        $("#trGiayMoiHop").css("display", "");
                        $("#trCheckShowKiosk").css("display", "");
                        $("#trThemBieuQuyet").css("display", "");
                        if (args.appointment.IsShowKiosk == true) {
                            $("#CheckIsShowKiosk").prop("checked", true);
                        }
                        else {
                            $("#CheckIsShowKiosk").prop("checked", false);
                        }

                        $("#IsShowKiosk").val(args.appointment.IsShowKiosk);

                        break;
                    case "9":// Không Phê duyệt
                        $("#trXemLichHop").css("display", "");
                        $("#trSuaLichHop").css("display", "");
                        $("#trChuyenDuyet").css("display", "");
                        break
                    case "8"://Đã duyệt
                        $("#trSuaLichHop").css("display", "");
                        $("#trXoaLichHop").css("display", "");
                        $("#trThemChuongTrinhHop").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        $("#trGuiThaoLuan").css("display", "");
                        $("#trGiayMoiHop").css("display", "");
                        $("#trThemBieuQuyet").css("display", "");
                    case "4"://Hủy lịch họp
                        $("#trXemLichHop").css("display", "");
                        break;

                }
            }
            if (RoleUser == "PheDuyet") {
                $("#LichHopID").val(args.appointment.Id);
                $("#trChuyenDuyet").css("display", "none");
                $("#trSuaLichHop").css("display", "none");
                $("#trXoaLichHop").css("display", "none");
                $("#trThemChuongTrinhHop").css("display", "none");
                $("#trThemBieuQuyet").css("display", "none");
                $("#trXemLichHop").css("display", "none");
                $("#trGuiThaoLuan").css("display", "none");
                $("#trGiayMoiHop").css("display", "");
                $("#trHuyLichHop").css("display", "none");
                $("#trPheDuyetLichHop").css("display", "none");

                switch (args.appointment.Categorize) {
                    case "2": //Chờ duyệt
                        $("#trXemLichHop").css("display", "");
                        $("#trPheDuyetLichHop").css("display", "");
                        break;
                    case "3": //Đã phát hành
                        $("#trXemLichHop").css("display", "");
                        break;
                    case "8"://Đã duyệt
                        $("#trXemLichHop").css("display", "");
                        break;

                }
            }
        }
        //begin // ẩn popup mini when click mún biết comment lại thấy ra popup mini
        args.cancel = true;
        this._showAppointmentDetails(args.appointment.Guid, true);
        //end

    }

    function onClick(args) {
        $("#ChuanBiID").attr('disabled', false);
        $("#ThanhPhanID").attr('disabled', false);
        $("#ThanhPhanThamDuKhac").attr('disabled', false);
        $("#ChuanBiKhac").attr('disabled', false);
        $("#DoiTuongXemID").attr('disabled', false)
        $("#btnThem").attr('disabled', false)
        $('#IDTableDanhSachTaiLieu').bootstrapTable('showColumn', 'ChucNang');
        $("#GhiChu").attr('disabled', false);
        $("#btnShowVanBanLienQuan").attr('disabled', false)
        $("#TenNhomThanhPhan").val("");
        ArrayValueFromTaoLuong = [];
        $("#btnChuyenDuyetCuocHop").show();
        $("#btnPheDuyetLichHop").show();
        $("#trNoiDungKhongPheDuyet").hide();

        $("#GioBatDau").val(args.startTime.getHours().toString().length == 1 ? "0" + args.startTime.getHours().toString() : args.startTime.getHours());
        $("#PhutBatDau").val(args.startTime.getMinutes().toString().length == 1 ? "0" + args.startTime.getMinutes().toString() : args.startTime.getMinutes());

        $("#GioKetThuc").val(args.endTime.getHours().toString().length == 1 ? "0" + args.endTime.getHours().toString() : args.endTime.getHours());
        $("#PhutKetThuc").val(args.endTime.getMinutes().toString().length == 1 ? "0" + args.endTime.getMinutes().toString() : args.endTime.getMinutes());
        $("#NgayHop").ejDatePicker({
            value: args.startTime
        });
        $("#NgayHopKetThuc").ejDatePicker({
            value: args.startTime
        });
        $("#IsClickViewOrEditLichHop").val("0");
        //var obj = $("#Schedule1").data("ejSchedule");
        args.cancel = true;

        // reset data
        DataDanhSachTaiLieu = [];
        $("#LichHopID").val("0");
        $("#TenCuocHop").val("");
        $("#TinhTrangID").val("1");

        comboThoiGianNhacLichHop.clearSelection();
        comboDoiTuongNhacID.clearSelection();
        $("#KhongHienThi").attr("checked", false);
        $("#IsPrint").attr("checked", true);
        comboChuanBiID.clearSelection();
        comboThanhPhanID.clearSelection();
        $("#HienThiInThanhPhan").tagsinput('removeAll');
        $("#ThanhPhanThamDuKhac").val("");
        $("#ChuanBiKhac").val("");

        $("#GhiChu").val("");
        $("#GoogleMeet").val("");

        $("#TaiLieu_CoQuanChuTri").val("");
        $("#TenTaiLieu").val("");
        $("#fileSelect").val(null);
        comboDoiTuongXemID.clearSelection();
        comboPhongHopID.clearSelection();
        comboLoaiLichHopID.clearSelection();
        comboChuTriID.clearSelection();
        comboThuKyID.clearSelection();
        comboThuKyID.setSelection([UserLoginSchedule]);

        $('#IDTableDanhSachTaiLieu').bootstrapTable('refreshOptions', { data: "" });

        if (DataDanhSachTaiLieu.length == 0) {
            $('#TaiLieuHop_CoQuanChuTriTreeView').empty().html('<div class="alert alert-info" role="alert"> Chưa đính kèm tài liệu! </div>');
        }


        this._customAppointmentWindow = $("#customWindow");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "THÊM CUỘC HỌP",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindow").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    }

    function onAppointmentWindowOpen(args) {
        args.cancel = true;

        if ($("#IsClickShowFile").val() == "1") // Hiện tại đang click show file 
        {
            $("#IsClickShowFile").val("0")
            this._customAppointmentWindow = $("#customWindowShowFileDinhkem");
            this._customAppointmentWindow.ejDialog({
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Tài liệu họp",
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmenShowFileDinhkem").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            return;
        }

        if ($("#IsClickShowThemFile").val() == "1") // Hiện tại đang click show file 
        {
            $("#IsClickShowThemFile").val("0")
            this._customAppointmentWindow = $("#customWindowShowThemFileDinhkem");
            this._customAppointmentWindow.ejDialog({
                width: "90%",
                showOnInit: false,
                enableModal: true,
                title: "Thêm tài liệu họp",
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmenShowThemFileDinhkem").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            return;
        }


        if ($("#IsClickShowThemFile").val() == "0" && $("#IsClickShowThemFile").val() == "0") {
            this._customAppointmentWindow = $("#customPopup");
            this._customAppointmentWindow.ejDialog({
                width: "25%",
                showOnInit: false,
                enableModal: true,
                title: "Chức năng",
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmenPopup").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
        }




    }

    function onButtonClick(args) {
        var proxy = $("#Schedule1").ejSchedule("instance");
        if ($(args.target).hasClass("e-appButton")) {
            if ($(args.target).hasClass("e-appOk")) {
                if (proxy._customAppointmentWindow.find("#Subject").val().trim() == "") return false;
                var appObj = {}, formelement = proxy._customAppointmentWindow.find("#customAppointmentWindow").get(0);
                for (var index = 0; index < formelement.length; index++) {
                    var columnName = formelement[index].name, $element = $(formelement[index]);
                    if (!ej.isNullOrUndefined(columnName) && columnName != "" && ej.isNullOrUndefined(appObj[columnName])) {
                        var value = formelement[index].value;
                        if (columnName == "Id" && value != "")
                            value = parseInt(value);
                        if ($element.hasClass("e-datetimepicker"))
                            value = new Date(value);
                        if ($element.hasClass("e-checkbox"))
                            value = formelement[index].checked;
                        if (columnName.indexOf("_hidden") == -1)
                            appObj[columnName] = value;
                    }
                }
                if (appObj.Recurrence) {
                    appObj[proxy._appointmentSettings["recurrenceRule"]] = proxy._customRecRule;
                    var recurEdit = proxy._appointmentAddWindow.find(".e-recurrenceeditor").data("ejRecurrenceEditor");
                    recurEdit._recRule = proxy._customRecRule;
                }
                proxy.saveAppointment(appObj);
            }
            proxy._customAppointmentWindow.ejDialog("close");
        }
        else {
            proxy._customAppointmentWindow.find("#appointmentWindow,#recurrenceWindow").toggle();
            if ($(args.target).hasClass("e-recurOk")) {
                var recurObj = proxy._customAppointmentWindow.find("#customRecurrenceEditor").ejRecurrenceEditor("instance");
                var recSummary = recurObj.closeRecurPublic();
                proxy._customRecRule = recurObj._recRule;
            }
            else {
                proxy._customAppointmentWindow.find("#Recurrence").ejCheckBox({ checked: false });
            }
        }
    }

    function onCheckboxChange(args) {
        var proxy = $("#Schedule1").ejSchedule("instance");
        if (args.model.id == "AllDay") {
            if (args.isChecked) {
                var strDate = new Date(proxy._customAppointmentWindow.find("#StartTime").ejDateTimePicker("model.value").setHours(0, 0, 0));
                var endDate = new Date(proxy._customAppointmentWindow.find("#EndTime").ejDateTimePicker("model.value").setHours(23, 59, 59));
                proxy._customAppointmentWindow.find("#StartTime").ejDateTimePicker({ value: new Date(strDate), enabled: false });
                proxy._customAppointmentWindow.find("#EndTime").ejDateTimePicker({ value: new Date(endDate), enabled: false });
            }
            else {
                proxy._customAppointmentWindow.find("#StartTime").ejDateTimePicker({ enabled: true });
                proxy._customAppointmentWindow.find("#EndTime").ejDateTimePicker({ enabled: true });
            }
        }
        else {
            if (args.isChecked) {
                proxy._customAppointmentWindow.find("#appointmentWindow,#recurrenceWindow").toggle();
                var recurEdit = proxy._customAppointmentWindow.find("#customRecurrenceEditor").data("ejRecurrenceEditor");
                recurEdit.clearRecurrenceFields();
                var strDate = new Date(proxy._customAppointmentWindow.find('#StartTime').ejDateTimePicker("option", "value"));
                recurEdit.model.startDate = strDate;
                recurEdit.setDefaultValues();
            }
        }
    }

    function clearFields() {
        //var proxy = $("#Schedule1").ejSchedule("instance");
        //proxy._customAppointmentWindow.find("#Id").val("");
        //proxy._customAppointmentWindow.find("#Subject").val("");
        //proxy._customAppointmentWindow.find("#Description").val("");
        //proxy._customAppointmentWindow.find("#AllDay,#Recurrence").ejCheckBox({ checked: false });
        //proxy._customAppointmentWindow.find("#AllDay,#Recurrence").ejCheckBox("enable");
        //proxy._customAppointmentWindow.find("#StartTime,#EndTime").ejDateTimePicker({ enabled: true });
    }

</script>


<script type="text/javascript">

    LoadData();
    var comboChuanBiID, comboThanhPhanID, comboDoiTuongNhacID, comboThanhPhanDonViKhac,
        comboChuTriID, comboThuKyID, comboPhongHopID, comboDoiTuongXemID, SelectParentDistince,
        comboChonChuTriID, SelectParentDoiTuongNhac, DataThanhPhanChuanBi, comboLinhVucID, ArrayValueFromTaoLuong,
        comboLyDoVangID, comboThoiGianNhacLichHop, SelectParentChuTri, comboLoaiLichHopID, SelectParentLoaiLichHop,
        SelectParentThuKy, dataMapSchedule, SelectParentPhongHop, UserLoginSchedule, TinhTrangColor, DataThanhPhanDonViKhac
    var DataDanhSachTaiLieu = [];
    var SelectParentPhongHopInit = [];
    var TenCoQuanChuTri, TenNoiDungTaiLieu, TenCoQuanChuTriNoiDung;
    TinhTrangColor = [1, 2, 8, 3, 4, 6, 9];

    function ShowPopup(IDPopup, Width, Title) {
        this._customAppointmentWindow = $("#customWindow" + IDPopup + "");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: Width,
            showOnInit: false,
            enableModal: true,
            title: Title,
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindow" + IDPopup + "").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
    }

    function ClosePopup(IDPopup) {
        this._customAppointmentWindow = $("#" + IDPopup + "");
        this._customAppointmentWindow.ejDialog("close");
    }

    function LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, Search, ChuTriID) {
        var obj =
        {
            "obj": {
                "RoleUser": Role,
                "TuNgay": TuNgay,
                "DenNgay": DenNgay,
                "Thang": Thang,
                "Nam": Nam,
                "Loai": Loai,
                "Search": Search,
                "ChuTriID": ChuTriID,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadSchedule",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataSchedule = JSON.parse(obj);
                if (dataSchedule && dataSchedule.Table.length > 0) {
                    dataMapSchedule = dataSchedule.Table.map(item => ({
                        Id: item.Id,
                        Subject: item.Subject,
                        CountFile: item.CountFile,
                        StartTime: formatStringToDate(item.StartTime),
                        EndTime: formatStringToDate(item.EndTime),
                        Categorize: item.Categorize,
                        TenChuTri: item.TenChuTri,
                        TenThuKy: item.TenThuKy,
                        TenSoanLich: item.TenSoanLich,
                        ThanhPhan: item.ThanhPhan,
                        ThoiGianHop: item.ThoiGianHop,
                        TenPhongHop: item.TenPhongHop,
                        TenCuocHop: item.TenCuocHop,
                        PhongHopID: item.PhongHopID,
                        NguoiChuTriID: item.NguoiChuTriID,
                        IsDuplicate: item.IsDuplicate,
                        IsShowKiosk: item.IsShowKiosk

                    }));
                    $("#Schedule1").ejSchedule({
                        appointmentSettings: {
                            dataSource: dataMapSchedule.filter(x => TinhTrangColor.indexOf(+x.Categorize) !== -1)
                        }
                    });
                }
                else {
                    $("#Schedule1").ejSchedule({
                        appointmentSettings: {
                            dataSource: ""
                        }
                    });
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    //comboChonChuTriID.onChange(function () {
    //    LoadSchedule("QuanLy", "", "", "", "", "Search", $("#txtSearch").val(), "")
    //})

    function Load_DanhSach_Schedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, Search, ChuTriID, IDTable) {
        var obj =
        {
            "obj": {
                "RoleUser": Role,
                "TuNgay": TuNgay,
                "DenNgay": DenNgay,
                "Thang": Thang,
                "Nam": Nam,
                "Loai": Loai,
                "Search": Search,
                "ChuTriID": ChuTriID,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSach_Schedule",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (IDTable == "IDTableDanhSachSchedulePhatHanhXuatExcel") {
                    $("#" + IDTable + "").bootstrapTable('refreshOptions', { data: dataDanhSachSchedule.filter(x => x.TenTinhTrang == "Đã phát hành") });
                }
                else {
                    $("#" + IDTable + "").bootstrapTable('refreshOptions', { data: dataDanhSachSchedule });
                }

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadDataTable(LichHopID, TenTable, IDTable, PhatHanh) {

        var dataTable =
        {
            "obj": {
                "TenTable": TenTable
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
            data: JSON.stringify(dataTable),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataTable = JSON.parse(reponse.d);
                    $("#" + IDTable + "").bootstrapTable('refreshOptions', { data: dataTable });

                    //if (TenTable == "DM_CHUTRI") {
                    //    ComboChuTri.setSelection(dataTable.map(x => x.UserID));
                    //}
                    //if (TenTable == "DM_THUKY") {
                    //    ComboThuKy.setSelection(dataTable.map(x => x.UserID));
                    //}
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadChuongTrinhHopByLichHopID(LichHopID) {

        if (!LichHopID) {
            return;
        }
        var data =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val()
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadChuongTrinhHopByLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                if (data.length > 0) {
                    $("#summernote").summernote("code", "");
                    $("#TenChuongTrinh").val("");
                    $("#GioBatDauChuongTrinhHop").val("");
                    $("#GioKetThucChuongTrinhHop").val("");
                    $("#PhutBatDauChuongTrinhHop").val("");
                    $("#PhutKetThucChuongTrinhHop").val("");
                    $("#TuNgayChuongTrinhHop").val("");
                    $("#DenNgayChuongTrinhHop").val("");
                    $("#ChuongTrinhHopID").val(0);
                    $("#IDTableChuongTrinhHop").bootstrapTable('refreshOptions', { data: data });
                    $("#IDTableChuongTrinhHopDetail").bootstrapTable('refreshOptions', { data: data });
                }
                else {
                    $("#IDTableChuongTrinhHop").bootstrapTable('refreshOptions', { data: "" });
                    $("#IDTableChuongTrinhHopDetail").bootstrapTable('refreshOptions', { data: "" });
                }
                //if (data.length > 0) {
                //    $("#summernote").summernote("code", data[0].NoiDung);
                //    $("#TenChuongTrinh").val(data[0].TenChuongTrinh);
                //    $("#summernoteXemChuongTrinhHop").summernote("code", data[0].TenChuongTrinh);
                //    $("#ChuongTrinhHopID").val(data[0].ChuongTrinhHopID);
                //    $("#urlChuongTrinhHop").attr("style", "display:block");
                //}
                //else {
                //    $("#summernote").summernote("code", "");
                //    $("#TenChuongTrinh").val("");
                //    $("#summernoteXemChuongTrinhHop").summernote("code", "");
                //    $("#ChuongTrinhHopID").val(0);
                //    $("#urlChuongTrinhHop").attr("style", "display:none");
                //}

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }
    function LoadChuongTrinhHopByLichHopIDDetail(LichHopID, ChuongTrinhHopID) {
        if (!LichHopID) {
            return;
        }
        var data =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
                "ChuongTrinhHopID": ChuongTrinhHopID
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadChuongTrinhHopByLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                if (data.length > 0) {
                    $("#summernoteXemChuongTrinhHop").summernote("code", data[0].NoiDung);
                }
                else {
                    $("#summernoteXemChuongTrinhHop").summernote("code", "");

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }
    function formatter_ChucNangChuongTrinhHop(value, row, index) {

        return [
            '<div>',
            '&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp',
            '<button type="button" class=" Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"class=" Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');

    };
    function formatter_ChucNangChuongTrinhHopDetail(value, row, index) {

        return [
           '<div>',
            '&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp',
            '<button type="button" class=" Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');

    };
    window.operateEventsChuongTrinhHop = {
        'click .Edit': function (e, value, row, index) {
            $("#TenChuongTrinh").val(row.TenChuongTrinh);
            $("#summernote").summernote("code", row.NoiDung);
            $("#GioBatDauChuongTrinhHop").val(row.GioBatDau);
            $("#GioKetThucChuongTrinhHop").val(row.GioKetThuc);
            $("#PhutBatDauChuongTrinhHop").val(row.PhutBatDau);
            $("#PhutKetThucChuongTrinhHop").val(row.PhutKetThuc);
            $("#TuNgayChuongTrinhHop").val(row.TuNgayFormatter);
            $("#DenNgayChuongTrinhHop").val(row.DenNgayFormatter);
            $("#ChuongTrinhHopID").val(row.ChuongTrinhHopID);
            $("#urlChuongTrinhHop").attr("style", "display:block");
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    SaveChuongTrinhLinhHop(row.ChuongTrinhHopID);
                    LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        }
    }
    window.operateEventsChuongTrinhHopDetail = {
        'click .Edit': function (e, value, row, index) {
            this._customAppointmentWindow = $("#customWindowXemChuongTrinhHop");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Thông tin chương trình họp",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });

            LoadChuongTrinhHopByLichHopIDDetail(row.LichHopID, row.ChuongTrinhHopID);
            this._customAppointmentWindow.find("#customAppointmentWindowXemChuongTrinhHop").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
        },
    }
    function SaveChuongTrinhLinhHop(ChuongTrinhHopID) {
        var dataLChuongTrinhHop =
          {
              "obj": {
                  "IsDelete": true,
                  "ChuongTrinhHopID": ChuongTrinhHopID

              }
          };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/ChuongTrinhHop_InsUpDel",
            data: JSON.stringify(dataLChuongTrinhHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    alert_success("Lưu thành công");
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }
    function LoadBieuQuyetByLichHopID(LichHopID) {
        if (!LichHopID) {
            return;
        }
        var ID =
        {
            "LichHopID": LichHopID,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadBieuQuyetByLichHopID",
            data: JSON.stringify(ID),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                if (data.length > 0) {
                    $("#IDTableDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: data });
                    $("#IDTableXemDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: data });
                    $("#urlNoiDungBieuQuyet").attr("style", "display:block");
                }
                else {
                    $("#IDTableDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: "" });
                    $("#IDTableXemDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: "" });
                    $("#urlNoiDungBieuQuyet").attr("style", "display:none");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadThaoLuanByLichHopID(LichHopID, IDTable) {
        if (!LichHopID) {
            return;
        }
        var ID =
        {
            "LichHopID": LichHopID,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadThaoLuanByLichHopID",
            data: JSON.stringify(ID),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                $("#" + IDTable + "").bootstrapTable('refreshOptions', { data: data });


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadGiayMoiHopByLichHopID(LichHopID, IDTable) {

        if (!LichHopID) {
            return;
        }
        var ID =
        {
            "LichHopID": LichHopID,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadGiayMoiHopByLichHopID",
            data: JSON.stringify(ID),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                $("#" + IDTable + "").bootstrapTable('refreshOptions', { data: data });


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadPhatHanhLichSuTheoThoiGian(tuNgay, denNgay) {
        var obj =
        {
            "obj": {
                "ThoiGianTu": tuNgay,
                "ThoiGianDen": denNgay,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadPhatHanhLichSuTheoThoiGian",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var data = JSON.parse(reponse.d)
                if (!data) return;
                var DataPhatHanh = JSON.parse(data.DataPhatHanh);
                if (DataPhatHanh && DataPhatHanh.length > 0) {
                    var dataTable =
                    {
                        "obj": {
                            "TenTable": "GET_WEEKNUMBER",
                            "ThoiGianTu": TuNgay
                        }
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                        data: JSON.stringify(dataTable),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) {
                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                var data = JSON.parse(reponse.d);
                                if (data[0].WeekNumber != "") {
                                    if (parseInt(data[0].WeekNumber) < 10) {
                                        $("#lblTuanXemLichHopPhatHanh").text("0" + data[0].WeekNumber);
                                    }
                                    else {
                                        $("#lblTuanXemLichHopPhatHanh").text(data[0].WeekNumber);
                                    }
                                }
                            }
                            else {
                                alert_error("Xảy ra lỗi");
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                        },
                    });

                    $("#lblTuNgayXemLichHopPhatHanh").text(TuNgay.split("-").reverse().join("/"));
                    $("#lblDenNgayXemLichHopPhatHanh").text(DenNgay.split("-").reverse().join("/"));

                    $("#NoiDungPhatHanhXemLichHopPhatHanh").summernote("code", DataPhatHanh[0].NoiDung);
                    $("#NoiDungPhatHanh").summernote("code", DataPhatHanh[0].NoiDung);
                    $("#EmailNhanThongBao").tagsinput('removeAll');
                    $('#EmailNhanThongBao').tagsinput('add', DataPhatHanh[0].EmailNhanThongBao.split(';').join(','));

                    $("#EmailNhanThongBao").tagsinput('removeAll');
                    $('#EmailNhanThongBao').tagsinput('add', DataPhatHanh[0].EmailNhanThongBao.split(';').join(','));

                    $("#EmailDonViKhac").tagsinput('removeAll');
                    /*$('#EmailDonViKhac').tagsinput('add', DataPhatHanh[0].EmailDonViCaNhan.split(';').join(','));*/

                    $("#EmailNhanThongBaoXemLichHopPhatHanh").tagsinput('removeAll');
                    $('#EmailNhanThongBaoXemLichHopPhatHanh').tagsinput('add', DataPhatHanh[0].EmailNhanThongBao.split(';').join(','));

                    $("#EmailDonViKhacXemLichHopPhatHanh").tagsinput('removeAll');
                    $('#EmailDonViKhacXemLichHopPhatHanh').tagsinput('add', DataPhatHanh[0].EmailDonViCaNhan.split(';').join(','));
                    if (DataPhatHanh[0].FileID != "") {
                        var dataFile =
                            [{
                                "TenFile": DataPhatHanh[0].TenFile,
                                "FileID": DataPhatHanh[0].FileID,
                            }]
                        $("#IDTableFileXemLichHopPhatHanh").bootstrapTable('refreshOptions', { data: dataFile });
                    }
                }
                else {
                    $("#NoiDungPhatHanhXemLichHopPhatHanh").summernote("code", "");
                    $("#EmailNhanThongBaoXemLichHopPhatHanh").tagsinput('removeAll');
                    $("#EmailDonViKhacXemLichHopPhatHanh").tagsinput('removeAll');
                    $("#IDTableFileXemLichHopPhatHanh").bootstrapTable('refreshOptions', { data: "" });

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadNoiDungInAnTheoThoiGian(tuNgay, denNgay) {
        var obj =
        {
            "obj": {
                "ThoiGianTu": tuNgay,
                "ThoiGianDen": denNgay,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadNoiDungInAnTheoThoiGian",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var data = JSON.parse(reponse.d);
                if (data.length > 0) {
                    $("#CongTacTapTrung").summernote("code", data[0].CongTacTapTrung);
                } else {
                    $("#CongTacTapTrung").summernote("code", "");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadPhatHanhByThoiGian(tuNgay, denNgay, TinhTrangID, ListLichHopID, ListEmailThanhPhan) {
        var obj =
        {
            "obj": {
                "ThoiGianTu": tuNgay,
                "ThoiGianDen": denNgay,
                "TinhTrangID": TinhTrangID,
                "Role": "QuanLy"
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadPhatHanhByThoiGian",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                if (obj.length == 0) {
                    return;
                }

                var data = JSON.parse(obj);
                if (data) {
                    debugger
                    var DataPhatHanh = JSON.parse(data.DataPhatHanh);
                    var DataLichHopID = JSON.parse(data.DataLichHopID);
                    var DataThanhPhanThamDu = JSON.parse(data.DataThanhPhanThamDu);
                    $("#LichHopPhatHanhID").val("");
                    $("#LoaiLichHopPhatHanhTuan").val("0");
                    $("#PhatHanhID").val("0");
                    $("#divIDTableFileLichHopPhatHanh").hide();
                    $("#fileSelectPhatHanh").val(null);
                    $("#FileIDPhatHanh").val("");
                    $("#TenFilePhatHanh").val("");
                    $("#NoiDungPhatHanh").summernote("code", "")
                    $('#EmailNhanThongBao').tagsinput('removeAll');
                    $('#EmailNhanThongBao').tagsinput('removeAll');
                    var ChuoiLichHopID = "";

                    if ($("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections') == null
                        || $("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections').length == 0) { //Khong checkbox tu table
                        if (DataLichHopID && DataLichHopID.length > 0) {

                            for (var i = 0; i < DataLichHopID.length; i++) {
                                ChuoiLichHopID += DataLichHopID[i].LichHopID + ",";
                            }
                        }
                        $("#LoaiLichHopPhatHanhTuan").val("1");
                    }
                    else {
                        $("#LoaiLichHopPhatHanhTuan").val("0");
                    }
                    if (ListLichHopID != "" && ListLichHopID != undefined) {
                        ChuoiLichHopID += ListLichHopID;
                    }
                    $("#LichHopPhatHanhID").val(ChuoiLichHopID);

                    var EmailNhanThongBaoLichHop = "";
                    if (DataThanhPhanThamDu && DataThanhPhanThamDu.length > 0) {
                        for (var i = 0; i < DataThanhPhanThamDu.length; i++) {
                            if (DataThanhPhanThamDu[i].Email != null) {
                                EmailNhanThongBaoLichHop += DataThanhPhanThamDu[i].Email + ",";
                            }
                        }
                    }
                    if (ListEmailThanhPhan != "" && ListEmailThanhPhan != undefined) {
                        EmailNhanThongBaoLichHop += ListEmailThanhPhan;
                        var EmaillDistince = EmailNhanThongBaoLichHop.split(';').filter((v, i, a) => a.indexOf(v) === i);
                        EmailNhanThongBaoLichHop = EmaillDistince.join(';')
                    }

                    $('#EmailNhanThongBao').tagsinput('add', EmailNhanThongBaoLichHop);

                    if (DataPhatHanh && DataPhatHanh.length > 0) {
                        $("#PhatHanhID").val(DataPhatHanh[0].PhatHanhID);
                        if (DataPhatHanh[0].DaPhatHanh == false) {// chưa phát hành
                            if (DataPhatHanh[0].FileID != "") {
                                $("#divIDTableFileLichHopPhatHanh").show();
                                var dataFile =
                                    [{
                                        "TenFile": DataPhatHanh[0].TenFile,
                                        "FileID": DataPhatHanh[0].FileID,
                                    }]
                                $("#IDTableFileLichHopPhatHanh").bootstrapTable('refreshOptions', { data: dataFile });

                            }
                            $("#FileIDPhatHanh").val(DataPhatHanh[0].FileID);
                            $("#TenFilePhatHanh").val(DataPhatHanh[0].TenFile);
                            $("#NoiDungPhatHanh").val(DataPhatHanh[0].NoiDung);
                        }
                        else {
                            $("#btnPopupXemLichHopPhatHanh").show();
                            $("#btnPopupPhatHanhLichHop").html("<i class='fa fa-send'></i>&nbsp Phát hành lại lịch họp");
                            $("#btnLuuPhatHanh").hide();
                            $("#btnPhatHanhTrucTiep").show();

                        }
                    }


                    else {
                        $("#btnPopupXemLichHopPhatHanh").hide();
                        $("#btnPopupPhatHanhLichHop").html("<i class='fa fa-send'></i>&nbsp Phát hành lịch họp")
                        $("#btnPhatHanhTrucTiep").hide();

                    }
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function CheckPhatHanhByThoiGian(tuNgay, denNgay, TinhTrangID) {
        var obj =
        {
            "obj": {
                "ThoiGianTu": tuNgay,
                "ThoiGianDen": denNgay,
                "TinhTrangID": TinhTrangID
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_CheckPhatHanhByThoiGian",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                if (obj.length == 0) {
                    return;
                }
                var data = JSON.parse(obj);
                if (data) {
                    var DataPhatHanh = JSON.parse(data.DataPhatHanh);
                    if (DataPhatHanh && DataPhatHanh.length > 0) {
                        if (DataPhatHanh[0].DaPhatHanh == false) {// chưa phát hành
                        }
                        else {// Đã phát hành
                            $("#btnPopupXemLichHopPhatHanh").show();
                            $("#btnPopupPhatHanhLichHop").html("<i class='fa fa-send'></i>&nbsp Phát hành lại lịch họp");
                            $("#btnPhatHanhTrucTiep").show();
                            $("#btnPhatHanh").hide();
                        }
                    }
                    else {
                        $("#btnPopupXemLichHopPhatHanh").hide();
                        $("#btnPopupPhatHanhLichHop").html("<i class='fa fa-send'></i>&nbsp Phát hành lịch họp")
                        $("#btnPhatHanhTrucTiep").hide();
                        $("#btnPhatHanh").show();

                    }
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function GetEmailThanhPhanThamDuTheoThoiGian(tuNgay, denNgay, TinhTrangID, ChuoiLichHopID) {

        var obj =
        {
            "obj": {
                "Role": "QuanLy",
                "ThoiGianTu": tuNgay,
                "ThoiGianDen": denNgay,
                "ChuoiLichHopID": ChuoiLichHopID == undefined ? "" : ChuoiLichHopID,
                "TinhTrangID": TinhTrangID
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GetEmailThanhPhanThamDuTheoThoiGian",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                var EmailNhanThongBaoLichHop = "";
                for (var i = 0; i < data.length; i++) {
                    if (data[i].Email != null) {
                        EmailNhanThongBaoLichHop += data[i].Email + ",";
                    }
                }
                $("#ListEmailThanhPhan").val(EmailNhanThongBaoLichHop);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                return "";
            },
        });

    }

    function GetPhongBanSuDung() {
        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert_warning("Vui lòng chọn thời gian cuộc họp");
            return
        }
        var ThoiGianTu = GioBatDau + ":" + PhutBatDau + ":00";
        var ThoiGianDen = GioKetThuc + ":" + PhutKetThuc + ":00";

        var NgayHop = $("#NgayHop").val();

        if (!NgayHop) {
            alert_warning("Vui lòng chọn ngày họp");
            return
        }
        var NgayHopTu = NgayHop + " " + ThoiGianTu;
        var NgayHopDen = NgayHop + " " + ThoiGianDen;
        if (Date.parse(strToDate(NgayHopTu)) > Date.parse(strToDate(NgayHopDen))) {
            alert_warning("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }
        var NgayHopFormat = NgayHop.split("/").reverse().join("-");
        var dataGetPhongBan =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "NgayHop": NgayHopFormat,
                "GioBatDau": ThoiGianTu,
                "GioKetThuc": ThoiGianDen
            },

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GetPhongBanSuDung",
            data: JSON.stringify(dataGetPhongBan),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var ChuoiPhongHopID = JSON.parse(reponse.d);
                    comboPhongHopID.clearSelection();
                    if (ChuoiPhongHopID.length > 0 && ChuoiPhongHopID[0].ChuoiPhongHopID != "") {
                        var SelectParentPhongHopChuaSuaDung = [];
                        for (var i = 0; i < SelectParentPhongHop.length; i++) {
                            SelectParentPhongHopChuaSuaDung.push({ id: SelectParentPhongHop[i].id, title: SelectParentPhongHop[i].title, subs: [] })
                        }
                        var splitPhongHopID = ChuoiPhongHopID[0].ChuoiPhongHopID.slice(0, -1).split(',');
                        for (var k = 0; k < splitPhongHopID.length; k++) {
                            SelectParentPhongHopChuaSuaDung.splice(SelectParentPhongHopChuaSuaDung.findIndex(function (i) {
                                return i.id === splitPhongHopID[k];
                            }), 1);
                        }

                        comboPhongHopID.setSource(SelectParentPhongHopChuaSuaDung);
                    }


                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }

    function CheckNguoiChuTriDangDieuHanhCuocHop(paramArrayThanhPhan) {
        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert_warning("Vui lòng chọn thời gian cuộc họp");
            return
        }
        var ThoiGianTu = GioBatDau + ":" + PhutBatDau + ":00";
        var ThoiGianDen = GioKetThuc + ":" + PhutKetThuc + ":00";

        var NgayHop = $("#NgayHop").val();

        if (!NgayHop) {
            alert_warning("Vui lòng chọn ngày họp");
            return
        }
        var NgayHopTu = NgayHop + " " + ThoiGianTu;
        var NgayHopDen = NgayHop + " " + ThoiGianDen;
        if (Date.parse(strToDate(NgayHopTu)) > Date.parse(strToDate(NgayHopDen))) {
            alert_warning("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }
        var NgayHopFormat = NgayHop.split("/").reverse().join("-");
        var ChuTriID = comboChuTriID.getSelectedIds();
        if (!ChuTriID) {
            return;
        }

    }

    function CheckTrungCuocHop() {
        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert_warning("Vui lòng chọn thời gian cuộc họp");
            return
        }
        var ThoiGianTu = GioBatDau + ":" + PhutBatDau + ":00";
        var ThoiGianDen = GioKetThuc + ":" + PhutKetThuc + ":00";

        var NgayHop = $("#NgayHop").val();

        if (!NgayHop) {
            alert_warning("Vui lòng chọn ngày họp");
            return
        }

        var NgayHopTu = NgayHop + " " + ThoiGianTu;
        var NgayHopDen = NgayHop + " " + ThoiGianDen;

        if (Date.parse(strToDate(NgayHopTu)) > Date.parse(strToDate(NgayHopDen))) {
            alert_warning("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }
        var NgayHopFormat = NgayHop.split("/").reverse().join("-");
        var ChuTriID = comboChuTriID.getSelectedIds();
        if (!ChuTriID) {
            return;
        }
        if (ChuTriID.length > 1) {
            return;
        }

        var PhongHopID = comboPhongHopID.getSelectedIds();
        var dataCheckTrungLich =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "NgayHop": NgayHopFormat,
                "GioBatDau": ThoiGianTu,
                "GioKetThuc": ThoiGianDen,
                "PhongHopID": PhongHopID != null ? PhongHopID.toString() : "0",
                "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "0",
            },

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CheckTrungLichHopByUserID",
            data: JSON.stringify(dataCheckTrungLich),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var obj = JSON.parse(reponse.d);
                    if (obj[0].IsExist == 2) {

                        this._customAppointmentWindow = $("#customWindowCanhBaoTrungLichHop");
                        this._customAppointmentWindow.ejDialog({
                            //width: (this._mediaQuery) ? "100%" : 600,
                            width: "50%",
                            showOnInit: false,
                            enableModal: true,
                            title: "Thông tin xác nhận",
                            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                            enableResize: false,
                            allowKeyboardNavigation: false,
                            cssClass: "e-scheduledialog",
                            close: "clearFields"
                        });

                        this._customAppointmentWindow.find("#customAppointmentWindowCanhBaoTrungLichHop").css({ display: "block" });
                        this._customAppointmentWindow.ejDialog("open");
                    }
                    else if (obj[0].IsExist == 1) {
                        alert_warning("Lịch họp này đã trùng với phòng họp hiện tại. Xin vui lòng chọn phòng họp khác")
                        comboPhongHopID.clearSelection();
                    }
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }

    function CheckTrungCuocHopTheoPhong() {

        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert_warning("Vui lòng chọn thời gian cuộc họp");
            return
        }
        var ThoiGianTu = GioBatDau + ":" + PhutBatDau + ":00";
        var ThoiGianDen = GioKetThuc + ":" + PhutKetThuc + ":00";

        var NgayHop = $("#NgayHop").val();

        if (!NgayHop) {
            alert_info("Vui lòng chọn ngày họp");
            return
        }

        var NgayHopTu = NgayHop + " " + ThoiGianTu;
        var NgayHopDen = NgayHop + " " + ThoiGianDen;

        if (Date.parse(strToDate(NgayHopTu)) > Date.parse(strToDate(NgayHopDen))) {
            alert_warning("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }
        var NgayHopFormat = NgayHop.split("/").reverse().join("-");
        var ChuTriID = comboChuTriID.getSelectedIds();
        if (!ChuTriID) {
            return;
        }
        if (ChuTriID.length >= 2) {
            ChuTriID = ChuTriID[0];
        }

        var PhongHopID = comboPhongHopID.getSelectedIds();
        var dataCheckTrungLich =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "NgayHop": NgayHopFormat,
                "GioBatDau": ThoiGianTu,
                "GioKetThuc": ThoiGianDen,
                "PhongHopID": PhongHopID != null ? PhongHopID.toString() : "0",
                "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "0",
            },

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CheckTrungLichHopByUserID",
            data: JSON.stringify(dataCheckTrungLich),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var obj = JSON.parse(reponse.d);
                    if (obj[0].IsExist == 1) {
                        alert_warning("Lịch họp này đã trùng với phòng họp hiện tại. Xin vui lòng chọn phòng họp khác");
                        comboPhongHopID.clearSelection();
                    }
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }

    function LoadData() {

        $("#NgayHop").ejDatePicker({
            value: new Date(),
            change: function (args) {
                if ($('#IsClickViewOrEditLichHop').val() == "1") {
                    return;
                }
                GetPhongBanSuDung();
            }
        });

        $('.select').on('change', function () {
            if ($('#IsClickViewOrEditLichHop').val() == "1") {
                return;
            }
            GetPhongBanSuDung();
        });

        $.ajax({
            type: "GET",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadPageLoad",
            data: "",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);

                DataThanhPhanChuanBi = JSON.parse(data.ListThanhPhanChuanBi);
                var DataLoaiLichHop = JSON.parse(data.ListLoaiLichHop);
                var DataDoiTuongNhac = JSON.parse(data.ListDoiTuongNhac);
                var DataDoiTuongXem = JSON.parse(data.ListDoiTuong);
                var DataUser = JSON.parse(data.ListUsers);
                var DataPhongHop = JSON.parse(data.ListPhongHop);
                var DataLinhVuc = JSON.parse(data.ListLinhVuc);
                //var DataDanhSachTaiLieu = JSON.parse(data.ListDanhSachTaiLieu);
                var DataThoiGianNhacLichHop = JSON.parse(data.ListLichNhac);
                var DataChuTri = JSON.parse(data.ListChuTri);
                var DataThuKy = JSON.parse(data.ListThuKy);

                UserLoginSchedule = JSON.parse(data.UserLoginSchedule);

                if (DataLoaiLichHop.length > 0) {
                    SelectParentLoaiLichHop = DataLoaiLichHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataChuTri.length > 0) {
                    SelectParentChuTri = DataChuTri.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataThuKy.length > 0) {
                    SelectParentThuKy = DataThuKy.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataPhongHop.length > 0) {
                    SelectParentPhongHop = DataPhongHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                    $("#IDTableDanhSachPhongHop").bootstrapTable('refreshOptions', { data: DataPhongHop });
                }

                if (DataThoiGianNhacLichHop.length > 0) {
                    var SelectParentThoiGianNhacLichHop = DataThoiGianNhacLichHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataUser.Table.length > 0) {
                    var SelectParentUsers = DataUser.Table.map(Parent => ({ id: Parent.User_PortalID, title: Parent.HoTen, subs: [] }));
                }


                if (DataDoiTuongXem.length > 0) {

                    SelectParentDoiTuongXem = DataDoiTuongXem.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                    SelectParentDoiTuongXem.push({ id: '0', title: "Tất cả", subs: [] });
                }

                if (DataDoiTuongNhac.length > 0) {
                    SelectParentDoiTuongNhac = DataDoiTuongNhac.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataLinhVuc.length > 0) {
                    var SelectParentLinhVuc = DataLinhVuc.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                var SelectParentDistinceChuanBi
                if (DataThanhPhanChuanBi.length > 0) {

                    SelectParentDistinceChuanBi = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [], isSelectable: false, }));

                    SelectParentThanhPhanChuanBi = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [], isSelectable: true, }));
                    SelectParentDistince = [...new Map(SelectParentThanhPhanChuanBi.map(item =>
                        [item['id'], item])).values()];
                }

                if (SelectParentDistince.length > 0) {

                    for (var i = 0; i < SelectParentDistince.length; i++) {
                        var dataChild = DataThanhPhanChuanBi.filter(x => x.Ma == SelectParentDistince[i].id).map(Parent => ({ id: Parent.UserID, title: Parent.FullName, isSelectable: true }));
                        for (var j = 0; j < dataChild.length; j++) {
                            SelectParentDistince[i].subs.push(dataChild[j]);
                            SelectParentDistinceChuanBi[i].subs.push(dataChild[j]);

                        }
                    }
                }


                comboChuanBiID = $('#ChuanBiID').comboTree({
                    source: SelectParentDistince,
                    isMultiple: true,
                    cascadeSelect: true,
                });

                comboThanhPhanID = $('#ThanhPhanID').comboTree({
                    source: SelectParentDistince,
                    isMultiple: true,
                    cascadeSelect: true
                });

                comboThanhPhanTaoLuong = $('#ThanhPhanTaoLuong').comboTree({
                    source: SelectParentDistince,
                    isMultiple: true,
                    cascadeSelect: false
                });

                comboDoiTuongNhacID = $('#DoiTuongNhacID').comboTree({
                    source: SelectParentDoiTuongNhac,
                    isMultiple: true,
                    cascadeSelect: false,
                });

                comboLoaiLichHopID = $('#LoaiLichHopID').comboTree({
                    source: SelectParentLoaiLichHop
                });


                comboThuKyID = $('#ThuKyID').comboTree({
                    source: SelectParentThuKy,
                    isMultiple: true,
                    cascadeSelect: false
                });

                comboChuTriID = $('#ChuTriID').comboTree({
                    source: SelectParentChuTri,
                    isMultiple: true,
                    cascadeSelect: false
                });

                //comboThuKyID.onChange(function () {

                //    var thuLyListSelect = comboThuKyID.getSelectedIds();
                //    let thanhPhanHopList = comboThanhPhanID.getSelectedIds();
                //    if (thanhPhanHopList != null && thuLyListSelect != null) {
                //        for (var i = 0; i < thanhPhanHopList.length; i++) {
                //            let dataIndex = thanhPhanHopList[i];
                //            let trung = thuLyListSelect.filter(x=>x == dataIndex);

                //            let index = thanhPhanHopList.indexOf(parseInt(trung[0]));
                //            if (index > -1) {
                //                thanhPhanHopList.splice(index, 1)
                //            }
                //        }
                //        comboThanhPhanID.clearSelection();
                //        comboThanhPhanID.setSelection(['2']);
                //        ReloadThanhPhanHop();
                //    }


                //});
                comboChuTriID.onChange(function () {

                    var selectedName = comboChuTriID.getSelectedNames();
                    if (!selectedName) {
                        $("#HienThiInChuTri").tagsinput('removeAll');
                        return;
                    }
                    $("#HienThiInChuTri").tagsinput('removeAll');
                    var TenDongChi = "";
                    for (var i = 0; i < comboChuTriID.getSelectedNames().length; i++) {
                        var item = DataThanhPhanChuanBi.filter(x => x.FullName == comboChuTriID.getSelectedNames()[i]);
                        if (item.length > 0) {
                            if (item[0].TenGoiTrongCoQuan != null) {
                                TenDongChi += item[0].TenGoiTrongCoQuan + ","
                            }
                            else {
                                TenDongChi += item[0].FullName + ","
                            }
                        }
                        else {
                            TenDongChi += comboChuTriID.getSelectedNames()[i] + ","
                        }

                    }
                    $('#HienThiInChuTri').tagsinput('add', TenDongChi);
                    if ($('#IsClickViewOrEditLichHop').val() == "1") {
                        return;
                    }
                    if (comboChuTriID.getSelectedIds() != null) {
                        CheckTrungCuocHop();
                    }

                });

                comboThanhPhanID.onChange(function () {
                    $("#HienThiInThanhPhan").tagsinput('removeAll');
                    var ThanhPhanID = comboThanhPhanID.getSelectedIds();
                    if (!ThanhPhanID) {
                        return;
                    }
                    var selectedName = comboThanhPhanID.getSelectedNames();
                    if (!selectedName) {
                        return;
                    }

                    var TenDongChi = "";
                    for (var i = 0; i < comboThanhPhanID.getSelectedNames().length; i++) {
                        var item = DataThanhPhanChuanBi.filter(x => x.FullName == comboThanhPhanID.getSelectedNames()[i]);
                        if (item.length > 0) {
                            if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat != "" && item[0].TenVietTat != null)) {
                                TenDongChi += item[0].TenGoiTrongCoQuan + " - " + item[0].TenVietTat + ","
                            }
                            if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat == "" || item[0].TenVietTat == null)) {
                                TenDongChi += item[0].TenGoiTrongCoQuan + ","
                            }
                            if (item[0].TenGoiTrongCoQuan == null || item[0].TenGoiTrongCoQuan == "") {
                                TenDongChi += item[0].FullName + ","
                            }
                        }
                        else {
                            item = DataThanhPhanChuanBi.filter(x => x.Ten == comboThanhPhanID.getSelectedNames()[i]);
                            if (item.length > 0) {
                                TenDongChi += item[0].Ten + ","
                            }
                            else {
                                TenDongChi += comboThanhPhanID.getSelectedNames()[i] + ","
                            }

                        }

                    }
                    if ($("#TenNhomThanhPhan").val() != "") {
                        $('#HienThiInThanhPhan').tagsinput('add', $("#TenNhomThanhPhan").val() + "," + TenDongChi);
                    }
                    else {
                        $('#HienThiInThanhPhan').tagsinput('add', TenDongChi);
                    }

                    if (ArrayValueFromTaoLuong != undefined) {
                        for (var i = 0; i < ArrayValueFromTaoLuong.length; i++) {
                            var itemRemove = DataThanhPhanChuanBi.filter(x => x.UserID == ArrayValueFromTaoLuong[i]);
                            if (itemRemove.length > 0) {
                                if (itemRemove[0].TenGoiTrongCoQuan != null && itemRemove[0].TenVietTat != "") {
                                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan + " - " + itemRemove[0].TenVietTat);
                                }
                                if (itemRemove[0].itemRemove != null && itemRemove[0].TenVietTat == "") {
                                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan);
                                }
                                if (itemRemove[0].TenGoiTrongCoQuan == null || itemRemove[0].TenGoiTrongCoQuan == "") {
                                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].FullName);
                                }
                            }

                        }
                    }
                    if ($('#IsClickViewOrEditLichHop').val() == "1") {
                        return;
                    }
                    //var Array = TextChange.split(',');
                    //$("#HienThiInThanhPhan").val(Array.unique().join(","));
                });

                var dataTable =
                {
                    "obj": {
                        "TenTable": "DM_DONVI"
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                    data: JSON.stringify(dataTable),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            DataThanhPhanDonViKhac = JSON.parse(reponse.d);
                            comboThanhPhanDonViKhac = $('#ThanhPhanDonViKhac').comboTree({
                                source: DataThanhPhanDonViKhac.map(Parent => ({ id: Parent.DonViID, title: Parent.TenDonVi, subs: [] })),
                                isMultiple: true,
                                cascadeSelect: false
                            });
                            comboThanhPhanDonViKhac.setSelection(DataThanhPhanDonViKhac.map(x => x.DonViID));
                            //setTagInputEmailDonViKhac(); //Load mac dinh ds Email đơn vị / cá nhân phat hanh
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });



                var SelectParentUsersChuTri = SelectParentChuTri;
                SelectParentUsersChuTri.push({ id: "0", title: "Tất cả", subs: [] });
                comboChonChuTriID = $('#ChonChuTriID').comboTree({
                    source: SelectParentUsersChuTri,
                    isMultiple: false,
                    cascadeSelect: true,
                    collapse: false,
                    selected: ['0']
                });


                comboPhongHopID = $('#PhongHopID').comboTree({
                    source: SelectParentPhongHop,
                    isMultiple: false
                });

                SelectParentPhongHopInit = SelectParentPhongHop; //Load phong hop mac dinh full phong su dung khi edit

                comboPhongHopID.onChange(function () {
                    if (comboPhongHopID.getSelectedNames() == "Phòng họp khác") {
                        $("#trTenPhongHopKhac").show();
                    }
                    else {
                        $("#trTenPhongHopKhac").hide();
                    }
                    if ($('#IsClickViewOrEditLichHop').val() == "1") {
                        return;
                    }
                    if (comboPhongHopID.getSelectedIds() != null) {
                        CheckTrungCuocHopTheoPhong();
                    }

                });
                comboDoiTuongXemID = $('#DoiTuongXemID').comboTree({
                    source: SelectParentDoiTuongXem,
                    isMultiple: true,
                    cascadeSelect: false
                });

                comboLinhVucID = $('#LinhVucID').comboTree({
                    source: SelectParentLinhVuc,
                    isMultiple: false
                });
                comboThoiGianNhacLichHop = $('#ThoiGianNhacLichHop').comboTree({
                    source: SelectParentThoiGianNhacLichHop,
                    isMultiple: false
                });

                comboChonChuTriID.onChange(function () {
                    LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                });

                //comboDataChuanBi.setSource(dataChild);
                //comboDataThanhPhan.setSource(dataChild);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });


    }


    String.prototype.replaceAll = function (search, replacement) {
        var target = this;
        return target.replace(new RegExp(search, 'g'), replacement);
    };

    function replaceAll(str, map) {
        if (str == "" || str == null) {
            return "";
        }
        for (key in map) {
            str = str.replaceAll(key, map[key]);
        }
        return str;
    }

    function removeItem(array, item) {
        for (var i in array) {
            if (array[i] == item) {
                array.splice(i, 1);
                break;
            }
        }
    }
    Array.prototype.unique = function () {
        var arr = this;
        return $.grep(arr, function (v, i) {
            return $.inArray(v, arr) === i;
        });
    }

    function strToDate(dtStr) {

        let dateParts = dtStr.split("/");
        let timeParts = dateParts[2].split(" ")[1].split(":");
        dateParts[2] = dateParts[2].split(" ")[0];
        // month is 0-based, that's why we need dataParts[1] - 1
        return dateObject = new Date(+dateParts[2], dateParts[1] - 1, +dateParts[0], timeParts[0], timeParts[1], timeParts[2]);

    }

    function formatStringToDate(strDate) {
        var array = strDate.split(",");
        return new Date(array[0], array[1], array[2], array[3], array[4])
    }

    function ShowThemFile(LichHopID) {
        $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('removeAll');
        var obj =
        {
            "LichHopID": LichHopID,
            "DoiTuongXemID": 1
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSachTaiLieuCuocHopByLichHopID",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataTaiLieuHop = JSON.parse(reponse.d);
                    $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: dataTaiLieuHop });
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        $("#IsClickShowThemFile").val("1") // Activeclick ShowFile
    }

    function ShowFile(LichHopID, categorize) {
        if (categorize == 3) {
            $("#btnGuiEmailTaiLieu").show();
            $("#btnKhongCongKhai").show();
            $("#btnCongKhai").show();
        }
        else {
            $("#btnGuiEmailTaiLieu").hide();
            $("#btnKhongCongKhai").hide();
            $("#btnCongKhai").hide();
        }
        var obj =
        {
            "LichHopID": LichHopID,
            "DoiTuongXemID": 1
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSachTaiLieuCuocHopByLichHopID",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataTaiLieuHop = JSON.parse(reponse.d);
                    $("#IDTableDanhSachTaiLieuHop").bootstrapTable('refreshOptions', { data: dataTaiLieuHop });
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        $("#IsClickShowFile").val("1") // Activeclick ShowFile
    }

    function ShowFileTaoLich(LichHopID) {
        var obj =
        {
            "LichHopID": LichHopID,
            "DoiTuongXemID": 1
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSachTaiLieuCuocHopByLichHopID",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataTaiLieuHop = JSON.parse(reponse.d);
                    DataDanhSachTaiLieu = dataTaiLieuHop;
                    $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: dataTaiLieuHop });
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }

    $("#btnThemShowThemFileDinhkem").click(function () {
        var notify = "Vui lòng không được để trống";
        var TenTaiLieu = $("#TenTaiLieuShowThemFileDinhkem").val();
        var TaiLieu_CoQuanChuTriShowThemFileDinhkem = $("#TaiLieu_CoQuanChuTriShowThemFileDinhkem").val();
        var TaiLieuCuocHopID = $("#TaiLieuCuocHopIDShowThemFileDinhkem").val();
        if (!TenTaiLieu || !TaiLieu_CoQuanChuTriShowThemFileDinhkem) {
            alert_warning(notify);
            return;
        }
        var VanBanLienQuan = $("#TagVanBanLienQuanShowThemFileDinhKem").val();

        var DuocCongKhai = $('#DuocCongKhaiShowThemFileDinhkem').is(":checked");
        var fileUpload = $("#fileSelectShowThemFileDinhkem").get(0);
        var FileID = $("#FileIDShowThemFileDinhkem").val();
        var TenFile = $("#TenFileShowThemFileDinhkem").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDShowThemFileDinhkem").val() == "") {
            alert_warning("Vui lòng đính kèm file");
            return;
        }
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới


        }

        if (files.length > 0 && (FileID != "" || FileID == ""))// đính kèm file mới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                contentType: false,
                processData: false,
                async: false,
                enctype: 'multipart/form-data',
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        //if (obj.length >= 2) { // không có file đính kèm và đã tồn tại file trên lưới
                        //    for (let i = 0; i < obj.length; i++) {
                        //        var item =
                        //            {
                        //                "TenFile": obj[i].TenFile,
                        //                "FileID": obj[i].FileID,
                        //            };
                        //        ThemShowThemFileDinhkemArr.push(item);
                        //    }
                        //}
                        //else {
                        //    var item =
                        //            {

                        //                "TenFile": obj.TenFile,
                        //                "FileID": obj.FileID,

                        //            };
                        //    ThemShowThemFileDinhkemArr.push(item);
                        //}
                        TenFile = obj.TenFile;
                        FileID = obj.FileID;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    return;
                },
            });
        }
        var data =
        {
            "obj": {
                "TaiLieuCuocHopID": TaiLieuCuocHopID,
                "TenTaiLieu": TenTaiLieu,
                "DuocCongKhai": DuocCongKhai,
                "TenFile": TenFile,
                "FileID": FileID,
                "IsDelete": false,
                "VanBanLienQuan": VanBanLienQuan,
                "LichHopID": $("#LichHopID").val(),
                "TaiLieu_CoQuanChuTri": TaiLieu_CoQuanChuTriShowThemFileDinhkem,
            },
            "LichHopID": $("#LichHopID").val(),
            "DoiTuongXemID": "1"
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                alert_success("Thêm thành công");
                $("#TaiLieuCuocHopIDShowThemFileDinhkem").val("0");
                $("#TenTaiLieuShowThemFileDinhkem").val("");
                $("#fileSelectShowThemFileDinhkem").val(null);
                $("#DuocCongKhai").prop('checked', true);
                $("#TenFileShowThemFileDinhkem").val("");
                $("#FileIDShowThemFileDinhkem").val("");
                $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('removeAll');
                $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
                //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    });
    $("#btnPopupPhatHanhLichHop").click(function () {
        this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "Phát hành lịch họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowPhatHanhLichHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        var dataTable =
        {
            "obj": {
                "TenTable": "GET_WEEKNUMBER",
                "ThoiGianTu": TuNgay
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
            data: JSON.stringify(dataTable),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var data = JSON.parse(reponse.d);
                    if (data[0].WeekNumber != "") {
                        if (parseInt(data[0].WeekNumber) < 10) {
                            $("#lblTuan").text("0" + data[0].WeekNumber);
                        }
                        else {
                            $("#lblTuan").text(data[0].WeekNumber);
                        }
                    }
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

        $("#lblTuNgay").text(TuNgay.split("-").reverse().join("/"));
        $("#lblDenNgay").text(DenNgay.split("-").reverse().join("/"));
        LoadPhatHanhByThoiGian(TuNgay, DenNgay, "3,8"); //đã duyệt, đã phát hành
        $("#IsClickPhatHanhMutil").val("0");
        $("#ListEmailThanhPhan").val("");
        LoadPhatHanhLichSuTheoThoiGian(TuNgay, DenNgay);

    });


    $("#btnShowVanBanLienQuan").click(function () {
        $("#IsTaoLichHop").val("1");
        this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách văn bản liên quan",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowWindowVanBanLienQuan").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });

    $("#btnShowVanBanLienQuanShowThemFileDinhkem").click(function () {
        $("#IsTaoLichHop").val("0");
        this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách văn bản liên quan",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowWindowVanBanLienQuan").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });



    $("#btnTimKiemVanBanDi").click(function () {
        LoadVanBanLienQuan("VanBanDi");
    });

    $("#btnTimKiemVanBanDen").click(function () {
        LoadVanBanLienQuan("VanBanDen");
    });

    $("#btnChonVanBanDi").click(function () {
        var data = $("#IDTableDanhSachVanBanLienQuanDi").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var TrichYeu = "";
            for (var i = 0; i < data.length; i++) {
                TrichYeu += data[i].trichyeu + ",";
            }

            if ($("#IsTaoLichHop").val() == "1") {
                $("#TagVanBanLienQuan").tagsinput('removeAll');
                $('#TagVanBanLienQuan').tagsinput('add', TrichYeu);
            }
            else {
                $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('removeAll');
                $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('add', TrichYeu);
            }

            this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
            this._customAppointmentWindow.ejDialog("close");
        }

        else {
            alert_info("Bạn chưa chọn dữ liệu")
            return;
        }
    });

    $("#btnChonVanBanDen").click(function () {
        var data = $("#IDTableDanhSachVanBanLienQuanDen").bootstrapTable('getAllSelections')

        if (data.length > 0) {
            var TrichYeu = "";
            for (var i = 0; i < data.length; i++) {
                TrichYeu += data[i].trichyeu + ",";
            }
            if ($("#IsTaoLichHop").val() == "1") {
                $('#TagVanBanLienQuan').tagsinput('removeAll');
                $('#TagVanBanLienQuan').tagsinput('add', TrichYeu);
            }
            else {
                $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('removeAll');
                $("#TagVanBanLienQuanShowThemFileDinhKem").tagsinput('add', TrichYeu);
            }
            this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
            this._customAppointmentWindow.ejDialog("close");
        }

        else {
            alert_info("Bạn chưa chọn dữ liệu")
            return;
        }
    });


    function LoadVanBanLienQuan(LoaiVanBan) {
        var search = "";
        if (LoaiVanBan == "VanBanDen") {
            search = $("#TimKiemVanBanDen").val();
        }
        if (LoaiVanBan == "VanBanDi") {
            search = $("#TimKiemVanBanDi").val();
        }

        var obj = {
            "keyword": search,
            "start": 1,
            "end": 10,
            "LoaiVanBan": LoaiVanBan
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CallApiVanBan",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                if (data != null) {
                    var objResult = JSON.parse(data.resultObject);
                    if (objResult.data.length > 0)
                        if (LoaiVanBan == "VanBanDen") {
                            $("#IDTableDanhSachVanBanLienQuanDen").bootstrapTable('refreshOptions', { data: objResult.data });
                        }
                    if (LoaiVanBan == "VanBanDi") {
                        $("#IDTableDanhSachVanBanLienQuanDi").bootstrapTable('refreshOptions', { data: objResult.data });
                    }
                }

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }



    $("#btnTaoLuong").click(function () {
        this._customAppointmentWindow = $("#customWindowTaoLuong");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin tạo luồng",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowTaoLuong").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        $("#TenNhom").val("");
        comboThanhPhanTaoLuong.clearSelection();
        $("#NhomID").val("0");
        LoadDataTable(null, "DM_NHOM", "IDTableNhom");
    });

    $("#btnChonTaoLuong").click(function () {
        var ArrayValue = [];
        var data = $("#IDTableNhom").bootstrapTable('getAllSelections')
        if (data.length == 0 && $("#TenNhomThanhPhan").val() == "") {
            alert_warning("Bạn chưa chọn dữ liệu")
            return;

        }
        if (data.length == 0 && $("#TenNhomThanhPhan").val() != "") {
            for (var i = 0; i < $("#TenNhomThanhPhan").val().slice(0, -1).split(',').length; i++) {
                var item = $("#IDTableNhom").bootstrapTable('getData').filter(x => x.TenNhom == $("#TenNhomThanhPhan").val().slice(0, -1).split(',')[i]);
                var dataTable =
                {
                    "obj": {
                        "NhomID": item[0].NhomID,
                        "TenTable": "DM_NHOM_THANHPHAN_VIEW"
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                    data: JSON.stringify(dataTable),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var DataThanhPhanID = comboThanhPhanID.getSelectedIds();
                            if (DataThanhPhanID) {
                                ArrayValue.push(DataThanhPhanID);
                            }
                            var data = JSON.parse(reponse.d);
                            for (var i = 0; i < data.length; i++) {
                                removeItem(ArrayValue[0], parseInt(data[i].UserID));
                                ArrayValueFromTaoLuong.push(data[i].UserID);
                            }
                            comboThanhPhanID.clearSelection();
                            comboThanhPhanID.setSelectionParent(ArrayValue.filter((v, i, a) => a.indexOf(v) === i));
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            }
            if (ArrayValueFromTaoLuong != undefined) {
                for (var i = 0; i < ArrayValueFromTaoLuong.length; i++) {
                    var itemRemove = DataThanhPhanChuanBi.filter(x => x.UserID == ArrayValueFromTaoLuong[i]);
                    if (itemRemove.length > 0) {
                        if (itemRemove[0].TenGoiTrongCoQuan != null && itemRemove[0].TenVietTat != "") {
                            $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan + " - " + itemRemove[0].TenVietTat);
                        }
                        if (itemRemove[0].itemRemove != null && itemRemove[0].TenVietTat == "") {
                            $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan);
                        }
                        if (itemRemove[0].TenGoiTrongCoQuan == null || itemRemove[0].TenGoiTrongCoQuan == "") {
                            $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].FullName);
                        }
                    }

                }
            }
            $("#HienThiInThanhPhan").tagsinput('remove', $("#TenNhomThanhPhan").val());
            $("#TenNhomThanhPhan").val("");
            this._customAppointmentWindow = $("#customWindowTaoLuong");
            this._customAppointmentWindow.ejDialog("close");


        }
        var TenNhom = "";
        ArrayValueFromTaoLuong = []; // trường hợp trong nhóm có những thành phần ko dược hiển thị textbox hiển thị in thành phần
        for (var i = 0; i < data.length; i++) {
            TenNhom += data[i].TenNhom + ",";
            var dataTable =
            {
                "obj": {
                    "NhomID": data[i].NhomID,
                    "TenTable": "DM_NHOM_THANHPHAN_VIEW"
                }
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                data: JSON.stringify(dataTable),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var ArrayValue = [];
                        var DataThanhPhanID = comboThanhPhanID.getSelectedIds();
                        if (DataThanhPhanID) {
                            ArrayValue.push(DataThanhPhanID);
                        }
                        var data = JSON.parse(reponse.d);
                        for (var i = 0; i < data.length; i++) {
                            ArrayValue.push(data[i].UserID);
                            ArrayValueFromTaoLuong.push(data[i].UserID);
                        }
                        comboThanhPhanID.setSelectionParent(ArrayValue.filter((v, i, a) => a.indexOf(v) === i));
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        }
        $("#TenNhomThanhPhan").val(TenNhom);
        $("#HienThiInThanhPhan").tagsinput('removeAll');
        var selectedName = comboThanhPhanID.getSelectedNames();
        if (!selectedName) {
            $('#HienThiInThanhPhan').tagsinput('add', TenNhom);
        }
        else {
            var TenDongChi = "";
            for (var i = 0; i < comboThanhPhanID.getSelectedNames().length; i++) {
                var item = DataThanhPhanChuanBi.filter(x => x.FullName == comboThanhPhanID.getSelectedNames()[i]);
                if (item.length > 0) {
                    if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat != "" && item[0].TenVietTat != null)) {
                        TenDongChi += item[0].TenGoiTrongCoQuan + " - " + item[0].TenVietTat + ","
                    }
                    if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat == "" || item[0].TenVietTat == null)) {
                        TenDongChi += item[0].TenGoiTrongCoQuan + ","
                    }
                    if (item[0].TenGoiTrongCoQuan == null || item[0].TenGoiTrongCoQuan == "") {
                        TenDongChi += item[0].FullName + ","
                    }
                }
                else {
                    item = DataThanhPhanChuanBi.filter(x => x.Ten == comboThanhPhanID.getSelectedNames()[i]);
                    if (item.length > 0) {
                        TenDongChi += item[0].TenVietTatDonVi + ","
                    }
                    else {
                        TenDongChi += comboThanhPhanID.getSelectedNames()[i] + ","
                    }

                }

            }
            if ($("#TenNhomThanhPhan").val() != "") {
                $('#HienThiInThanhPhan').tagsinput('add', $("#TenNhomThanhPhan").val() + "," + TenDongChi);
            }
            else {
                $('#HienThiInThanhPhan').tagsinput('add', TenDongChi);
            }
        }

        for (var i = 0; i < ArrayValueFromTaoLuong.length; i++) {
            var itemRemove = DataThanhPhanChuanBi.filter(x => x.UserID == ArrayValueFromTaoLuong[i]);
            if (itemRemove.length > 0) {
                if (itemRemove[0].TenGoiTrongCoQuan != null && itemRemove[0].TenVietTat != "") {
                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan + " - " + itemRemove[0].TenVietTat);
                }
                if (itemRemove[0].itemRemove != null && itemRemove[0].TenVietTat == "") {
                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan);
                }
                if (itemRemove[0].TenGoiTrongCoQuan == null || itemRemove[0].TenGoiTrongCoQuan == "") {
                    $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].FullName);
                }
            }

        }

        //$("#HienThiInThanhPhan").val(TenNhom.slice(0, -1));
        this._customAppointmentWindow = $("#customWindowTaoLuong");
        this._customAppointmentWindow.ejDialog("close");
    })

    //$("#btnBoChonTaoLuong").click(function () {
    //    $('#IDTableNhom').bootstrapTable('uncheckAll');
    //    this._customAppointmentWindow = $("#customWindowTaoLuong");
    //    this._customAppointmentWindow.ejDialog("close");
    //})



    //$('#HienThiInThanhPhan').on('beforeItemRemove', function (event) {
    //    var tag = event.item;
    //    $("#IDTableNhom").bootstrapTable('getData')

    //});

    $("#btnLuuTaoLuong").click(function () {
        if ($("#TenNhom").val() == "") {
            alert_warning("Bạn chưa nhập tên nhóm");
            return;
        }
        var IsExistedData = $("#IDTableNhom").bootstrapTable('getData').filter(x => x.TenNhom == $("#TenNhom").val() && x.NhomID != $("#NhomID").val());
        if (IsExistedData.length > 0) {
            alert_warning("Đã tồn tại tên nhóm");
            return;
        }
        var ArrayThanhPhan = [];

        var ThanhPhanID = comboThanhPhanTaoLuong.getSelectedIds();
        var ArrayThanhPhan = [];

        if (ThanhPhanID == null) {
            alert_warning("Vui lòng chọn thành phần");
            return;
        }

        // begin ThanhPhan
        var objectSeleted = comboThanhPhanTaoLuong._selectedItems;
        var PhongBanSeleted = [];
        var userSeleleted = [];

        //lấy được tên phòng ban
        for (var i = 0; i < SelectParentDistince.length; i++) {
            for (var j = 0; j < objectSeleted.length; j++) {
                if (SelectParentDistince[i].title == objectSeleted[j].title) {
                    PhongBanSeleted.push({ TenPhongBan: objectSeleted[j].title, subs: [] });
                }
            }
        }
        //lấy được UserID và thuộc phòng ban
        for (var i = 0; i < PhongBanSeleted.length; i++) {
            var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
            if (userdatathanhphan.length > 0) {
                for (var j = 0; j < objectSeleted.length; j++) {
                    var IsExistUser = userdatathanhphan.filter(x => x.UserID == objectSeleted[j].id);
                    if (IsExistUser.length > 0) {
                        userSeleleted.push({ UserID: objectSeleted[j].id, TenPhongBan: PhongBanSeleted[i].TenPhongBan })
                    }
                }
            }
        }
        for (var i = 0; i < PhongBanSeleted.length; i++) {
            if (userSeleleted.length > 0) {
                for (var j = 0; j < userSeleleted.length; j++) {
                    if (userSeleleted[j].TenPhongBan == PhongBanSeleted[i].TenPhongBan) {
                        PhongBanSeleted[i].subs.push({ UserID: userSeleleted[j].UserID });
                    }

                }
            }
        }


        if (ThanhPhanID) {
            for (var i = 0; i < SelectParentDistince.length; i++) {
                removeItem(ThanhPhanID, SelectParentDistince[i].id)
            }
            for (var i = 0; i < ThanhPhanID.length; i++) {
                for (var j = 0; j < DataThanhPhanChuanBi.length; j++) {
                    if (ThanhPhanID[i] == DataThanhPhanChuanBi[j].UserID) {
                        ArrayThanhPhan.push({ PhongBanID: DataThanhPhanChuanBi[j].Ma, UserID: DataThanhPhanChuanBi[j].UserID, DoiTuongID: 5, TenPhongBan: "", DiemDanh: null })//Thành phần họp
                        break;
                    }
                }
            }
        }

        for (var i = 0; i < PhongBanSeleted.length; i++) {
            if (PhongBanSeleted[i].subs && PhongBanSeleted[i].subs.length > 0) {
                for (var j = 0; j < ArrayThanhPhan.length; j++) {
                    for (var k = 0; k < PhongBanSeleted[i].subs.length; k++) {
                        if (ArrayThanhPhan[j].UserID == PhongBanSeleted[i].subs[k].UserID) {
                            ArrayThanhPhan[j].TenPhongBan = ""; // những user chọn đính danh thì sẽ không có phòng ban,ngược lại
                        }
                    }

                }
            }
            else {
                var userdatathanhphan;
                var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
                for (var m = 0; m < userdatathanhphan.length; m++) {
                    ArrayThanhPhan.push({ PhongBanID: userdatathanhphan[m].Ma, UserID: userdatathanhphan[m].UserID, DoiTuongID: 5, TenPhongBan: userdatathanhphan[m].Ten, DiemDanh: null })//Thành phần họp
                }
            }
        }

        var DataObject =
        {
            "obj": {
                "NhomID": $("#NhomID").val(),
                "TenNhom": $("#TenNhom").val(),
                "ListObjectUserId": ArrayThanhPhan,
                "IsDelete": false
            },
            "TenStore": "DM_NHOM"
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
            data: JSON.stringify(DataObject),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    $("#NhomID").val("0");
                    $("#TenNhom").val("");
                    comboThanhPhanTaoLuong.clearSelection();
                    LoadDataTable(null, "DM_NHOM", "IDTableNhom");
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    })

    $("#btnLamMoiTaoLuong").click(function () {
        $("#TenNhom").val("");
        comboThanhPhanTaoLuong.clearSelection();
        $("#NhomID").val("0");
    })

    $("#btnTroVeTaoLuong").click(function () {
        this._customAppointmentWindow = $("#customWindowTaoLuong");
        this._customAppointmentWindow.ejDialog("close");
    })


    $("#btnLamMoiDoiTuong").click(function () {
        $("#DoiTuongID").val("0");
        $("#TenDoiTuong").val("");
        $("#checkboxDoiTuongNhac").prop('checked', true);
    })
    var IsCheckAll = false;
    $("#btnAddDonViKhac").click(function () {
        this._customAppointmentWindow = $("#customWindowAddDonViKhac");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "60%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin đơn vị khác",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowAddDonViKhac").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        IsCheckAll = false;

    });


    $("#btnPopupXemLichHopPhatHanh").click(function () {
        this._customAppointmentWindow = $("#customWindowXemLichHopPhatHanh");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin lịch họp phát hành",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowXemLichHopPhatHanh").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        var dataTable =
        {
            "obj": {
                "TenTable": "GET_WEEKNUMBER",
                "ThoiGianTu": TuNgay
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
            data: JSON.stringify(dataTable),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var data = JSON.parse(reponse.d);
                    if (data[0].WeekNumber != "") {
                        if (parseInt(data[0].WeekNumber) < 10) {
                            $("#lblTuanXemLichHopPhatHanh").text("0" + data[0].WeekNumber);
                        }
                        else {
                            $("#lblTuanXemLichHopPhatHanh").text(data[0].WeekNumber);
                        }
                    }
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        $("#lblTuNgayXemLichHopPhatHanh").text(TuNgay.split("-").reverse().join("/"));
        $("#lblDenNgayXemLichHopPhatHanh").text(DenNgay.split("-").reverse().join("/"));
        LoadPhatHanhLichSuTheoThoiGian(TuNgay, DenNgay);
    });

    $("#btnSearch").click(function () {
        LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), comboChonChuTriID.getSelectedIds().toString())
    });
    function searchKeyUp() {
        LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), comboChonChuTriID.getSelectedIds().toString())
    }
    $("#btnPopUpDanhSachSchedule").click(function () {
        this._customAppointmentWindow = $("#customWindowDanhSachSchedulePhatHanh");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách phát hành",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowDanhSachSchedulePhatHanh").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");


    });
    Array.prototype.remove = function (key, value) {
        const index = this.findIndex(obj => obj[key] === value);
        return index >= 0 ? [
            ...this.slice(0, index),
            ...this.slice(index +1)
        ] : this;
    };
    $('#btnPrint').bind("click", function () {
        this._customAppointmentWindow = $("#customWindowInLichHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "In lịch họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowInLichHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");


        var dataTable =
        {
            "obj": {
                "TenTable": "GET_WEEKNUMBER",
                "ThoiGianTu": TuNgay
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
            data: JSON.stringify(dataTable),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var data = JSON.parse(reponse.d);
                    if (data[0].WeekNumber != "") {
                        if (parseInt(data[0].WeekNumber) < 10) {
                            $("#lblTuanIn").text("0" + data[0].WeekNumber);
                        }
                        else {
                            $("#lblTuanIn").text(data[0].WeekNumber);
                        }
                    }
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        $("#lblTuNgayIn").text(TuNgay.split("-").reverse().join("/"));
        $("#lblDenNgayIn").text(DenNgay.split("-").reverse().join("/") + ")");

    });


    $("#btnInLichHop").click(function () {
        var text = $("#CongTacTapTrung").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_info("Bạn chưa nhập ghi chú");
            return;
        }
        //You must use $(".summernote").summernote("code", "your text");
        if ($("#CongTacTapTrung").summernote("code") != "") {
            var dataIn =
            {
                "obj": {
                    "CongTacTapTrung": $("#CongTacTapTrung").summernote("code"),
                    "ThoiGian": $("#lblThoiGian").text(),
                    "ThoiGianTu": TuNgay,
                    "ThoiGianDen": DenNgay
                },
                "objlLoad": {
                    "RoleUser": "QuanLy",
                    "TuNgay": TuNgay,
                    "DenNgay": DenNgay,
                    "Thang": Thang,
                    "Nam": Nam,
                    "Loai": "week",
                    "Search": "",
                    "ChuTriID": null,
                }
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_NOIDUNG_IN_AN_InsUpDel",
                data: JSON.stringify(dataIn),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = reponse.d;
                    var data = JSON.parse(obj);
                    var divTable = "";
                    //$("#lblNgay").text(new Date().getDate());
                    //$("#lblThang").text(new Date().getMonth()+1);
                    //$("#lblNam").text(new Date().getFullYear());
                    //$("#divCongTacTapTrung").html(data.Table[0].CongTacTapTrung);
                    if (data.Table.length > 0) {
                        $("#divThoiGian").html(data.Table[0].ThoiGian);
                        //$("#divCongTacTapTrung").html(data.Table[0].CongTacTapTrung);
                    }
                    if (data.Table1.length > 0) {
                        divTable += '<table style="border:0px solid black;margin-left: -60px;" cellspacing="0" cellpadding="0" width="1068px">'
                        divTable += '<tbody>'
                        divTable += '<tr>'
                        divTable += '<td width="100" colspan="2" style="text-align:center; border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>THỜI GIAN</strong></p>'
                        divTable += '</td>'
                        divTable += '<td width="50" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>GIỜ</strong></p>'
                        divTable += '</td>'
                        divTable += '<td width="200" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>NỘI DUNG</strong></p>'
                        divTable += '</td>'
                        divTable += '<td width="100" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>CHỦ TRÌ</strong></p>'
                        divTable += '</td>'
                        divTable += '<td width="200" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black;border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>CÙNG DỰ</strong></p>'
                        divTable += '</td>'
                        //divTable += '<td width="100" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        //divTable += '<p><strong>Chuẩn bị</strong></p>'
                        //divTable += ' </td>'
                        divTable += '<td width="100" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black; border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>THEO DÕI</strong></p>'
                        divTable += ' </td>'
                        divTable += '<td width="100" style="text-align: center;  border: 1px solid black; border-bottom: 1px solid black;border-right:1px solid black;padding: 6px;">'
                        divTable += '<p><strong>ĐỊA ĐIỂM</strong></p>'
                        divTable += '</td>'
                        divTable += '</tr>'
                        var ThuTrongTuan = [...new Map(data.Table1.map(item =>
                            [item['Thu'], item])).values()];

                        for (var i = 0; i < ThuTrongTuan.length; i++) {
                            divTable += '<tr>'
                            var numberRowsThu = data.Table1.filter(x => x.Thu == ThuTrongTuan[i].Thu).length;
                            divTable += '<td style="font-size: 12px; text-align:center; border: 1px solid black; padding: 3px; font-weight:200;" rowspan="' + numberRowsThu + '"width="80">'
                            divTable += ThuTrongTuan[i].Thu + '<br/>' + ThuTrongTuan[i].Ngay;
                            divTable += '</td >'

                            var BuoiTrongNgay = [...new Map(data.Table1.filter(x => x.Thu == ThuTrongTuan[i].Thu).map(item =>
                                [item['Buoi'], item])).values()];

                            for (var k = 0; k < BuoiTrongNgay.length; k++) {
                                var dataBuoi = data.Table1.filter(x => x.Thu == ThuTrongTuan[i].Thu &&
                                    x.Buoi == BuoiTrongNgay[k].Buoi);
                                var dataCheckRow = data.Table1.filter(x => x.Thu == ThuTrongTuan[i].Thu &&
                                    x.Buoi == BuoiTrongNgay[k].Buoi);
                                var numberSTT = 0;
                                var NumberChuTriVaPhongLienKe = [];
                                if (dataBuoi.length > 0) {

                                    for (var j = 0; j < dataBuoi.length; j++) {
                                        var map = {
                                            'Thành phần khác': '',
                                            'Khác': '',
                                            'Thành phần khác (Chủ trì - Thư ký)': '',
                                        };
                                        var ChuanBi = "";
                                        if (replaceAll(dataBuoi[j].ChuanBi, map) != "" && dataBuoi[j].ChuanBiKhac != "") {
                                            ChuanBi = replaceAll(dataBuoi[j].ChuanBi.split(',').join(', '), map);
                                        }

                                        if (replaceAll(dataBuoi[j].ChuanBi, map) == "" && dataBuoi[j].ChuanBiKhac != "") {
                                            ChuanBi = dataBuoi[j].ChuanBiKhac.split(',').join(', '), map;
                                        }
                                        if (replaceAll(dataBuoi[j].ChuanBi, map) != "" && dataBuoi[j].ChuanBiKhac == "") {
                                            ChuanBi = replaceAll(dataBuoi[j].ChuanBi.split(',').join(', '), map);
                                        }
                                        if (j == 0) {
                                            divTable += '<td  width="50" style="font-size: 12px;text-align:center; border: 1px solid black; padding:3px; font-weight:200;" rowspan="' + dataBuoi.length + ' ">'
                                            divTable += dataBuoi[j].Buoi;
                                            divTable += '</td>'
                                            divTable += '<td width="30" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;">'
                                            divTable += dataBuoi[j].Gio;
                                            divTable += '</td>'
                                            divTable += '<td width="200" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += dataBuoi[j].NoiDung;
                                            divTable += '</td>'
                                            divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;font-weight:200;text-align:center;">'
                                            divTable += replaceAll(dataBuoi[j].ChuTri.split(',').join(', '), map);
                                            divTable += '</td>'
                                            divTable += '<td width="200" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += replaceAll(dataBuoi[j].ThanhPhan.split(',').join(', '), map);
                                            divTable += '</td>'
                                            //divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            //divTable += ChuanBi;
                                            //divTable += '</td>'
                                            divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += 'Lãnh đạo VP';
                                            divTable += '</td>'
                                            if (dataBuoi.length > 1) {
                                                for (var m = 0; m < dataBuoi.length; m++) {
                                                    if (dataBuoi[j].ChuTri == dataBuoi[m].ChuTri
                                                        && dataBuoi[j].DiaDiem == dataBuoi[m].DiaDiem
                                                        && dataBuoi[j].TenPhongHopKhac == dataBuoi[m].TenPhongHopKhac) {
                                                        NumberChuTriVaPhongLienKe.push({ LichHopID: dataBuoi[m].LichHopID, ChuTri: dataBuoi[m].ChuTri, DiaDiem: dataBuoi[j].DiaDiem });

                                                    }
                                                    else {
                                                        break;
                                                    }
                                                }
                                                divTable += '<td rowspan="' + NumberChuTriVaPhongLienKe.length + '" width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;">'
                                                divTable += dataBuoi[j].DiaDiem == "Phòng họp khác" ? dataBuoi[j].TenPhongHopKhac : dataBuoi[j].DiaDiem;
                                                divTable += '</td>'

                                                if (NumberChuTriVaPhongLienKe.length == 1) {
                                                    NumberChuTriVaPhongLienKe = [];
                                                    dataCheckRow = dataCheckRow.filter(x => x.LichHopID != dataBuoi[j].LichHopID);
                                                }
                                            }
                                            else {

                                                divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;">'
                                                divTable += dataBuoi[j].DiaDiem == "Phòng họp khác" ? dataBuoi[j].TenPhongHopKhac : dataBuoi[j].DiaDiem;
                                                divTable += '</td>'
                                            }

                                            divTable += '</tr>'
                                        }
                                        else {
                                            divTable += '<tr>'
                                            divTable += '<td width="30" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;" >'
                                            divTable += dataBuoi[j].Gio;
                                            divTable += '</td>'
                                            divTable += '<td width="200" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += dataBuoi[j].NoiDung;
                                            divTable += '</td>'
                                            if (NumberChuTriVaPhongLienKe.length > 0) {
                                                //var IsExitRow = NumberChuTriVaPhongLienKe.filter(x => x.LichHopID == dataBuoi[j].LichHopID);
                                                //if (IsExitRow.length == 0) {
                                                //    divTable += '<td width="100" style="font-size: 12px; border: 1px solid black;padding: 3px;font-weight:200;text-align:center;" >'
                                                //    divTable += dataBuoi[j].ChuTri.split(',').join(', ');
                                                //    divTable += '</td>'
                                                //}
                                                //else {
                                                //    numberSTT = numberSTT + 1;
                                                //    divTable += '<td width="100" style="font-size: 12px; border: 1px solid black;padding: 3px;font-weight:200;text-align:center;" >'
                                                //    divTable += numberSTT;
                                                //    divTable += '</td>'
                                                //}
                                                divTable += '<td width="100" style="font-size: 12px; border: 1px solid black;padding: 3px;font-weight:200;text-align:center;" >'
                                                divTable += dataBuoi[j].ChuTri.split(',').join(', ');
                                                divTable += '</td>'
                                            }
                                            else {
                                                divTable += '<td width="100" style="font-size: 12px; border: 1px solid black;padding: 3px;font-weight:200;text-align:center;" >'
                                                divTable += dataBuoi[j].ChuTri.split(',').join(', ');
                                                divTable += '</td>'
                                                numberSTT = 0;
                                            }
                                            divTable += '<td width="200" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += replaceAll(dataBuoi[j].ThanhPhan.split(',').join(', '), map);
                                            divTable += '</td>'
                                            //divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            //divTable += ChuanBi;
                                            //divTable += '</td>'
                                            divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:align:justify;">'
                                            divTable += 'Lãnh đạo VP';
                                            divTable += '</td>'
                                            if (NumberChuTriVaPhongLienKe.length > 0) {
                                                var IsExit = NumberChuTriVaPhongLienKe.filter(x => x.LichHopID == dataBuoi[j].LichHopID);
                                                if (IsExit.length > 0) {
                                                    if (j == 1) {
                                                        NumberChuTriVaPhongLienKe = NumberChuTriVaPhongLienKe.filter(x => x.LichHopID != dataBuoi[j - 1].LichHopID);
                                                        dataCheckRow = dataCheckRow.filter(x => x.LichHopID != dataBuoi[j - 1].LichHopID);
                                                    }
                                                    NumberChuTriVaPhongLienKe = NumberChuTriVaPhongLienKe.filter(x => x.LichHopID != dataBuoi[j].LichHopID);
                                                    dataCheckRow = dataCheckRow.filter(x => x.LichHopID != dataBuoi[j].LichHopID);
                                                }
                                                else {
                                                    divTable += '<td width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;">'
                                                    divTable += dataBuoi[j].DiaDiem == "Phòng họp khác" ? dataBuoi[j].TenPhongHopKhac : dataBuoi[j].DiaDiem;
                                                    divTable += '</td>'
                                                }
                                            }
                                            else {
                                                NumberChuTriVaPhongLienKe = [];
                                                for (var m = 0; m < dataCheckRow.length; m++) {
                                                    if (dataBuoi[j].ChuTri == dataCheckRow[m].ChuTri
                                                        && dataBuoi[j].DiaDiem == dataCheckRow[m].DiaDiem && dataBuoi[j].TenPhongHopKhac == dataCheckRow[m].TenPhongHopKhac) {
                                                        NumberChuTriVaPhongLienKe.push({
                                                            LichHopID: dataCheckRow[m].LichHopID,
                                                            ChuTri: dataCheckRow[m].ChuTri,
                                                            DiaDiem: dataCheckRow[m].DiaDiem
                                                        });
                                                    }
                                                    else {
                                                        break;
                                                    }
                                                }
                                                divTable += '<td rowspan="' + NumberChuTriVaPhongLienKe.length + '" width="100" style="font-size: 12px; border: 1px solid black; padding: 3px;text-align:center;">'
                                                divTable += dataBuoi[j].DiaDiem == "Phòng họp khác" ? dataBuoi[j].TenPhongHopKhac : dataBuoi[j].DiaDiem;
                                                divTable += '</td>'
                                                numberSTT = 0;

                                                if (NumberChuTriVaPhongLienKe.length == 1) {
                                                    NumberChuTriVaPhongLienKe = [];
                                                    dataCheckRow = dataCheckRow.filter(x => x.LichHopID != dataBuoi[j].LichHopID);
                                                    numberSTT = 0;
                                                }
                                            }
                                            //}

                                            divTable += '</tr>'
                                        }
                                    }
                                }
                            }
                        }
                        divTable += '</tbody'
                        divTable += '</table'

                        $("#TableSchedule").html(divTable);
                    }
                    GenerateWord($("#PrintSchedule").html());
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        }




    });

    $("#btnPopUpDanhSachScheduleXuatExcel").click(function () {
        this._customAppointmentWindow = $("#customWindowDanhSachSchedulePhatHanhXuatExcel");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách Excel",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowDanhSachSchedulePhatHanhXuatExcel").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanhXuatExcel");

    });

    $("#btnGuiThaoLuan").click(function () {
        this._customAppointmentWindow = $("#customWindowGuiThaoLuan");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Gửi thảo luận",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowGuiThaoLuan").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        LoadThaoLuanByLichHopID($("#LichHopID").val(), "IDTableDanhSachThaoLuan");

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");

    });


    $("#btnGiayMoiHop").click(function () {
        this._customAppointmentWindow = $("#customWindowGiayMoiHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Giấy mời họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowGiayMoiHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        LoadGiayMoiHopByLichHopID($("#LichHopID").val(), "IDTableDanhSachGiayMoiHop");

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");

    });

    function GenerateWord(HTML) {
        var datahtml =
        {
            "html": HTML.toString()
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GenerateWord",
            data: JSON.stringify(datahtml),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var filename = reponse.d;
                    window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/Portals/0/Reports/PHKG/Report Store/Word/1/" + filename + "";
                    this._customAppointmentWindow = $("#customWindowInLichHop");
                    this._customAppointmentWindow.ejDialog("close");
                }
                else {
                    alert_error("Xảy ra lỗi")

                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    $("#btnHuyLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        alertify.confirm("<h4>Bạn có chắc chắn muốn hủy lịch họp ?</h4>",
            function () {
                var dataLichHop =
                {
                    "objLichHop": {
                        "LichHopID": $("#LichHopID").val(),
                        "TinhTrangID": "4",
                        "IsDelete": false
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTinhTrangByLichHopID",
                    data: JSON.stringify(dataLichHop),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            alert_success("Hủy thành công");
                            HuyEmail($("#LichHopID").val());
                            this._customAppointmentWindow = $("#customPopup");
                            this._customAppointmentWindow.ejDialog("close");
                            //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                        }
                        else {
                            alert_error("Xảy ra lỗi")

                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });

    $("#btnPheDuyetLichHop").click(function () {

        if ($("#LichHopID").val() == "0") {
            alert_warning("Vui lòng lưu thông tin cuộc họp trước khi phê duyệt");
            return;
        }
        alertify.confirm("<h4> Bạn có chắc chắn muốn phê duyệt lịch họp ? </h4>",
            function () {
                var dataLichHop =
                {
                    "objLichHop": {
                        "LichHopID": $("#LichHopID").val(),
                        "TinhTrangID": "8",
                        "IsDelete": false
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTinhTrangByLichHopID",
                    data: JSON.stringify(dataLichHop),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            alert_success("Phê duyệt thành công");
                            LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            this._customAppointmentWindow = $("#customWindow");
                            this._customAppointmentWindow.ejDialog("close");
                            //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                        }
                        else {
                            alert_error("Xảy ra lỗi")

                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });


    $("#btnXoaLichHop").click(function () {
        XoaLichHop($("#LichHopID").val())
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
    });

    function XoaLichHop(LichHopID) {
        alertify.confirm("<h4>Bạn có chắc chắn muốn xóa lịch họp ? </h4>",
            function () {
                var dataLichHop =
                {
                    "objLichHop": {
                        "LichHopID": LichHopID,
                        "IsDelete": true
                    },
                    "DoiTuongNhacLichHopID": "",
                    "ThanhPhanID": [],
                    "ChuanBiID": [],
                    "DataDanhSachTaiLieu": []
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LichHop_InsUpDel",
                    data: JSON.stringify(dataLichHop),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            alert_success("Xóa thành công");
                            //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            $("#LichHopID").val(0);


                        }
                        else {
                            alert_error("Xảy ra lỗi")

                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    }

    $("#btnChuyenDuyet").click(function () {
        ChuyenDuyet($("#LichHopID").val());
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
    });

    function ChuyenDuyet(LichHopID) {
        alertify.confirm("<h4>Bạn có muốn chuyển duyệt không ? </h4>",
            function () {
                var dataChuyenDuyet =
                {
                    "LichHopID": LichHopID,
                    "TinhTrangID": 2,
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/ChuyenDuyet",
                    data: JSON.stringify(dataChuyenDuyet),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var data = JSON.parse(reponse.d);
                            if (data[0].Result == 1) {
                                alert_success("Chuyển duyệt thành công");

                                //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            }
                            if (data[0].Result == -1) {
                                alert_info("Bạn chưa được định nghĩa người cần chuyển");
                            }
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    }

    $("#btnChuyenDuyetCuocHop").click(function () {

        if ($("#LichHopID").val() == 0) {
            alert_warning("Vui lòng lưu lịch họp trước khi chuyển duyệt")
            return;
        }
        alertify.confirm("<h4> Bạn có muốn chuyển duyệt không ? </h4>",
            function () {
                var dataChuyenDuyet =
                {
                    "LichHopID": $("#LichHopID").val(),
                    "TinhTrangID": 2,
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/ChuyenDuyet",
                    data: JSON.stringify(dataChuyenDuyet),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var data = JSON.parse(reponse.d);
                            if (data[0].Result == 1) {
                                alert_success("Chuyển duyệt thành công");
                                this._customAppointmentWindow = $("#customWindow");
                                this._customAppointmentWindow.ejDialog("close");
                                //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            }
                            if (data[0].Result == -1) {
                                alert_info("Bạn chưa được định nghĩa người cần chuyển");
                            }
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });

    $("#btnSuaLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        $("#TenNhomThanhPhan").val("");
        ArrayValueFromTaoLuong = [];
        $("#IsClickViewOrEditLichHop").val("1");
        comboPhongHopID.setSource(SelectParentPhongHopInit);
        SuaLichHop($("#LichHopID").val());

    });

    function SuaLichHop(LichHopID) {
        $("#TagVanBanLienQuan").tagsinput('removeAll');
        var dataLichHop =
        {
            "LichHopID": LichHopID
        }

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadLichHopByLichHopID",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var ResultData = JSON.parse(reponse.d);
                    var LichHop = JSON.parse(ResultData.LH_LICHHOP);
                    DataDanhSachTaiLieu = JSON.parse(ResultData.LH_TAILIEUCUOCHOP);
                    var DoiTuongNhac = JSON.parse(ResultData.LH_DOITUONGNHAC);
                    var ThanhPhan = JSON.parse(ResultData.LH_THANHPHAN);
                    var ChuanBi = JSON.parse(ResultData.LH_CHUANBI);

                    if (LichHop) {
                        comboChuTriID.clearSelection();
                        comboThuKyID.clearSelection();
                        comboLoaiLichHopID.clearSelection();
                        comboDoiTuongXemID.clearSelection();
                        comboPhongHopID.clearSelection();
                        $("#TenNhomThanhPhan").val(LichHop[0].TenNhomThanhPhan)
                        $("#TenCuocHop").val(LichHop[0].TenCuocHop);
                        $("#TinhTrangID").val(LichHop[0].TinhTrangID);
                        if (LichHop[0].TinhTrangID == 9) {
                            $("#trNoiDungKhongPheDuyet").show();
                        }
                        else {
                            $("#trNoiDungKhongPheDuyet").hide();
                        }
                        if (LichHop[0].TinhTrangID == 1) {
                            $("#btnChuyenDuyetCuocHop").show();
                            $("#btnPheDuyetLichHop").show();
                        }
                        else {
                            $("#btnChuyenDuyetCuocHop").hide();
                            $("#btnPheDuyetLichHop").hide();
                        }

                        $("#GioBatDau").val(LichHop[0].GioBatDau.split(":")[0]);
                        $("#PhutBatDau").val(LichHop[0].GioBatDau.split(":")[1]);
                        $("#GioKetThuc").val(LichHop[0].GioKetThuc.split(":")[0]);
                        $("#PhutKetThuc").val(LichHop[0].GioKetThuc.split(":")[1]);

                        $("#NgayHop").ejDatePicker({
                            value: new Date(LichHop[0].NgayHop)
                        });
                        $("#NgayHopKetThuc").ejDatePicker({
                            value: new Date(LichHop[0].NgayHopKetThuc)
                        });
                        var ArrayValue = [];

                        if (LichHop[0].ThoiGianNhacLichHop) {

                            comboThoiGianNhacLichHop.setSelection([LichHop[0].ThoiGianNhacLichHop]);
                        }
                        else {
                            comboThoiGianNhacLichHop.clearSelection();
                        }

                        if (DoiTuongNhac.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < DoiTuongNhac.length; i++) {
                                ArrayValue.push(DoiTuongNhac[i].DoiTuongID);
                            }
                            comboDoiTuongNhacID.setSelection(ArrayValue);
                        }
                        else {
                            comboDoiTuongNhacID.clearSelection();
                        }

                        $("#KhongHienThi").attr("checked", LichHop[0].KhongHienThi);
                        $("#IsPrint").attr("checked", LichHop[0].IsPrint);
                        comboChuanBiID.clearSelection();
                        if (ChuanBi.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < ChuanBi.length; i++) {
                                if (ChuanBi[i].TenPhongBan == "")  // đang chỉ đích danh {
                                    ArrayValue.push(ChuanBi[i].UserID);
                                else {// đang chọn phòng ban
                                    ArrayValue.push(ChuanBi[i].PhongBanID);
                                }
                            }
                            comboChuanBiID.setSelectionParent(ArrayValue.filter((v, i, a) => a.indexOf(v) === i));
                        }
                        else {
                            comboChuanBiID.clearSelection();
                        }
                        comboThanhPhanID.clearSelection();
                        if (ThanhPhan.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < ThanhPhan.length; i++) {
                                if (ThanhPhan[i].TenPhongBan == "") {
                                    ArrayValue.push(ThanhPhan[i].UserID);
                                }
                                else {
                                    ArrayValue.push(ThanhPhan[i].PhongBanID);
                                }

                            }
                            comboThanhPhanID.setSelectionParent(ArrayValue.filter((v, i, a) => a.indexOf(v) === i));
                        }
                        else {
                            comboThanhPhanID.clearSelection();
                        }

                        $("#ThanhPhanThamDuKhac").val(LichHop[0].ThanhPhanThamDuKhac);
                        $("#ChuanBiKhac").val(LichHop[0].ChuanBiKhac);

                        $("#GhiChu").val(LichHop[0].GhiChu);
                        $("#NoiDungKhongPheDuyet").val(LichHop[0].NoiDungKhongPheDuyet);

                        $("#GoogleMeet").val(LichHop[0].GoogleMeet);

                        $("#TaiLieu_CoQuanChuTri").val("");
                        $("#TenTaiLieu").val("");
                        $("#TaiLieuCuocHopID").val(0);
                        $("#fileSelect").val(null);
                        $("#TenFile").val("");
                        $("#FileID").val("");


                        if (LichHop[0].PhongHopID == "9") {
                            $("#trTenPhongHopKhac").show();
                            $("#TenPhongHopKhac").val(LichHop[0].TenPhongHopKhac);
                        }
                        else {
                            $("#trTenPhongHopKhac").hide();
                        }
                        comboLoaiLichHopID.setSelection([LichHop[0].LoaiLichHop]);
                        comboPhongHopID.setSelection([LichHop[0].PhongHopID]);


                        debugger
                        if (LichHop[0].DoiTuongXemID != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].DoiTuongXemID)
                            for (var i = 0; i < LichHop[0].DoiTuongXemID.split(',').length; i++) {
                                ArrayValue.push(LichHop[0].DoiTuongXemID.split(',')[i])
                            }
                            comboDoiTuongXemID.setSelection(ArrayValue);
                        }
                        else {
                            comboDoiTuongXemID.setSelection([LichHop[0].DoiTuongXemID]);
                        }

                        if (LichHop[0].ChuTriPhu != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].NguoiChuTriID)
                            for (var i = 0; i < LichHop[0].ChuTriPhu.split(',').length; i++) {
                                ArrayValue.push(LichHop[0].ChuTriPhu.split(',')[i])
                            }
                            comboChuTriID.setSelection(ArrayValue);
                        }
                        else {
                            comboChuTriID.setSelection([LichHop[0].NguoiChuTriID]);
                        }

                        if (LichHop[0].ThuKyPhu != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].ThuKyID)
                            for (var i = 0; i < LichHop[0].ThuKyPhu.split(',').length; i++) {
                                ArrayValue.push(LichHop[0].ThuKyPhu.split(',')[i])
                            }
                            comboThuKyID.setSelection(ArrayValue);
                        }
                        else {
                            comboThuKyID.setSelection([LichHop[0].ThuKyID]);
                        }

                        $('#HienThiInChuTri').tagsinput('removeAll');
                        $('#HienThiInThanhPhan').tagsinput('removeAll');
                        $('#HienThiInChuTri').tagsinput('add', LichHop[0].HienThiInChuTri);
                        $('#HienThiInThanhPhan').tagsinput('add', LichHop[0].HienThiInThanhPhan);

                        $('#IDTableDanhSachTaiLieu').bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });

                        quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, DataDanhSachTaiLieu);
                        //if (LichHop[0].CreatedUserID != UserLoginSchedule) {
                        //    $("#ChuanBiID").attr('disabled', true)
                        //    $("#ThanhPhanID").attr('disabled', true)
                        //    $("#ThanhPhanThamDuKhac").attr('disabled', true)
                        //    $("#ChuanBiKhac").attr('disabled', true)
                        //    $("#DoiTuongXemID").attr('disabled', true)
                        //    $("#btnThem").attr('disabled', true)
                        //    $('#IDTableDanhSachTaiLieu').bootstrapTable('hideColumn', 'ChucNang');
                        //    $("#GhiChu").attr('disabled', true)
                        //    $("#btnShowVanBanLienQuan").attr('disabled', true)
                        //}
                        //else {
                        //    $("#ChuanBiID").attr('disabled', false);
                        //    $("#ThanhPhanID").attr('disabled', false);
                        //    $("#ThanhPhanThamDuKhac").attr('disabled', false)
                        //    $("#ChuanBiKhac").attr('disabled', false)
                        //    $("#DoiTuongXemID").attr('disabled', false)
                        //    $("#btnThem").attr('disabled', false)
                        //    $('#IDTableDanhSachTaiLieu').bootstrapTable('showColumn', 'ChucNang');
                        //    $("#GhiChu").attr('disabled', false);
                        //    $("#btnShowVanBanLienQuan").attr('disabled', false)
                        //}

                        this._customAppointmentWindow = $("#customWindow");
                        this._customAppointmentWindow.ejDialog({
                            //width: (this._mediaQuery) ? "100%" : 600,
                            width: "90%",
                            showOnInit: false,
                            enableModal: true,
                            title: "SỬA CUỘC HỌP",
                            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                            enableResize: false,
                            allowKeyboardNavigation: false,
                            cssClass: "e-scheduledialog",
                            close: "clearFields"
                        });
                        this._customAppointmentWindow.find("#customAppointmentWindow").css({ display: "block" });
                        this._customAppointmentWindow.ejDialog("open");
                    }

                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });


    }

    $("#btnXemLichHop").click(function () {

        $("#IsClickViewOrEditLichHop").val("1");
        var dataLichHop =
        {
            "LichHopID": $("#LichHopID").val()
        }
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadLichHopByLichHopID",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var ResultData = JSON.parse(reponse.d);
                    var LichHop = JSON.parse(ResultData.LH_LICHHOP);
                    var TaiLieu = JSON.parse(ResultData.LH_TAILIEUCUOCHOP);
                    var DoiTuongNhac = JSON.parse(ResultData.LH_DOITUONGNHAC);
                    var ThanhPhan = JSON.parse(ResultData.LH_THANHPHAN);
                    var ChuanBi = JSON.parse(ResultData.LH_CHUANBI);

                    if (LichHop) {
                        comboLoaiLichHopID.setSelection([LichHop[0].LoaiLichHop]);
                        $("#lblLoaiLichHop").text(comboLoaiLichHopID.getSelectedNames());
                        comboLoaiLichHopID.clearSelection()
                        $("#lblTenCuocHop").text(LichHop[0].TenCuocHop);
                        $("#lblHuy").hide();
                        $("#lblDangTao").hide();
                        $("#lblDaDuyet").hide();
                        $("#lblChoDuyet").hide();
                        $("#lblDaPhatHanh").hide();
                        $("#lblKhongPheDuyet").hide();
                        $("#divNoiDungKhongPheDuyet").hide();

                        switch (LichHop[0].TinhTrangID) {
                            case 1:
                                $("#lblDangTao").show();
                                break;
                            case 2:
                                $("#lblChoDuyet").show();
                                break;
                            case 3:
                                $("#lblDaPhatHanh").show();
                                break;
                            case 4:
                                $("#lblHuy").show();
                                break;
                            case 8:
                                $("#lblDaDuyet").show();
                                break;
                            case 9:
                                $("#lblKhongPheDuyet").show();
                                $("#divNoiDungKhongPheDuyet").show();
                                break;
                            default:
                                // code block
                        }

                        $("#lblNoiDungKhongPheDuyet").text(LichHop[0].NoiDungKhongPheDuyet);
                        $("#lblGioBatDau").text(LichHop[0].GioBatDau);
                        $("#lblGioKetThuc").text(LichHop[0].GioKetThuc);
                        $("#lblNgayHop").text(formatDateddMMyyyy(LichHop[0].NgayHop));
                        $("#lblNgayHopKetThuc").text(formatDateddMMyyyy(LichHop[0].NgayHopKetThuc));



                        var ArrayValue = [];
                        if (LichHop[0].ChuTriPhu != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].NguoiChuTriID)
                            for (var i = 0; i < LichHop[0].ChuTriPhu.split(',').length; i++) {
                                ArrayValue.push(LichHop[0].ChuTriPhu.split(',')[i])
                            }
                            comboChuTriID.setSelection(ArrayValue);
                        }
                        else {
                            comboChuTriID.setSelection([LichHop[0].NguoiChuTriID]);
                        }
                        $("#lblChuTri").text(comboChuTriID.getSelectedNames());
                        comboChuTriID.clearSelection()

                        if (LichHop[0].ThuKyPhu != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].ThuKyID)
                            for (var i = 0; i < LichHop[0].ThuKyPhu.split(',').length; i++) {
                                ArrayValue.push(LichHop[0].ThuKyPhu.split(',')[i])
                            }
                            comboThuKyID.setSelection(ArrayValue);
                        }
                        else {
                            comboThuKyID.setSelection([LichHop[0].ThuKyID]);
                        }

                        $("#lblThuKy").text(comboThuKyID.getSelectedNames());
                        comboThuKyID.clearSelection();

                        comboPhongHopID.setSelection([LichHop[0].PhongHopID]);
                        $("#lblDiaDiem").text(comboPhongHopID.getSelectedNames());
                        comboPhongHopID.clearSelection();

                        if (LichHop[0].PhongHopID == "9") {
                            $("#divTenPhongHopKhac").show();
                            $("#lblTenPhongHopKhac").val(LichHop[0].TenPhongHopKhac);
                        }
                        else {
                            $("#divTenPhongHopKhac").hide();
                        }

                        $("#IsClickViewOrEditLichHop").val("0");
                        $("#lblNguoiSoanLich").text(LichHop[0].HoTen);
                        $("#lblKhachMoi").text(LichHop[0].ThanhPhanThamDuKhac);

                        if (LichHop[0].GoogleMeet) {
                            let ahrefGoogleMeet = '<a target="_blank" title="' + LichHop[0].GoogleMeet + '" href="' + LichHop[0].GoogleMeet + '">' + LichHop[0].GoogleMeet + '<a>';
                            $("#lblGoogleMeet").empty().html(ahrefGoogleMeet);
                        }


                        var ArrayValue = [];
                        if (ThanhPhan) {
                            ArrayValue = [];
                            for (var i = 0; i < ThanhPhan.length; i++) {
                                if (ThanhPhan[i].TenPhongBan == "")  // đang chỉ đích danh {
                                    ArrayValue.push(ThanhPhan[i].UserID);
                                else {// đang chọn phòng ban
                                    ArrayValue.push(ThanhPhan[i].PhongBanID);
                                }
                            }
                            comboThanhPhanID.setSelection(ArrayValue);
                            $("#lblThanhPhanHop").text(comboThanhPhanID.getSelectedNames())
                            comboThanhPhanID.clearSelection();
                        }

                        //if (ChuanBi) {
                        //    ArrayValue = [];
                        //    for (var i = 0; i < ChuanBi.length; i++) {
                        //        if (ChuanBi[i].TenPhongBan == "")  // đang chỉ đích danh {
                        //            ArrayValue.push(ChuanBi[i].UserID);
                        //        else {// đang chọn phòng ban
                        //            ArrayValue.push(ChuanBi[i].PhongBanID);
                        //        }
                        //    }
                        //    comboChuanBiID.setSelection(ArrayValue);
                        //    $("#lblThanhPhanHop").text(comboChuanBiID.getSelectedNames())
                        //    comboChuanBiID.clearSelection();
                        //}

                        $("#IDTableDanhSachTaiLieuDetail").bootstrapTable('refreshOptions', { data: TaiLieu });
                        this._customAppointmentWindow = $("#customPopup");
                        this._customAppointmentWindow.ejDialog("close");
                        this._customAppointmentWindow = $("#customWindowDetail");
                        this._customAppointmentWindow.ejDialog({
                            //width: (this._mediaQuery) ? "100%" : 600,
                            width: "80%",
                            showOnInit: false,
                            enableModal: true,
                            title: "Xem lịch họp",
                            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                            enableResize: false,
                            allowKeyboardNavigation: false,
                            cssClass: "e-scheduledialog",
                            close: "clearFields"
                        });
                        this._customAppointmentWindow.find("#customAppointmentWindowDetail").css({ display: "block" });
                        this._customAppointmentWindow.ejDialog("open");
                    }

                    /*LoadThaoLuanByLichHopID($("#LichHopID").val(), "IDTableDanhSachThaoLuanDetail");*/
                    LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
                    LoadBieuQuyetByLichHopID($("#LichHopID").val());
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });



    });


    function formatDateddMMyyyy(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2)
            month = '0' + month;
        if (day.length < 2)
            day = '0' + day;

        return [day, month, year].join('/');
    }

    $("#urlChuongTrinhHop").click(function () {

        this._customAppointmentWindow = $("#customWindowXemChuongTrinhHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin ghi chú",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });

        LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
        this._customAppointmentWindow.find("#customAppointmentWindowXemChuongTrinhHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");



    });

    $("#urlNoiDungBieuQuyet").click(function () {

        this._customAppointmentWindow = $("#customWindowXemBieuQuyet");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin biểu quyết",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });

        LoadBieuQuyetByLichHopID($("#LichHopID").val())
        this._customAppointmentWindow.find("#customAppointmentWindowXemBieuQuyet").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");



    });

    $("#btnThemChuongTrinhHop").click(function () {

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");

        this._customAppointmentWindow = $("#customWindowThemChuongTrinhHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thêm chương trình",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
        this._customAppointmentWindow.find("#customAppointmentWindowThemChuongTrinhHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");



    });

    $("#btnThemBieuQuyet").click(function () {

        this._customAppointmentWindow = $("#customWindowThemBieuQuyet");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thêm biểu quyết",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });

        LoadBieuQuyetByLichHopID($("#LichHopID").val())
        this._customAppointmentWindow.find("#customAppointmentWindowThemBieuQuyet").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");


    });

    $("#btnLuuChuongTrinhHop").click(function () {

        var text = $("#summernote").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_info("Bạn chưa nhập chương trình họp");
            return;
        }

        var GioBatDauChuongTrinh = $("#GioBatDauChuongTrinhHop").val();
        var PhutBatDauChuongTrinh = $("#PhutBatDauChuongTrinhHop").val();
        var GioKetThucChuongTrinh = $("#GioKetThucChuongTrinhHop").val();
        var PhutKetThucChuongTrinh = $("#PhutKetThucChuongTrinhHop").val();
        if (!GioBatDauChuongTrinh || !PhutBatDauChuongTrinh || !GioKetThucChuongTrinh || !PhutKetThucChuongTrinh) {
            alert_info("Vui lòng chọn thời gian chương trình họp");
            return;
        }



        var TuNgayChuongTrinhHop = $("#TuNgayChuongTrinhHop").val();
        var DenNgayChuongTrinhHop = $("#DenNgayChuongTrinhHop").val();

        if (!TuNgayChuongTrinhHop || !DenNgayChuongTrinhHop) {
            alert_warning("Vui lòng chọn ngày chương trình họp");
            return;
        }
        var TuNgayFormat = TuNgayChuongTrinhHop.split("/").reverse().join("-");
        var DenNgayFormat = DenNgayChuongTrinhHop.split("/").reverse().join("-");

        var GioPhutBatDau = GioBatDauChuongTrinh + ":" + PhutBatDauChuongTrinh + ":00";
        var GioPhutKetThuc = GioKetThucChuongTrinh + ":" + PhutKetThucChuongTrinh + ":00";


        var TuNgayMoment = moment(TuNgayChuongTrinhHop, 'DD/MM/YYYY');
        var TuNgayObject = TuNgayMoment.toDate();
        var DenNgayMoment = moment(DenNgayChuongTrinhHop, 'DD/MM/YYYY');
        var DenNgayObject = DenNgayMoment.toDate();


        if (TuNgayObject > DenNgayObject) {
            alert_error("Từ ngày phải nhỏ hơn đến ngày");
            return;
        }

        var dataCheckThoiGianChuongTrinhHop =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "GioPhutBatDau": GioPhutBatDau,
                "GioPhutKetThuc": GioPhutKetThuc,
                "TuNgay": TuNgayFormat,
                "DenNgay": DenNgayFormat
            },

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_CheckThoiGianChuongTrinhHop",
            data: JSON.stringify(dataCheckThoiGianChuongTrinhHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var obj = JSON.parse(reponse.d);
                    if (obj[0].IsExist == 0) {
                        alert_warning("Xin vui lòng chọn thời gian chương trình theo lịch họp!");
                    }
                    else {
                        //You must use $(".summernote").summernote("code", "your text");
                        if ($("#summernote").summernote("code") != "") {
                            var dataLChuongTrinhHop =
                            {
                                "obj": {
                                    "LichHopID": $("#LichHopID").val(),
                                    "TenChuongTrinh": $("#TenChuongTrinh").val(),
                                    "GioBatDau": GioBatDauChuongTrinh,
                                    "GioKetThuc": GioKetThucChuongTrinh,
                                    "PhutBatDau": PhutBatDauChuongTrinh,
                                    "PhutKetThuc": PhutKetThucChuongTrinh,
                                    "TuNgay": TuNgayFormat,
                                    "DenNgay": DenNgayFormat,
                                    "NoiDung": $("#summernote").summernote("code"),
                                    "IsDelete": false,
                                    "ChuongTrinhHopID": $("#ChuongTrinhHopID").val()

                                }
                            };
                            $.ajax({
                                type: "POST",
                                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/ChuongTrinhHop_InsUpDel",
                                data: JSON.stringify(dataLChuongTrinhHop),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                async: false,
                                success: function (reponse) {
                                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                    if (reponse.d) {
                                        var dataID = JSON.parse(reponse.d);
                                        $("#ChuongTrinhHopID").val(dataID[0].ChuongTrinhHopID);
                                        LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
                                        alert_success("Lưu thành công");
                                    }
                                    else {
                                        alert_error("Xảy ra lỗi");
                                    }


                                },
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                },
                            });
                        }

                    }
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    });




    $("#btnPrintQRPhongBan").click(function () {
        ShowPopup("DanhSachPhongHop", "80%", "Danh sách phòng họp");
    });

    $("#btnChuyenDuyetTatCa").click(function () {
        if (dataMapSchedule == null) {
            alert_warning("Bạn không có lịch họp trạng thái đang tạo");
            return;
        }
        var LichHopDangTao = dataMapSchedule.filter(x => x.Categorize == 1)// đang tạo
        if (LichHopDangTao.length == 0) {
            alert_warning("Bạn không có lịch họp trạng thái đang tạo");
            return;
        }
        alertify.confirm("<h4>Bạn có chắc chắn muốn chuyển duyệt tất cả không ?</h4>",

            function () {
                var ChuoiLichHopID = "";
                for (var i = 0; i < LichHopDangTao.length; i++) {
                    ChuoiLichHopID += LichHopDangTao[i].Id + ","
                }
                var dataChuyenDuyet =
                {
                    "ChuoiLichHopID": ChuoiLichHopID,
                    "TinhTrangID": 2,
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/ChuyenDuyetTatCa",
                    data: JSON.stringify(dataChuyenDuyet),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var data = JSON.parse(reponse.d);
                            if (data[0].Result == 1) {
                                alert_success("Chuyển duyệt thành công");
                            }
                            if (data[0].Result == -1) {
                                alert_info("Bạn chưa được định nghĩa người cần chuyển");
                            }
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            },
            function () {

            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });

    $("#btnSaoChep").click(function () {

        alertify.confirm("<h4>Bạn có muốn sao chép thông tin không ?</h4>",
            function () {
                debugger
                $("#LichHopID").val("0");
                $("#TinhTrangID").val("1");
                $("#GioBatDau").val();
                $("#PhutBatDau").val();
                $("#PhutKetThuc").val();
                $("#GioKetThuc").val();
                $("#NgayHop").val();
                $("#NgayHopKetThuc").val();
                $("#btnPheDuyetLichHop").show();
                for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                    DataDanhSachTaiLieu[i].TaiLieuCuocHopID = 0;
                    DataDanhSachTaiLieu[i].LichHopID = 0;
                }
                for (var i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                    DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
                }
                DataDanhSachTaiLieu;
               
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });

    $("#btnLuu").click(function () {

        var TenCuocHop = $("#TenCuocHop").val();
        var TinhTrangID = $("#TinhTrangID").val();

        if (!TenCuocHop) {
            alert_warning("Vui lòng nhập tên cuộc họp");
            return;
        }
        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert_warning("Vui lòng chọn thời gian cuộc họp");
            return;
        }
        var ThoiGianTu = GioBatDau + ":" + PhutBatDau + ":00";
        var ThoiGianDen = GioKetThuc + ":" + PhutKetThuc + ":00";

        var NgayHop = $("#NgayHop").val();
        var NgayHopKetThuc = $("#NgayHopKetThuc").val();

        if (!NgayHop) {
            alert_warning("Vui lòng chọn ngày họp");
            return;
        }
        if (!NgayHopKetThuc) {
            alert_warning("Vui lòng chọn ngày họp kết thúc");
            return;
        }
        var NgayHopTu = NgayHop + " " + ThoiGianTu;
        var NgayHopDen = NgayHopKetThuc + " " + ThoiGianDen;

        if (Date.parse(strToDate(NgayHopTu)) > Date.parse(strToDate(NgayHopDen))) {
            alert_warning("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }

        if ($("#LichHopID").val() == 0) {
            let NgayHienTai = new Date().toISOString().split('T')[0]
            let NgayHopMoment = moment(NgayHop, "DD-MM-YYYY").format("YYYY-MM-DD");
            if (NgayHopMoment < NgayHienTai) {
                alert_warning("Ngày họp bắt đầu phải lớn hơn hoặc bằng ngày hiện tại ")
                return;
            }
        }


        var ThoiGianNhacLichHop = comboThoiGianNhacLichHop.getSelectedIds();
        var DoiTuongNhacLichHopID = comboDoiTuongNhacID.getSelectedIds();

        var ChuTriID = comboChuTriID.getSelectedIds();
        if (!ChuTriID) {
            alert_warning("Vui lòng chọn chủ trì");
            return;
        }

        var ChuTriPhu = "";
        if (ChuTriID.length >= 2) {
            ChuTriID = ChuTriID[0];
            for (var i = 1; i < comboChuTriID.getSelectedIds().length; i++) {
                ChuTriPhu += comboChuTriID.getSelectedIds()[i] + ","
            }
        }



        var KhongHienThi = $('#KhongHienThi').is(":checked");
        var IsPrint = $('#IsPrint').is(":checked");

        var LoaiLichHopID = comboLoaiLichHopID.getSelectedIds();
        if (!LoaiLichHopID) {
            alert_warning("Vui lòng chọn loại lịch họp");
            return;
        }

        var ThuKyID = comboThuKyID.getSelectedIds();
        if (!ThuKyID) {
            alert_warning("Vui lòng chọn thư ký");
            return;
        }
        var ThuKyPhu = "";
        if (ThuKyID.length >= 2) {
            ThuKyID = ThuKyID[0];
            for (var i = 1; i < comboThuKyID.getSelectedIds().length; i++) {
                ThuKyPhu += comboThuKyID.getSelectedIds()[i] + ","
            }
        }

        // Begin xử lý phức tạp
        var ChuanBiID = comboChuanBiID.getSelectedIds();
        var ThanhPhanID = comboThanhPhanID.getSelectedIds();


        var ArrayChuanBi = [];
        var ArrayThanhPhan = [];

        if (ThanhPhanID == null) {
            alert_warning("Vui lòng chọn thành phần");
            return;
        }
        // begin ThanhPhan
        var objectSeleted = comboThanhPhanID._selectedItems;
        var PhongBanSeleted = [];
        var userSeleleted = [];

        //lấy được tên phòng ban
        for (var i = 0; i < SelectParentDistince.length; i++) {
            for (var j = 0; j < objectSeleted.length; j++) {
                if (SelectParentDistince[i].title == objectSeleted[j].title) {
                    PhongBanSeleted.push({ TenPhongBan: objectSeleted[j].title, subs: [] });
                }
            }
        }
        //lấy được UserID và thuộc phòng ban
        for (var i = 0; i < PhongBanSeleted.length; i++) {
            var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
            if (userdatathanhphan.length > 0) {
                for (var j = 0; j < objectSeleted.length; j++) {
                    var IsExistUser = userdatathanhphan.filter(x => x.UserID == objectSeleted[j].id);
                    if (IsExistUser.length > 0) {
                        userSeleleted.push({ UserID: objectSeleted[j].id, TenPhongBan: PhongBanSeleted[i].TenPhongBan })
                    }
                }
            }
        }
        for (var i = 0; i < PhongBanSeleted.length; i++) {
            if (userSeleleted.length > 0) {
                for (var j = 0; j < userSeleleted.length; j++) {
                    if (userSeleleted[j].TenPhongBan == PhongBanSeleted[i].TenPhongBan) {
                        PhongBanSeleted[i].subs.push({ UserID: userSeleleted[j].UserID });
                    }

                }
            }
        }


        if (ThanhPhanID) {
            for (var i = 0; i < SelectParentDistince.length; i++) {
                removeItem(ThanhPhanID, SelectParentDistince[i].id)
            }
            for (var i = 0; i < ThanhPhanID.length; i++) {
                for (var j = 0; j < DataThanhPhanChuanBi.length; j++) {
                    if (ThanhPhanID[i] == DataThanhPhanChuanBi[j].UserID) {
                        ArrayThanhPhan.push({ PhongBanID: DataThanhPhanChuanBi[j].Ma, UserID: DataThanhPhanChuanBi[j].UserID, DoiTuongID: 5, TenPhongBan: "", DiemDanh: null })//Thành phần họp
                        break;
                    }
                }
            }
        }

        for (var i = 0; i < PhongBanSeleted.length; i++) {
            if (PhongBanSeleted[i].subs && PhongBanSeleted[i].subs.length > 0) {
                for (var j = 0; j < ArrayThanhPhan.length; j++) {
                    for (var k = 0; k < PhongBanSeleted[i].subs.length; k++) {
                        if (ArrayThanhPhan[j].UserID == PhongBanSeleted[i].subs[k].UserID) {
                            ArrayThanhPhan[j].TenPhongBan = ""; // những user chọn đính danh thì sẽ không có phòng ban,ngược lại
                        }
                    }

                }
            }
            else {
                var userdatathanhphan;
                var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
                for (var m = 0; m < userdatathanhphan.length; m++) {
                    ArrayThanhPhan.push({ PhongBanID: userdatathanhphan[m].Ma, UserID: userdatathanhphan[m].UserID, DoiTuongID: 5, TenPhongBan: userdatathanhphan[m].Ten, DiemDanh: null })//Thành phần họp
                }
            }
        }


        // end

        //var IsExistChuTri = ArrayThanhPhan.filter(x => x.UserID == ChuTriID.toString())
        //if (IsExistChuTri.length > 0) {
        //    alert_warning("Bạn không được chọn chủ trì trong thành phần tham dự")
        //    return;
        //}
        //var IsExistThuKy = ArrayThanhPhan.filter(x => x.UserID == ThuKyID.toString())
        //if (IsExistThuKy.length > 0) {
        //    alert_warning("Bạn không được chọn thư ký trong thành phần tham dự")
        //    return;
        //}

        var GhiChu = $("#GhiChu").val();
        var DoiTuongXemID = comboDoiTuongXemID.getSelectedIds();



        var DoiTuongXemPhu = "";
        if (DoiTuongXemID != null) {
            if (DoiTuongXemID.length >= 2) {
                DoiTuongXemID = DoiTuongXemID[0];
                for (var i = 0; i < comboDoiTuongXemID.getSelectedIds().length; i++) {
                    DoiTuongXemPhu += comboDoiTuongXemID.getSelectedIds()[i] + ","
                }
            }
            else {
                DoiTuongXemPhu = comboDoiTuongXemID.getSelectedIds() + ",";
            }
        }




        var NgayHopFormat = NgayHop.split("/").reverse().join("-");
        var NgayHopKetThucFormat = NgayHopKetThuc.split("/").reverse().join("-");

        var dataGetPhongBan =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "NgayHop": NgayHopFormat,
                "GioBatDau": ThoiGianTu,
                "GioKetThuc": ThoiGianDen,
                "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "0",
            },

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GetNguoiChuTriDangDieuHanhCuocHop",
            data: JSON.stringify(dataGetPhongBan),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var ChuoiNguoiChuTriID = JSON.parse(reponse.d);
                    if (ChuoiNguoiChuTriID.length > 0 && ChuoiNguoiChuTriID[0].ChuoiNguoiChuTriID != "") {
                        var splitChuoiNguoiChuTriID = ChuoiNguoiChuTriID[0].ChuoiNguoiChuTriID.split(',');
                        var IsExistNguoiChuTriTrongThanhPhan;
                        for (var i = 0; i < splitChuoiNguoiChuTriID.length; i++) {
                            IsExistNguoiChuTriTrongThanhPhan = ArrayThanhPhan.filter(x => x.UserID == splitChuoiNguoiChuTriID[i].toString());
                            if (IsExistNguoiChuTriTrongThanhPhan.length > 0) {
                                alert_warning("Hiện tại chủ trì " + SelectParentChuTri.filter(x => x.id == IsExistNguoiChuTriTrongThanhPhan.UserID)[0].title + " này đang điều hành cuộc họp. Xin vui lòng bỏ chọn ra khỏi thành phần họp")
                                break;
                            }
                        }
                        if (IsExistNguoiChuTriTrongThanhPhan.length > 0) {
                            return;
                        }


                    }

                    for (var i = 0; i < comboChuTriID.getSelectedIds().length; i++) {
                        ArrayThanhPhan.push({
                            PhongBanID: DataThanhPhanChuanBi.filter(x => x.UserID == comboChuTriID.getSelectedIds()[i])[0].Ma,
                            UserID: comboChuTriID.getSelectedIds()[i], DoiTuongID: 4,
                            TenPhongBan: DataThanhPhanChuanBi.filter(x => x.UserID == comboChuTriID.getSelectedIds()[i])[0].Ten,
                            DiemDanh: true
                        });//Chủ tọa
                    }

                    for (var i = 0; i < comboThuKyID.getSelectedIds().length; i++) {
                        ArrayThanhPhan.push({
                            PhongBanID: DataThanhPhanChuanBi.filter(x => x.UserID == comboThuKyID.getSelectedIds()[i])[0].Ma,
                            UserID: comboThuKyID.getSelectedIds()[i], DoiTuongID: 2,
                            TenPhongBan: DataThanhPhanChuanBi.filter(x => x.UserID == comboThuKyID.getSelectedIds()[i])[0].Ten,
                            DiemDanh: true
                        })//Thư ký
                    }

                    // begin ChuanBi
                    var objectSeleted = comboChuanBiID._selectedItems;
                    var PhongBanSeleted = [];
                    var userSeleleted = [];

                    //lấy được tên phòng ban
                    for (var i = 0; i < SelectParentDistince.length; i++) {
                        for (var j = 0; j < objectSeleted.length; j++) {
                            if (SelectParentDistince[i].title == objectSeleted[j].title) {
                                PhongBanSeleted.push({ TenPhongBan: objectSeleted[j].title, subs: [] });
                            }
                        }
                    }
                    //lấy được UserID và thuộc phòng ban
                    for (var i = 0; i < PhongBanSeleted.length; i++) {
                        var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
                        if (userdatathanhphan.length > 0) {
                            for (var j = 0; j < objectSeleted.length; j++) {
                                var IsExistUser = userdatathanhphan.filter(x => x.UserID == objectSeleted[j].id);
                                if (IsExistUser.length > 0) {
                                    userSeleleted.push({ UserID: objectSeleted[j].id, TenPhongBan: PhongBanSeleted[i].TenPhongBan })
                                }
                            }
                        }
                    }
                    for (var i = 0; i < PhongBanSeleted.length; i++) {
                        if (userSeleleted.length > 0) {
                            for (var j = 0; j < userSeleleted.length; j++) {
                                if (userSeleleted[j].TenPhongBan == PhongBanSeleted[i].TenPhongBan) {
                                    PhongBanSeleted[i].subs.push({ UserID: userSeleleted[j].UserID });
                                }

                            }
                        }
                    }

                    if (ChuanBiID) {
                        for (var i = 0; i < SelectParentDistince.length; i++) {
                            removeItem(ChuanBiID, SelectParentDistince[i].id)
                        }
                        for (var i = 0; i < ChuanBiID.length; i++) {
                            for (var j = 0; j < DataThanhPhanChuanBi.length; j++) {
                                if (ChuanBiID[i] == DataThanhPhanChuanBi[j].UserID) {
                                    ArrayChuanBi.push({ PhongBanID: DataThanhPhanChuanBi[j].Ma, UserID: DataThanhPhanChuanBi[j].UserID, TenPhongBan: "" })//Chuẩn bị
                                    break;
                                }
                            }
                        }
                    }

                    for (var i = 0; i < PhongBanSeleted.length; i++) {
                        if (PhongBanSeleted[i].subs && PhongBanSeleted[i].subs.length > 0) {
                            for (var j = 0; j < ArrayChuanBi.length; j++) {
                                for (var j = 0; j < ArrayChuanBi.length; j++) {
                                    for (var k = 0; k < PhongBanSeleted[i].subs.length; k++) {
                                        if (ArrayChuanBi[j].UserID == PhongBanSeleted[i].subs[k].UserID) {
                                            ArrayChuanBi[j].TenPhongBan = ""; // những user chọn đính danh thì sẽ không có phòng ban,ngược lại
                                        }
                                    }

                                }
                            }
                        }
                        else {
                            var userdatathanhphan;
                            var userdatathanhphan = DataThanhPhanChuanBi.filter(x => x.Ten == PhongBanSeleted[i].TenPhongBan);
                            for (var m = 0; m < userdatathanhphan.length; m++) {
                                ArrayChuanBi.push({ PhongBanID: userdatathanhphan[m].Ma, UserID: userdatathanhphan[m].UserID, TenPhongBan: userdatathanhphan[m].Ten })//Thành phần họp
                            }
                        }
                    }
                    // End
                    var ThanhPhanThamDuKhac = $("#ThanhPhanThamDuKhac").val();
                    var PhongHopID = comboPhongHopID.getSelectedIds();

                    if (PhongHopID == null) {
                        alert_warning("Vui lòng chọn phòng họp");
                        return;
                    }

                    if (comboPhongHopID.getSelectedNames() == "Phòng họp khác") {
                        if ($("#TenPhongHopKhac").val() == "") {
                            alert_warning("Vui lòng nhập tên phòng họp khác");
                            return;
                        }
                    }
                    else {
                        $("#TenPhongHopKhac").val("");
                    }
                    var dataCheckTrungLich =
                    {
                        "objLichHop": {
                            "LichHopID": $("#LichHopID").val(),
                            "NgayHop": NgayHopFormat,
                            "GioBatDau": ThoiGianTu,
                            "GioKetThuc": ThoiGianDen,
                            "PhongHopID": PhongHopID != null ? PhongHopID.toString() : "",
                            "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "",
                        },

                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CheckTrungLichHopByUserID",
                        data: JSON.stringify(dataCheckTrungLich),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) {
                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                var obj = JSON.parse(reponse.d);
                                if (obj[0].IsExist == 0) {



                                    DeleleThanhPhanHopDouble();

                                    var ArrayThanhPhanNew = [];
                                    $.each(ArrayThanhPhan, function (i, item) {
                                        if (ArrayThanhPhanNew.length > 0) {
                                            let isTonTai = ArrayThanhPhanNew.filter(x => x.UserID == item.UserID); //Kiểm tra user có tồn tai mảng mới không?
                                            if (isTonTai.length == 0) {
                                                ArrayThanhPhanNew.push(item); // Nếu không thì thêm mới
                                            }
                                            else if (isTonTai[0].DoiTuongID == 5) { // Nếu đang tồn tại mà thuộc đối tượng thành phần hợp thì loại bỏ nó ra thế chủ trì hoặc thư ký vào
                                                let new_arr = ArrayThanhPhanNew.filter(x => x !== isTonTai[0]); //Xoa đối tượng thành phần họp khỏi mảng mới
                                                new_arr.push(item); //Add đối tượng mới thư ký hoặc chủ trì vào mảng tạm all
                                                ArrayThanhPhanNew = new_arr; // Gắn bảng tạm all vào mảng mới ban đầu
                                            }
                                            else if (item.DoiTuongID != 5) // Trường hợp isTonTai.DoiTuongID <> 5 và đói tượng mới là thư ký hoặc chủ trì 
                                            {
                                                ArrayThanhPhanNew.push(item);
                                            }
                                        }
                                        else
                                            ArrayThanhPhanNew.push(item);
                                    });
                                    //console.log(ArrayThanhPhanNew);
                                    ArrayThanhPhan = ArrayThanhPhanNew;
                                    debugger
                                    var dataLichHop =
                                    {
                                        "objLichHop": {
                                            "LoaiLichHop": LoaiLichHopID != null ? LoaiLichHopID.toString() : "",
                                            "LichHopID": $("#LichHopID").val(),
                                            "TenCuocHop": TenCuocHop,
                                            "NgayHop": NgayHopFormat,
                                            "NgayHopKetThuc": NgayHopKetThucFormat,
                                            "GioBatDau": ThoiGianTu,
                                            "GioKetThuc": ThoiGianDen,
                                            "ThoiGianNhacLichHop": ThoiGianNhacLichHop != null ? ThoiGianNhacLichHop.toString() : "",
                                            "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "",
                                            "ThuKyID": ThuKyID != null ? ThuKyID.toString() : "",
                                            "DoiTuongXemID": DoiTuongXemPhu != "" ? DoiTuongXemPhu.slice(0, -1) : "",
                                            "KhongHienThi": KhongHienThi,
                                            "IsPrint": IsPrint,
                                            "ThanhPhanThamDuKhac": ThanhPhanThamDuKhac,
                                            "PhongHopID": PhongHopID != null ? PhongHopID.toString() : "",
                                            //"QuaTrinhXuLyHienTaiID":  ,
                                            "TinhTrangID": TinhTrangID,
                                            "GhiChu": GhiChu,
                                            "TenPhongHopKhac": $("#TenPhongHopKhac").val(),
                                            "IsDelete": false,
                                            "ChuanBiKhac": $("#ChuanBiKhac").val(),
                                            "ChuTriPhu": ChuTriPhu != "" ? ChuTriPhu.slice(0, -1) : "",
                                            "ThuKyPhu": ThuKyPhu != "" ? ThuKyPhu.slice(0, -1) : "",
                                            "HienThiInChuTri": $("#HienThiInChuTri").val(),
                                            "HienThiInThanhPhan": $("#HienThiInThanhPhan").val(),
                                            "TenNhomThanhPhan": $("#TenNhomThanhPhan").val(),
                                            "GoogleMeet": $("#GoogleMeet").val()

                                        },
                                        "DoiTuongNhacLichHopID": DoiTuongNhacLichHopID != null ? DoiTuongNhacLichHopID.toString() : "",
                                        "ThanhPhanID": ArrayThanhPhan,
                                        "ChuanBiID": ArrayChuanBi,
                                        "DataDanhSachTaiLieu": DataDanhSachTaiLieu

                                    };
                                    $.ajax({
                                        type: "POST",
                                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LichHop_InsUpDel",
                                        data: JSON.stringify(dataLichHop),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        async: false,
                                        success: function (reponse) {
                                            debugger
                                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                            if (reponse.d) {
                                                var dataID = JSON.parse(reponse.d);
                                                $("#LichHopID").val(dataID[0].LichHopID);
                                                LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                                                alert_success("Lưu thành công");
                                                ShowFileTaoLich($("#LichHopID").val());
                                            }
                                            else {
                                                alert_error("Xảy ra lỗi");
                                            }


                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                        },
                                    });
                                }
                                else {
                                    alert_warning("Lịch họp này đã trùng với phòng họp hiện tại .Xin vui lòng chọn phòng họp khác")
                                }
                            }
                            else {
                                alert_error("Xảy ra lỗi");
                            }


                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                        },
                    });
                }
                else {
                    alert_error("Xảy ra lỗi");
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });


    });

    $("#btnThem").click(function () {
        debugger
        var notify = "Vui lòng không được để trống";
        var TaiLieu_CoQuanChuTri = $("#TaiLieu_CoQuanChuTri").val();
        var TenTaiLieu = $("#TenTaiLieu").val();
        var TaiLieuCuocHopID = $("#TaiLieuCuocHopID").val();

        //Trường họp update Tên cơ quan chủ trì
        if (TenCoQuanChuTri && TenCoQuanChuTri != "") {
            for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                if (DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri == TenCoQuanChuTri) {
                    DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri = TaiLieu_CoQuanChuTri;
                }
            }
            for (var i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
            }

            //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu.filter(x => x.IsDelete == false) });
            quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
            quanLyController.common_ReloadTreeViewOpen();
            TenCoQuanChuTri = "";
            $("#TaiLieu_CoQuanChuTri").val("");
            return;
        }

        //Trường họp update Tên nội dung tài liệu
        if (TenNoiDungTaiLieu && TenNoiDungTaiLieu != "") {
            for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                if (DataDanhSachTaiLieu[i].TenTaiLieu == TenNoiDungTaiLieu && DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri == TenCoQuanChuTriNoiDung ) {
                    DataDanhSachTaiLieu[i].TenTaiLieu = TenTaiLieu;
                    DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri = TaiLieu_CoQuanChuTri;
                }
            }
            for (var i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
            }

            //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu.filter(x => x.IsDelete == false) });
            quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
            quanLyController.common_ReloadTreeViewOpen();
            TenNoiDungTaiLieu = "";
            TenCoQuanChuTriNoiDung = "";
            $("#TenTaiLieu").val("");
            $("#TaiLieu_CoQuanChuTri").val("");
            return;
        }
        if (!TenTaiLieu || !TaiLieu_CoQuanChuTri) {
            alert_info(notify);
            return;
        }
        var VanBanLienQuan = $("#TagVanBanLienQuan").val();
        var DuocCongKhai = $('#DuocCongKhai').is(":checked");
        var TaiLieu_CoQuanChuTri = $("#TaiLieu_CoQuanChuTri").val();

        var fileUpload = $("#fileSelect").get(0);
        var FileID = $("#FileID").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileID").val() == "") {
            alert_warning("Vui lòng đính kèm file");
            return;
        }


        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        debugger
        if (DataDanhSachTaiLieu.length > 0) {
            for (var i = 0; i < files.length; i++) {
                for (var j = 0; j < DataDanhSachTaiLieu.length; j++) {
                    if (DataDanhSachTaiLieu[j].TenTaiLieu == $("#TenTaiLieu").val() && DataDanhSachTaiLieu[j].TaiLieu_CoQuanChuTri == $("#TaiLieu_CoQuanChuTri").val()) {
                        if (DataDanhSachTaiLieu[j].TenFile == files[i].name) {
                            alert_warning("Vui lòng đính kèm file không trùng tên");
                            return;
                        }
                    }
                }
            }

        }

        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới
            for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                if (DataDanhSachTaiLieu[i].FileID == FileID) {
                    DataDanhSachTaiLieu[i].TenTaiLieu = TenTaiLieu;
                    DataDanhSachTaiLieu[i].DuocCongKhai = DuocCongKhai;
                    DataDanhSachTaiLieu[i].VanBanLienQuan = VanBanLienQuan;
                    DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri = TaiLieu_CoQuanChuTri;
                }
            }
            $("#TagVanBanLienQuan").tagsinput('removeAll');
            $("#TaiLieuCuocHopID").val(0);
            $("#fileSelect").val(null);
            $("#TenFile").val("");
            $("#FileID").val("");

            for (var i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
            }

            //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu.filter(x => x.IsDelete == false) });
            quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
            quanLyController.common_ReloadTreeViewOpen();
            return;
        }

        if (files.length > 0 && FileID != "")// đính kèm file mới và đã tồn tại file trên lưới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                async: false,
                contentType: false,
                processData: false,
                success: function (reponse) {
                    debugger
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        for (let i = 0; i < DataDanhSachTaiLieu.length; i++) {
                            if (DataDanhSachTaiLieu[i].FileID == FileID) {
                                DataDanhSachTaiLieu[i].TenTaiLieu = TenTaiLieu;
                                DataDanhSachTaiLieu[i].DuocCongKhai = DuocCongKhai;
                                DataDanhSachTaiLieu[i].TenFile = obj.TenFile;
                                DataDanhSachTaiLieu[i].FileID = obj.FileID;
                                DataDanhSachTaiLieu[i].TaiLieuCuocHopID = TaiLieuCuocHopID;
                                DataDanhSachTaiLieu[i].VanBanLienQuan = VanBanLienQuan;
                                DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri = TaiLieu_CoQuanChuTri;
                            }
                        }

                        for (let i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                            DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
                        }

                        $("#TagVanBanLienQuan").tagsinput('removeAll');
                        $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu.filter(x => x.IsDelete == false) });
                        $("#TaiLieuCuocHopID").val("0");
                        //$("#TaiLieu_CoQuanChuTri").val("");
                        //$("#TenTaiLieu").val("");
                        $("#fileSelect").val(null);
                        $("#DuocCongKhai").prop('checked', true);
                        $("#TenFile").val("");
                        $("#FileID").val("");
                        return;
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        }
        if (files.length > 0 && FileID == "") {

            //hungnk begin upload file server
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                async: false,
                contentType: false,
                processData: false,
                enctype: 'multipart/form-data',
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        if (obj.length >= 2) { // không có file đính kèm và đã tồn tại file trên lưới
                            for (let i = 0; i < obj.length; i++) {
                                var item =
                                    {
                                        "STT": 1,
                                        "TaiLieuCuocHopID": TaiLieuCuocHopID,
                                        "TenTaiLieu": TenTaiLieu,
                                        "DuocCongKhai": DuocCongKhai,
                                        "TenFile": obj[i].TenFile,
                                        "FileID": obj[i].FileID,
                                        "VanBanLienQuan": VanBanLienQuan,
                                        "TaiLieu_CoQuanChuTri": TaiLieu_CoQuanChuTri,
                                        "IsDelete": false
                                    };
                                DataDanhSachTaiLieu.push(item);
                            }
                        }
                        else {
                            var item =
                                    {
                                        "STT": 1,
                                        "TaiLieuCuocHopID": TaiLieuCuocHopID,
                                        "TenTaiLieu": TenTaiLieu,
                                        "DuocCongKhai": DuocCongKhai,
                                        "TenFile": obj.TenFile,
                                        "FileID": obj.FileID,
                                        "VanBanLienQuan": VanBanLienQuan,
                                        "TaiLieu_CoQuanChuTri": TaiLieu_CoQuanChuTri,
                                        "IsDelete": false
                                    };
                            DataDanhSachTaiLieu.push(item);
                        }

                        for (let i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                            DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
                        }
                        $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu.filter(x => x.IsDelete == false) });
                        $("#TagVanBanLienQuan").tagsinput('removeAll');
                        $("#TaiLieuCuocHopID").val("0");
                        //$("#TaiLieu_CoQuanChuTri").val("");
                        //$("#TenTaiLieu").val("");
                        $("#fileSelect").val(null);
                        $("#DuocCongKhai").prop('checked', true);
                        $("#TenFile").val("");
                        $("#FileID").val("");

                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });

            //hungnk end

        }
        quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
        quanLyController.common_ReloadTreeViewOpen();


    });


    //Update Tên cơ quan chủ trì tài liệu cuộc hợp
    function f_UpdTaiLieuCoQuanChuTri(e) {
        debugger
        let that = $(e);
        $("input[name='TaiLieu_CoQuanChuTri']").val(that.attr('data-TenCoQuanChuTri'));
        $("#TagVanBanLienQuan").tagsinput('removeAll');
        $("#TaiLieuCuocHopID").val("0");
        $("#TenTaiLieu").val("");
        $("#fileSelect").val(null);
        $("#DuocCongKhai").prop('checked', true);
        $("#TenFile").val("");
        $("#FileID").val("");
        TenCoQuanChuTri = that.attr('data-TenCoQuanChuTri');
        
    }
    //Update Tên Nội dung tài liệu cuộc hợp
    function f_UpdTaiLieuNoiDung(e) {
        debugger
        let that = $(e);
        $("#TenTaiLieu").val(that.attr('data-TenNoiDungTaiLieu'));
        $("input[name='TaiLieu_CoQuanChuTri']").val(that.attr('data-TenCoQuanChuTri-NoiDung'));
        $("#TagVanBanLienQuan").tagsinput('removeAll');
        $("#TaiLieuCuocHopID").val("0");
        $("#fileSelect").val(null);
        $("#DuocCongKhai").prop('checked', true);
        $("#TenFile").val("");
        $("#FileID").val("");
        TenNoiDungTaiLieu = that.attr('data-TenNoiDungTaiLieu');
        TenCoQuanChuTriNoiDung = that.attr('data-TenCoQuanChuTri-NoiDung');
    }
    


    function SaveBieuQuyet(BieuQuyetID, LichHopID, TieuDe, NoiDung, IsDelete) {
        if (IsDelete == true) {// hành động xóa
            if (!BieuQuyetID) {
                alert_error("Bạn chưa có biểu quyết ID");
                return;
            }
        }
        else {

            if (!TieuDe) {
                alert_warning("Vui lòng không được để trống");
                return;
            }
            if (!LichHopID) {
                alert_error("Bạn chưa có lịch họp ID");
                return;
            }
        }


        var dataBieuQuyet =
        {
            "obj": {
                "BieuQuyetID": BieuQuyetID,
                "TieuDe": TieuDe,
                "LichHopID": LichHopID,
                "NoiDung": NoiDung,
                "IsDelete": IsDelete
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/BieuQuyet_InsUpDel",
            data: JSON.stringify(dataBieuQuyet),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {

                    var dataID = JSON.parse(reponse.d);
                    $("#BieuQuyetID").val(dataID[0].BieuQuyetID);
                    // alert_success("Lưu thành công");
                    LoadBieuQuyetByLichHopID($("#LichHopID").val());
                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function SaveThaoLuan(ThaoLuanID, LichHopID, LinhVucID, NoiDung, TenFile, FileID, IsDelete) {
        if (IsDelete == true) {// hành động xóa
            if (!ThaoLuanID) {
                alert_error("Bạn chưa có thảo luận ID");
                return;
            }
        }
        else {
            if (!LichHopID) {
                alert_error("Bạn chưa có lịch họp ID");
                return;
            }
        }

        var dataThaoLuan =
        {
            "obj": {
                "ThaoLuanID": ThaoLuanID,
                "LichHopID": LichHopID,
                "LinhVucID": LinhVucID,
                "NoiDung": NoiDung,
                "TenFile": TenFile,
                "FileID": FileID,
                "IsDelete": IsDelete
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_THAOLUAN_InsUpDel",
            data: JSON.stringify(dataThaoLuan),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var data = JSON.parse(reponse.d);
                    if (data) {
                        $("#IDTableDanhSachThaoLuan").bootstrapTable('refreshOptions', { data: data });
                    }

                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }



    $("#btnLuuThaoLuan").click(function () {
        if (comboLinhVucID.getSelectedIds() == null) {
            alert_warning("Vui lòng chọn lĩnh vực");
            return;
        }
        if ($("#NoiDung").val() == "") {
            alert_warning("Vui lòng nhập nội dung");
            return;
        }
        var fileUpload = $("#fileSelectThaoLuan").get(0);
        var FileID = $("#FileIDThaoLuan").val();
        var TenFile = $("#TenFileThaoLuan").val();
        var files = fileUpload.files;
        //if (files.length == 0 && $("#FileIDThaoLuan").val() == "") {
        //    alert_info("Vui lòng đính kèm file");
        //    return;
        //}
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới


        }

        if (files.length > 0 && (FileID != "" || FileID == ""))// đính kèm file mới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                contentType: false,
                processData: false,
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        TenFile = obj.TenFile;
                        FileID = obj.FileID;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    return;
                },
            });
        }

        SaveThaoLuan($("#ThaoLuanID").val(), $("#LichHopID").val(), comboLinhVucID.getSelectedIds().toString(), $("#NoiDung").val(), TenFile, FileID, false);
        comboLinhVucID.clearSelection();
        $("#ThaoLuanID").val("0");
        $("#TieuDe").val("");
        $("#NoiDung").val("");
        $("#fileSelectThaoLuan").val(null);
        $("#FileIDThaoLuan").val("");
        $("#TenFileThaoLuan").val("");
    });


    function SaveGiayMoiHop(GiayMoiHopID, LichHopID, TenFile, FileID, IsDelete) {
        if (IsDelete == true) {// hành động xóa
            if (!GiayMoiHopID) {
                alert_error("Bạn chưa có giấy mời họp ID");
                return;
            }
        }
        else {
            if (!LichHopID) {
                alert_error("Bạn chưa có lịch họp ID");
                return;
            }
        }

        var dataGiayMoiHop =
        {
            "obj": {
                "GiayMoiHopID": GiayMoiHopID,
                "LichHopID": LichHopID,
                "TenFile": TenFile,
                "FileID": FileID,
                "IsDelete": IsDelete
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GIAYMOIHOP_InsUpDel",
            data: JSON.stringify(dataGiayMoiHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var data = JSON.parse(reponse.d);
                    if (data) {
                        $("#IDTableDanhSachGiayMoiHop").bootstrapTable('refreshOptions', { data: data });
                    }

                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    $("#btnLuuGiayMoiHop").click(function () {
        var fileUpload = $("#fileSelectGiayMoiHop").get(0);
        var FileID = $("#FileIDGiayMoiHop").val();
        var TenFile = $("#TenFileGiayMoiHop").val();
        var files = fileUpload.files;
        //if (files.length == 0 && $("#FileIDThaoLuan").val() == "") {
        //    alert_info("Vui lòng đính kèm file");
        //    return;
        //}
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới


        }

        if (files.length > 0 && (FileID != "" || FileID == ""))// đính kèm file mới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                contentType: false,
                processData: false,
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        TenFile = obj.TenFile;
                        FileID = obj.FileID;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    return;
                },
            });
        }

        SaveGiayMoiHop($("#GiayMoiHopID").val(), $("#LichHopID").val(), TenFile, FileID, false);
        $("#GiayMoiHopID").val("0");
        $("#fileSelectGiayMoiHop").val(null);
        $("#FileIDGiayMoiHop").val("");
        $("#TenFileGiayMoiHop").val("");
    });


    $("#btnPhatHanh").click(function () {

        if ($("#PhatHanhID").val() == "0") {
            alert_warning("Xin vui lòng lưu thông tin trước khi phát hành")
            return;
        }

        alertify.confirm("<h4> Bạn có chắc chắn muốn phát hành không ?</h4>",
            function () {

                var dataPhatHanh =
                {
                    "obj": {
                        "PhatHanhID": $("#PhatHanhID").val(),
                        "LichHopPhatHanhID": $("#LichHopPhatHanhID").val(),
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_PhatHanhLichHopID",
                    data: JSON.stringify(dataPhatHanh),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d != "0") {
                            var dataID = JSON.parse(reponse.d);
                            if (dataID && dataID.length > 0) {
                                //$("#PhatHanhID").val(dataID[0].PhatHanhID);
                                alert_success("Phát hành thành công");
                                $("#btnPopupXemLichHopPhatHanh").show();
                                $("#btnLuuPhatHanh").hide();
                                $("#btnPhatHanh").hide();
                                $("#btnPhatHanhTrucTiep").show();

                                this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                                this._customAppointmentWindow.ejDialog("close");
                                if ($("#IsClickPhatHanhMutil").val() == "1") {
                                    Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                                }
                                //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            }
                            else {
                                alert_error("Phát hành thất bại");
                            }
                        }
                        else if (reponse.d == "0") {
                            alert_success("Phát hành thành công");
                            //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                            if ($("#IsClickPhatHanhMutil").val() == "1") {
                                Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                            }
                            this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                            this._customAppointmentWindow.ejDialog("close");
                            setTimeout(function () {
                                alert_error("Xảy ra lỗi gửi email")
                                return;
                            }, 3000);
                        }
                        else {

                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });

            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });
    $("#btnPhatHanhTrucTiep").click(function () {
        PhatHanhTrucTiep();
    });

    function GuiEmailTaiLieuHop(ChuoiLichHopID, ChuoiFileID, ChuoiEmailList) {

        var dataLichHop =
        {
            "ChuoiLichHopID": ChuoiLichHopID,
            "ChuoiFileID": ChuoiFileID,
            "EmailList": ChuoiEmailList
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GuiEmailTaiLieu",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d == "1") {
                    alert_success("Gửi Email tài liệu thành công")
                    return;
                }
                else {

                    alert_error("Xảy ra lỗi gửi email")
                    return;

                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                return;
            },
        });
    }
    function HuyEmail(ChuoiLichHopID) {

        var dataLichHop =
        {
            "ChuoiLichHopID": ChuoiLichHopID
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/HuyEmail",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d == "1") {

                }
                else {
                    setTimeout(function () {
                        alert_error("Xảy ra lỗi gửi email")
                        return;
                    }, 3000);


                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                return;
            },
        });
    }

    function GuiSMSThongBaoLichHop(LichHopID) {

        var dataLichHop =
        {
            "LichHopID": LichHopID
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GuiSMSThongBaoLichHop",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d == "1") {

                }
                else {
                    setTimeout(function () {
                        alert_error("Xảy ra lỗi gửi SMS")
                        return;
                    }, 3000);


                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                return;
            },
        });
    }

    function checkfile(sender) {
        var validExts = new Array(".xlsx", ".xls", ".csv", ".doc", ".docx", ".pdf", ".pptx");
        var fileExt = sender.value;
        fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
        if (validExts.indexOf(fileExt) < 0) {
            alert_warning("Không tồn tại file đã chọn, vui lòng chọn tệp đúng định dạng");
            $("#" + sender.id + "").val(null);
            return false;
        }
        else return true;
    }

    function updateShowKiosk() {
        var dataLichHop =
        {
            "objLichHop": {
                "LichHopID": $('#LichHopID').val(),
                "IsDelete": false,
                "IsShowKiosk": $('#CheckIsShowKiosk').is(":checked")
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateShowShowKiosk",
            data: JSON.stringify(dataLichHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "");
                    //alert_success("Lưu thành công");
                    //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                }
                else {
                    alert_error("Xảy ra lỗi")

                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }


    $("#btnKhongCongKhai").click(function () {
        var data = $("#IDTableDanhSachTaiLieuHop").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.DuocCongKhai == false);
            if (DuLieuKhongHopLe.length > 0) {
                alert_warning("Vui lòng chọn đúng loại tình trạng công khai để cập nhật")
                return;
            }
            for (var i = 0; i < data.length; i++) {
                var obj =
                {
                    "obj": {
                        "TaiLieuCuocHopID": data[i].TaiLieuCuocHopID,
                        "TenTaiLieu": data[i].TenTaiLieu,
                        "DuocCongKhai": false,
                        "TenFile": data[i].TenFile,
                        "FileID": data[i].FileID,
                        "IsDelete": false,
                        "VanBanLienQuan": data[i].VanBanLienQuan,
                        "LichHopID": data[i].LichHopID,
                        "TaiLieu_CoQuanChuTri": data[i].TaiLieu_CoQuanChuTri,
                    },
                    "LichHopID": $("#LichHopID").val(),
                    "DoiTuongXemID": 1
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
                    data: JSON.stringify(obj),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var dataTaiLieuHop = JSON.parse(reponse.d);
                            $("#IDTableDanhSachTaiLieuHop").bootstrapTable('refreshOptions', { data: dataTaiLieuHop });
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            }
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu để cập nhật")
            return;
        }

    });

    $("#btnCongKhai").click(function () {
        var data = $("#IDTableDanhSachTaiLieuHop").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.DuocCongKhai == true);
            if (DuLieuKhongHopLe.length > 0) {
                alert_warning("Vui lòng chọn đúng loại tình trạng không công khai cập nhật")
                return;
            }
            for (var i = 0; i < data.length; i++) {
                var obj =
                {
                    "obj": {
                        "TaiLieuCuocHopID": data[i].TaiLieuCuocHopID,
                        "TenTaiLieu": data[i].TenTaiLieu,
                        "DuocCongKhai": true,
                        "TenFile": data[i].TenFile,
                        "FileID": data[i].FileID,
                        "IsDelete": false,
                        "VanBanLienQuan": data[i].VanBanLienQuan,
                        "LichHopID": data[i].LichHopID,
                        "TaiLieu_CoQuanChuTri": data[i].TaiLieu_CoQuanChuTri,
                    },
                    "LichHopID": $("#LichHopID").val(),
                    "DoiTuongXemID": 1
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
                    data: JSON.stringify(obj),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        var obj = reponse.d;
                        if (reponse.d) {
                            var dataTaiLieuHop = JSON.parse(reponse.d);
                            $("#IDTableDanhSachTaiLieuHop").bootstrapTable('refreshOptions', { data: dataTaiLieuHop });
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
            }

        }
        else {
            alert_info("Bạn chưa chọn dữ liệu để cập nhật")
            return;
        }

    });

    $("#btnGuiEmailTaiLieu").click(function () {
        var data = $("#IDTableDanhSachTaiLieuHop").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            //var DuLieuKhongHopLe = data.filter(x => x.DuocCongKhai == 0);//không công khai
            //if (DuLieuKhongHopLe.length > 0) {
            //    alert_info("Vui lòng chọn đúng dữ liệu công khai để gửi mail")
            //    return;
            //}
            this._customAppointmentWindow = $("#customWindowGuiEmailThanhPhanNgoaiCoQuan");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "60%",
                showOnInit: false,
                enableModal: true,
                title: "Gửi Email",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmentWindowGuiEmailThanhPhanNgoaiCoQuan").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");

        }
        else {
            alert_info("Bạn chưa chọn dữ liệu để gửi email")
            return;
        }

    });


    $("#btnGuiEmailThanhPhanNgoaiCoQuan").click(function () {
        var data = $("#IDTableDanhSachTaiLieuHop").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var ChuoiLichHopID = "";
            var ChuoiFileID = "";
            ChuoiLichHopID += data[0].LichHopID;
            for (var i = 0; i < data.length; i++) {
                ChuoiFileID += data[i].FileID + ";";
            }
            var EmailNhanThongBaoThanhPhanNgoaiCoQuan = $("#EmailNhanThongBaoThanhPhanNgoaiCoQuan").val();
            var ChuoiEmailList = EmailNhanThongBaoThanhPhanNgoaiCoQuan.split(",").join(";");

            GuiEmailTaiLieuHop(ChuoiLichHopID, ChuoiFileID, ChuoiEmailList);
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu để gửi email");
            return;
        }

    });


    $("#btnPhatHanhMulti").click(function () {
        var data = $("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections')
        $("#EmailDonViKhac").tagsinput('removeAll');
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.TinhTrangID != 8);//đã duyệt
            if (DuLieuKhongHopLe.length > 0) {
                alert_warning("Vui lòng chọn đúng dữ liệu với tình trạng đã duyệt để phát hành")
                return;
            }
            else {
                this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                this._customAppointmentWindow.ejDialog({
                    //width: (this._mediaQuery) ? "100%" : 600,
                    width: "80%",
                    showOnInit: false,
                    enableModal: true,
                    title: "Phát hành lịch họp",
                    //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                    enableResize: false,
                    allowKeyboardNavigation: false,
                    cssClass: "e-scheduledialog",
                    close: "clearFields"
                });
                this._customAppointmentWindow.find("#appointmentWindowPhatHanhLichHop").css({ display: "block" });
                this._customAppointmentWindow.ejDialog("open");

                var dataTable =
                {
                    "obj": {
                        "TenTable": "GET_WEEKNUMBER",
                        "ThoiGianTu": TuNgay
                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                    data: JSON.stringify(dataTable),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var data = JSON.parse(reponse.d);
                            if (data[0].WeekNumber != "") {
                                if (parseInt(data[0].WeekNumber) < 10) {
                                    $("#lblTuan").text("0" + data[0].WeekNumber);
                                }
                                else {
                                    $("#lblTuan").text(data[0].WeekNumber);
                                }
                            }
                        }
                        else {
                            alert_error("Xảy ra lỗi");
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
                $("#lblTuNgay").text(TuNgay.split("-").reverse().join("/"));
                $("#lblDenNgay").text(DenNgay.split("-").reverse().join("/"));
                var ChuoiLichHopID = "";
                for (var i = 0; i < data.length; i++) {
                    ChuoiLichHopID += data[i].LichHopID + ","
                }
                debugger
                $("#ListEmailThanhPhan").val("");

                GetEmailThanhPhanThamDuTheoThoiGian(TuNgay, DenNgay, "8", ChuoiLichHopID);// đã duyệt
                //if ($("#ListEmailThanhPhan").val() == "" || $("#ListEmailThanhPhan").val() == undefined) {
                //    alert_info("Lịch họp bạn đang chọn không có thành phần tham dự")
                //    return;
                //}
                LoadPhatHanhByThoiGian(TuNgay, DenNgay, "3", ChuoiLichHopID, $("#ListEmailThanhPhan").val()); // đã phát hành
                $("#IsClickPhatHanhMutil").val("1");
            }
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu cần phát hành")
            return;
        }

    });

    $("#btnHuyLichHopMulti").click(function () {
        var data = $("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.TinhTrangID != 3);// đã phát hành
            if (DuLieuKhongHopLe.length > 0) {
                alert_warning("Vui lòng chọn đúng dữ liệu với tình trạng đã phát hành để hủy lịch họp")
                return;
            }
            else {

                alertify.confirm("<h4>Bạn có có chắn chắn hủy lịch họp không ? </h4>",
                    function () {
                        var ChuoiLichHopID = "";
                        for (var i = 0; i < data.length; i++) {
                            var dataLichHop =
                            {
                                "objLichHop": {
                                    "LichHopID": data[i].LichHopID,
                                    "TinhTrangID": "4",
                                    "IsDelete": false
                                }
                            };
                            $.ajax({
                                type: "POST",
                                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_UpdateTinhTrangByLichHopID",
                                data: JSON.stringify(dataLichHop),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                async: false,
                                success: function (reponse) {
                                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                    if (reponse.d) {
                                        HuyEmail(data[i].LichHopID);
                                    }
                                    else {
                                        alert_error("Xảy ra lỗi")
                                        return;

                                    }


                                },
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                                    return;
                                },
                            });
                        }
                        alert_success("Hủy thành công");
                        Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                        //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                    },
                    function () {
                        //cancel
                    }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
            }
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu cần phát hành")
            return;
        }

    });


    function PhatHanhTrucTiep() {
        var PhatHanhID = $("#PhatHanhID").val();

        var NoiDungPhatHanh = $("#NoiDungPhatHanh").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        //if (NoiDungPhatHanh.length == 0) {
        //    alert_info("Bạn chưa nhập nội dung phát hành");
        //    return;
        //}
        var EmailNhanThongBao = $("#EmailNhanThongBao").val();

        //////if (EmailNhanThongBao == "") {
        //////    alert_info("Email không được để trống")
        //////    return;
        //////}

        var ArrayTenDonVi = comboThanhPhanDonViKhac.getSelectedNames();
        var Email = "";
        if (ArrayTenDonVi) {
            var dataTenDonVi = DataThanhPhanDonViKhac.filter(x => ArrayTenDonVi.join(',').indexOf(x.TenDonVi) !== -1);
            if (dataTenDonVi.length > 0) {
                for (var i = 0; i < dataTenDonVi.length; i++) {
                    Email += dataTenDonVi[i].Email + ","
                }
            }
        }
        var fileUpload = $("#fileSelectPhatHanh").get(0);
        var TenFile = $("#TenFilePhatHanh").val();
        var FileID = $("#FileIDPhatHanh").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDPhatHanh").val() == "") {
            alert_warning("Vui lòng đính kèm file");
            return;
        }
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới


        }
        if (files.length > 0 && (FileID != "" || FileID == ""))// đính kèm file mới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                contentType: false,
                processData: false,
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        TenFile = obj.TenFile;
                        FileID = obj.FileID;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    return;
                },
            });
        }

        var EmailDonViCaNhan = "";
        if (Email != "") {
            EmailDonViCaNhan = Email.slice(0, -1).split(",").join(";")
        }
        debugger
        var dataPhatHanh =
        {
            "obj": {
                "PhatHanhID": PhatHanhID,
                "ThoiGianTu": TuNgay,
                "ThoiGianDen": DenNgay,
                "NoiDung": NoiDungPhatHanh,
                "LichHopPhatHanhID": $("#LichHopPhatHanhID").val(),
                "LoaiLichHopPhatHanhTuan": $("#LoaiLichHopPhatHanhTuan").val(),
                "TenFile": TenFile,
                "FileID": FileID,
                "EmailNhanThongBao": EmailNhanThongBao.split(",").join(";"),
                "EmailDonViCaNhan": EmailDonViCaNhan,
                "IsDelete": false
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_PhatHanhTrucTiep",
            data: JSON.stringify(dataPhatHanh),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d != "0") {
                    var data = JSON.parse(reponse.d);
                    if (data && data[0].IsSuccess == 1) {
                        alert_success("Phát hành thành công");
                        //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                        Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                        this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                        this._customAppointmentWindow.ejDialog("close");
                    }
                    else {
                        alert_error("Phát hành thất bại");
                    }
                }
                else if (reponse.d == "0") {
                    alert_success("Phát hành thành công");
                    //LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                    this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                    this._customAppointmentWindow.ejDialog("close");
                    setTimeout(function () {
                        alert_error("Xảy ra lỗi gửi email")
                        return;
                    }, 3000);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
        LoadSchedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
    }

    $("#btnLuuPhatHanh").click(function () {
        var PhatHanhID = $("#PhatHanhID").val();

        var NoiDungPhatHanh = $("#NoiDungPhatHanh").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        //if (NoiDungPhatHanh.length == 0) {
        //    alert_info("Bạn chưa nhập nội dung phát hành");
        //    return;
        //}

        var EmailNhanThongBao = $("#EmailNhanThongBao").val();

        //////if (EmailNhanThongBao == "") {
        //////    alert_info("Email không được để trống")
        //////    return;
        //////}

        var ArrayTenDonVi = comboThanhPhanDonViKhac.getSelectedNames();
        var Email = "";
        if (ArrayTenDonVi) {
            var dataTenDonVi = DataThanhPhanDonViKhac.filter(x => ArrayTenDonVi.join(',').indexOf(x.TenDonVi) !== -1);
            if (dataTenDonVi.length > 0) {
                for (var i = 0; i < dataTenDonVi.length; i++) {
                    Email += dataTenDonVi[i].Email + ","
                }
            }
        }
        var fileUpload = $("#fileSelectPhatHanh").get(0);
        var TenFile = $("#TenFilePhatHanh").val();
        var FileID = $("#FileIDPhatHanh").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDPhatHanh").val() == "") {
            alert_warning("Vui lòng đính kèm file");
            return;
        }
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới


        }

        if (files.length > 0 && (FileID != "" || FileID == ""))// đính kèm file mới
        {
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
                data: data,
                contentType: false,
                processData: false,
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        TenFile = obj.TenFile;
                        FileID = obj.FileID;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    return;
                },
            });
        }
        var EmailDonViCaNhan = "";
        if (Email != "") {
            EmailDonViCaNhan = Email.slice(0, -1).split(",").join(";")
        }

        var dataPhatHanh =
        {
            "obj": {
                "PhatHanhID": PhatHanhID,
                "ThoiGianTu": TuNgay,
                "ThoiGianDen": DenNgay,
                "NoiDung": NoiDungPhatHanh,
                "LichHopPhatHanhID": $("#LichHopPhatHanhID").val(),
                "TenFile": TenFile,
                "FileID": FileID,
                "EmailNhanThongBao": EmailNhanThongBao.split(",").join(";"),
                "EmailDonViCaNhan": EmailDonViCaNhan,
                "IsDelete": false
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_PhatHanh_InsUpDel",
            data: JSON.stringify(dataPhatHanh),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    $("#PhatHanhID").val(dataID[0].PhatHanhID);
                    alert_success("Lưu thành công");
                    $("#btnPhatHanh").show();
                    $("#fileSelectPhatHanh").val(null);
                    $("#divIDTableFileLichHopPhatHanh").show();
                    var dataFile =
                        [{
                            "TenFile": TenFile,
                            "FileID": FileID,
                        }]
                    $("#IDTableFileLichHopPhatHanh").bootstrapTable('refreshOptions', { data: dataFile });

                }
                else {
                    alert_error("Xảy ra lỗi");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    });

    $("#btnLuuBieuQuyet").click(function () {
        SaveBieuQuyet($("#BieuQuyetID").val(), $("#LichHopID").val(), $("#TieuDe").val(), $("#NoiDungBieuQuyet").val(), false);
        $("#BieuQuyetID").val("0");
        $("#TieuDe").val("");
        $("#NoiDungBieuQuyet").val("");
    });

    $("#btnLamMoiBieuQuyet").click(function () {
        $("#BieuQuyetID").val("0");
        $("#TieuDe").val("");
        $("#NoiDungBieuQuyet").val("");
    });



    $("#btnCheckAll").click(function () {

        if (!IsCheckAll) {
            comboThanhPhanDonViKhac.clearSelection();
            IsCheckAll = true;
        }
        else {
            comboThanhPhanDonViKhac.setSelection(DataThanhPhanDonViKhac.map(x => x.DonViID));
            IsCheckAll = false;
        }
    });

    $("#btnChonDonViKhac").click(function () {
        setTagInputEmailDonViKhac();
        this._customAppointmentWindow = $("#customWindowAddDonViKhac");
        this._customAppointmentWindow.ejDialog("close");

    });

    function setTagInputEmailDonViKhac() {
        $("#EmailDonViKhac").tagsinput('removeAll');
        var ThanhPhanDonViKhac = comboThanhPhanDonViKhac.getSelectedNames();
        if (!ThanhPhanDonViKhac) {
            alert_warning("Bạn không có dữ liệu để chọn")
            return;
        }

        var dataTenDonVi = DataThanhPhanDonViKhac.filter(x => ThanhPhanDonViKhac.join(',').indexOf(x.TenDonVi) !== -1);
        if (dataTenDonVi.length > 0) {
            var TenDonVi = "";
            for (var i = 0; i < dataTenDonVi.length; i++) {
                TenDonVi += dataTenDonVi[i].TenDonVi + ","
            }
            $('#EmailDonViKhac').tagsinput('add', TenDonVi);
        }
    }
    // Event Back


    $("#btnTroVeDonViKhac").click(function () {
        this._customAppointmentWindow = $("#customWindowAddDonViKhac");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeGuiEmailThanhPhanNgoaiCoQuan").click(function () {
        this._customAppointmentWindow = $("#customWindowGuiEmailThanhPhanNgoaiCoQuan");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnDongYCanhBaoTrungLichHop").click(function () {
        this._customAppointmentWindow = $("#customWindowCanhBaoTrungLichHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeCanhBaoTrungLichHop").click(function () {
        comboChuTriID.clearSelection();
        this._customAppointmentWindow = $("#customWindowCanhBaoTrungLichHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeTimKiemVanBanDen").click(function () {
        this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
        this._customAppointmentWindow.ejDialog("close");
    })
    $("#btnTroVeTimKiemVanBanDi").click(function () {
        this._customAppointmentWindow = $("#customWindowVanBanLienQuan");
        this._customAppointmentWindow.ejDialog("close");
    })




    $("#btnTroVeLichHop").click(function () {
        this._customAppointmentWindow = $("#customWindowInLichHop");
        this._customAppointmentWindow.ejDialog("close");
    })
    $("#btnTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindow");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVePhatHanhMulti").click(function () {
        this._customAppointmentWindow = $("#customWindowDanhSachSchedulePhatHanh");
        this._customAppointmentWindow.ejDialog("close");
    })


    $("#btnTroVeBieuQuyet").click(function () {
        this._customAppointmentWindow = $("#customWindowThemBieuQuyet");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVePhatHanh").click(function () {
        this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVePhatHanhXemLichHopPhatHanh").click(function () {
        this._customAppointmentWindow = $("#customWindowXemLichHopPhatHanh");
        this._customAppointmentWindow.ejDialog("close");
    })



    $("#btnXemLichHopTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindowDetail");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnThaoLuanTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindowGuiThaoLuan");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnGiayMoiHopTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindowGiayMoiHop");
        this._customAppointmentWindow.ejDialog("close");
    })
    $("#btnSuaLichHopTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindow");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeChuongTrinhHop").click(function () {
        this._customAppointmentWindow = $("#customWindowThemChuongTrinhHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    function saveUploadFile(TaiLieuCuocHopID, TenTaiLieu, DuocCongKhai, TenFile, FileID, IsDelete, VanBanLienQuan) {
        var data =
        {
            "obj": {
                "TaiLieuCuocHopID": TaiLieuCuocHopID,
                "TenTaiLieu": TenTaiLieu,
                "DuocCongKhai": DuocCongKhai,
                "TenFile": TenFile,
                "FileID": FileID,
                "VanBanLienQuan": VanBanLienQuan,
                "IsDelete": IsDelete
            },
            "LichHopID": $("#LichHopID").val()
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                $("#TaiLieuCuocHopID").val("0");
                $("#TenTaiLieu").val("");
                $("#fileSelect").val(null);
                $("#DuocCongKhai").prop('checked', true);
                $("#TenFile").val("");
                $("#FileID").val("");
                $("#TagVanBanLienQuan").tagsinput('removeAll');
                $table.bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }




    //$("#btnShowModalTable").removeAttr("class")
    //document.getElementById('btnShowModalTable').className = '';
    var $table = $('#IDTableDanhSachTaiLieu')
    var $remove = $('#remove')
    var selections = []

    function ChucNang(value, row, index) {
        if (row.TinhTrangID == "1")
            return [
                '<div>',
                '<button type="button" class="Move btn btn-default btn-xs">',
                '<i class=" fa fa-share"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '&nbsp&nbsp&nbsp',
                '<button type="button" class="Edit btn btn-info btn-xs">',
                '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '&nbsp&nbsp&nbsp',
                '<button type="button"class=" Remove btn btn-danger btn-xs">',
                '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '</div>'
            ].join('');
        else {
            return [
                '<div>',
                '&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp',
                '<button type="button" class=" Edit btn btn-info btn-xs">',
                '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '&nbsp&nbsp&nbsp',
                '<button type="button"class=" Remove btn btn-danger btn-xs">',
                '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '</div>'
            ].join('');

        }



    };

    function formatterTinhTrang(value, row, index) {
        if (value == "Đang tạo")
            return [
                '<div>',
                '<span class="label label-warning" style="background-color: green; border-color: green;font-size:12px";>Đang tạo</span>',
                '</div>'
            ].join('');
        if (value == "Chờ duyệt") {
            return [
                '<div>',
                '<span class="label label-danger" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Chờ duyệt</span>',
                '</div>'
            ].join('');
        }

        if (value == "Hủy lịch họp") {
            return [
                '<div>',
                '<span class="label" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;background-color: dimgrey;">Hủy lịch họp</span>',
                '</div>'
            ].join('');
        }
        if (value == "Đã phát hành") {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Đã phát hành</span>',
                '</div>'
            ].join('');
        }
        if (value == "Đã duyệt") {
            return [
                '<div>',
                '<span class="label label-primary" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Đã duyệt</span>',
                '</div>'
            ].join('');
        }
    };

    function formatterTinhTrangTaiLieuHop(value, row, index) {
        if (value == false || value == null || value == "False")
            return [
                '<div>',
                '<span class="label label-warning" style="background-color: green; border-color: green;font-size:12px";>Không công khai</span>',
                '</div>'
            ].join('');

        if (value == true || value == "True") {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Công khai</span>',
                '</div>'
            ].join('');
        }
    };

    function ChucNangChinhSuaFileTaiLieuHop(value, row, index) {
        return [
            '<div>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class=" DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };

    function DownloadQR(value, row, index) {
        return [
            '<div>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class="DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-qrcode"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };

    function ChucNangChinhSuaFile(value, row, index) {
        return [
            '<div>',
            '<button type="button"  class=" Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class=" Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class=" DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };
    function ChucNangChinhSuaFileGiayMoiHop(value, row, index) {
        return [
            //'<div>',
            //'<button type="button"  class=" Edit btn btn-info btn-xs">',
            //'<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            //'</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class=" Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class=" DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };

    function ChucNangChinhSuaFileLichHopPhatHanh(value, row, index) {
        return [
            '<div>',
            '<button type="button"  class="Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class=" DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };


    function STT(value, row, index) {
        return [
            '<div>',
            '  <label>',
            '<span style="font-family: Helvetica,Arial,sans-serif;font-size:15px";>' + (index + 1) + '</span>',
            '</label>',
            '</div>'
        ].join('');

    };
    function stateFormatter(value, row, index) {
        if ($("#TenNhomThanhPhan").val() != "") {
            for (var i = 0; i < $("#TenNhomThanhPhan").val().split(',').length; i++) {
                if (row.TenNhom == $("#TenNhomThanhPhan").val().split(',')[i]) {
                    return {
                        checked: true
                    };
                }
            }
        }
        return false;
    }

    function formatterChucNang(value, row, index) {
        return [
            '<div>',
            '<button type="button"  class="Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class="Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class="View btn btn-default btn-xs">',
            '<i class=" fa fa-eye"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };


    window.operateEventsNhom = {
        'click .Edit': function (e, value, row, index) {
            comboThanhPhanTaoLuong.clearSelection();
            $("#NhomID").val(row.NhomID);
            $("#TenNhom").val(row.TenNhom);
            var dataTable =
            {
                "obj": {
                    "NhomID": row.NhomID,
                    "TenTable": "DM_NHOM_THANHPHAN"
                }
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                data: JSON.stringify(dataTable),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var NhomThanhPhan = JSON.parse(reponse.d);
                        if (NhomThanhPhan.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < NhomThanhPhan.length; i++) {
                                if (NhomThanhPhan[i].TenPhongBan == "")  // đang chỉ đích danh {
                                    ArrayValue.push(NhomThanhPhan[i].UserID);
                                else {// đang chọn phòng ban
                                    ArrayValue.push(NhomThanhPhan[i].PhongBanID);
                                }
                            }
                            comboThanhPhanTaoLuong.setSelectionParent(ArrayValue.filter((v, i, a) => a.indexOf(v) === i));
                        }
                        else {
                            comboThanhPhanTaoLuong.clearSelection();
                        }
                    }
                    else {
                        alert_error("Xảy ra lỗi");
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4> Bạn có chắc chắn muốn xóa không ? </h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "NhomID": row.NhomID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_NHOM"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) {
                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                $("#NhomID").val("0");
                                $("#TenNhom").val("");
                                LoadDataTable(null, "DM_NHOM", "IDTableNhom");
                            }
                            else {
                                alert_error("Xảy ra lỗi");
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                        },
                    });
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');



        },
        'click .View': function (e, value, row, index) {
            this._customAppointmentWindow = $("#customWindowViewDetailNhom");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "90%",
                showOnInit: false,
                enableModal: true,
                title: "Thông tin nhóm " + row.TenNhom + "",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#customWindowViewDetailNhom").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");

            var dataTable =
            {
                "obj": {
                    "NhomID": row.NhomID,
                    "TenTable": "DM_NHOM_THANHPHAN_VIEW"
                }
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                data: JSON.stringify(dataTable),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        $("#IDTableViewDetailNhom").bootstrapTable('refreshOptions', { data: JSON.parse(reponse.d) });
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });
        }
    }

    function operateFormatter(value, row, index) {
        return [
            '<a class="like" href="javascript:void(0)" title="Like">',
            '<i class="fa fa-heart"></i>',
            '</a>  ',
            '<a class="remove" href="javascript:void(0)" title="Remove">',
            '<i class="fa fa-trash"></i>',
            '</a>',
        ].join('')
    }
    window.operateEventsFileLichHopPhatHanh = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắc chắn muốn xóa file không ?</h4>",
                function () {
                    $("#FileIDPhatHanh").val("");
                    $("#TenFilePhatHanh").val("");
                    $("#IDTableFileLichHopPhatHanh").bootstrapTable('refreshOptions', { data: "" });
                    $("#divIDTableFileLichHopPhatHanh").hide();
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        },
        'click .Download': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }



    window.EventsDownloadQR = {
        'click .DownloadFile': function (e, value, row, index) {
            var data =
            {
                "PhongHopID": row.Ma
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GenerateQR",
                data: JSON.stringify(data),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        $('#linkQRCode').get(0).click();
                    }
                    else {
                        alert_error("Xảy ra lỗi")
                    }


                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });

        },
    }

    window.operateEventsSchedulePhatHanh = {
        'click .Edit': function (e, value, row, index) {
            SuaLichHop(row.LichHopID);
            Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");

        },
        'click .Remove': function (e, value, row, index) {
            XoaLichHop(row.LichHopID);
            Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
        },
        'click .Move': function (e, value, row, index) {
            ChuyenDuyet(row.LichHopID);
            Load_DanhSach_Schedule("QuanLy", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
        }
    }

    window.operateEvents = {
        'click .Edit': function (e, value, row, index) {
            $("#TaiLieuCuocHopID").val(row.TaiLieuCuocHopID);
            $("#TenTaiLieu").val(row.TenTaiLieu);
            $("#TaiLieu_CoQuanChuTri").val(row.TaiLieu_CoQuanChuTri);
            $("#fileSelect").val("");
            $("#TenFile").val(row.TenFile);
            $("#FileID").val(row.FileID);
            $('#TagVanBanLienQuan').tagsinput('removeAll');
            $('#TagVanBanLienQuan').tagsinput('add', row.VanBanLienQuan);
            if (row.DuocCongKhai) {
                $("#DuocCongKhai").prop('checked', true);
            }
            else {
                $("#DuocCongKhai").prop('checked', false);
            }

            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                        if (DataDanhSachTaiLieu[i].FileID == row.FileID) {
                            DataDanhSachTaiLieu[i].IsDelete = true;
                        }
                    }
                    var GetDataAfterUpdateIsDelete = DataDanhSachTaiLieu.filter(x => x.IsDelete == false)
                    $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: GetDataAfterUpdateIsDelete });
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');


        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsShowThemFileDinhkem = {
        'click .Edit': function (e, value, row, index) {
            $("#TaiLieuCuocHopIDShowThemFileDinhkem").val(row.TaiLieuCuocHopID);
            $("#TaiLieu_CoQuanChuTriShowThemFileDinhkem").val(row.TaiLieu_CoQuanChuTri);
            $("#TenTaiLieuShowThemFileDinhkem").val(row.TenTaiLieu);
            $("#fileSelectShowThemFileDinhkem").val("");
            $("#TenFileShowThemFileDinhkem").val(row.TenFile);
            $("#FileIDShowThemFileDinhkem").val(row.FileID);
            $('#TagVanBanLienQuanShowThemFileDinhKem').tagsinput('removeAll');
            $('#TagVanBanLienQuanShowThemFileDinhKem').tagsinput('add', row.VanBanLienQuan);
            if (row.DuocCongKhai) {
                $("#DuocCongKhaiShowThemFileDinhkem").prop('checked', true);
            }
            else {
                $("#DuocCongKhaiShowThemFileDinhkem").prop('checked', false);
            }

            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    var data =
                    {
                        "obj": {
                            "TaiLieuCuocHopID": row.TaiLieuCuocHopID,
                            "IsDelete": true,
                            "LichHopID": $("#LichHopID").val()
                        },
                        "LichHopID": $("#LichHopID").val(),
                        "DoiTuongXemID": 1
                    };

                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
                        data: JSON.stringify(data),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) {
                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            alert_success("Xóa thành công");
                            var obj = reponse.d;
                            $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
                            LoadSchedule("QuanLy", TuNgay, DenNgay, Thang, Nam, Loai, "");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                        },
                    });
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;

        }
    }

    window.operateEventsFile = {
        'click .Edit': function (e, value, row, index) {

        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }


    window.operateEventsDanhSachBieuQuyet = {
        'click .Edit': function (e, value, row, index) {
            $("#BieuQuyetID").val(row.BieuQuyetID);
            $("#TieuDe").val(row.TieuDe);
            $("#NoiDungBieuQuyet").val(row.NoiDung);
        },
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    SaveBieuQuyet(row.BieuQuyetID, "", "", "", "", "", true);
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        }
    }

    window.operateEventsThaoLuan = {
        'click .Edit': function (e, value, row, index) {
            $("#ThaoLuanID").val(row.ThaoLuanID);
            $("#FileIDThaoLuan").val(row.FileID);
            $("#TenFileThaoLuan").val(row.TenFile);
            $("#NoiDung").val(row.NoiDung);
            comboLinhVucID.setSelection([row.LinhVucID]);
        },
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    SaveThaoLuan(row.ThaoLuanID, $("#LichHopID").val(), "", "", "", "", true);
                    comboLinhVucID.clearSelection();
                    $("#ThaoLuanID").val("0");
                    $("#TieuDe").val("");
                    $("#NoiDung").val("");
                    $("#fileSelect").val(null);
                    $("#FileIDThaoLuan").val("");
                    $("#TenFileThaoLuan").val("");
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        },

        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsGiayMoiHop = {
        //'click .Edit': function (e, value, row, index) {
        //    $("#GiayMoiHopID").val(row.GiayMoiHopID);
        //    $("#FileIDGiayMoiHop").val(row.FileID);
        //    $("#TenFileGiayMoiHop").val(row.TenFile);
        //},
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    SaveGiayMoiHop(row.GiayMoiHopID, $("#LichHopID").val(), "", "", true);
                    $("#GiayMoiHopID").val("0");
                    $("#fileSelect").val(null);
                    $("#FileIDGiayMoiHop").val("");
                    $("#TenFileGiayMoiHop").val("");
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        },

        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }
    function DeleleThanhPhanHopDouble() {

        //Delete trùng với thư ký
        let thuKyListSelect = comboThuKyID.getSelectedIds();
        let thanhPhanHopList = comboThanhPhanID.getSelectedIds();
        if (thanhPhanHopList != null && thuKyListSelect != null) {
            for (let i = 0; i < thanhPhanHopList.length; i++) {
                let dataIndex = thanhPhanHopList[i];
                let trung = thuKyListSelect.filter(x=>x == dataIndex);

                let indexNum = thanhPhanHopList.indexOf(parseInt(trung[0]));
                let indexStr = thanhPhanHopList.indexOf(trung[0]);
                if (indexNum > -1) {
                    thanhPhanHopList.splice(indexNum, 1)
                }
                else if (indexStr > -1) {
                    thanhPhanHopList.splice(indexStr, 1)
                }
            }
            comboThanhPhanID.clearSelection();
            comboThanhPhanID.setSelection(thanhPhanHopList);

        }

        //Delete trùng với chủ trì
        let chuTriListSelect = comboChuTriID.getSelectedIds();
        thanhPhanHopList = comboThanhPhanID.getSelectedIds();
        if (thanhPhanHopList != null && chuTriListSelect != null) {
            for (let i = 0; i < thanhPhanHopList.length; i++) {
                let dataIndex = thanhPhanHopList[i];
                let trung = chuTriListSelect.filter(x=>x == dataIndex);

                let indexNum = thanhPhanHopList.indexOf(parseInt(trung[0]));
                let indexStr = thanhPhanHopList.indexOf(trung[0]);
                if (indexNum > -1) {
                    thanhPhanHopList.splice(indexNum, 1)
                }
                else if (indexStr > -1) {
                    thanhPhanHopList.splice(indexStr, 1)
                }
            }
            comboThanhPhanID.clearSelection();
            comboThanhPhanID.setSelection(thanhPhanHopList);

        }
        ReloadThanhPhanHop();

    }

    function ReloadThanhPhanHop() {
        var ThanhPhanID = comboThanhPhanID.getSelectedIds();
        if (!ThanhPhanID) {
            $("#HienThiInThanhPhan").tagsinput('removeAll');
            return;
        }
        var selectedName = comboThanhPhanID.getSelectedNames();
        if (!selectedName) {
            $("#HienThiInThanhPhan").tagsinput('removeAll');
            return;
        }
        $("#HienThiInThanhPhan").tagsinput('removeAll');
        var TenDongChi = "";
        for (var i = 0; i < comboThanhPhanID.getSelectedNames().length; i++) {
            var item = DataThanhPhanChuanBi.filter(x => x.FullName == comboThanhPhanID.getSelectedNames()[i]);
            if (item.length > 0) {
                if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat != "" && item[0].TenVietTat != null)) {
                    TenDongChi += item[0].TenGoiTrongCoQuan + " - " + item[0].TenVietTat + ","
                }
                if (item[0].TenGoiTrongCoQuan != null && (item[0].TenVietTat == "" || item[0].TenVietTat == null)) {
                    TenDongChi += item[0].TenGoiTrongCoQuan + ","
                }
                if (item[0].TenGoiTrongCoQuan == null || item[0].TenGoiTrongCoQuan == "") {
                    TenDongChi += item[0].FullName + ","
                }
            }
            else {
                item = DataThanhPhanChuanBi.filter(x => x.Ten == comboThanhPhanID.getSelectedNames()[i]);
                if (item.length > 0) {
                    TenDongChi += item[0].TenVietTatDonVi + ","
                }
                else {
                    TenDongChi += comboThanhPhanID.getSelectedNames()[i] + ","
                }

            }

        }
        if ($("#TenNhomThanhPhan").val() != "") {
            $('#HienThiInThanhPhan').tagsinput('add', $("#TenNhomThanhPhan").val() + "," + TenDongChi);
        }
        else {
            $('#HienThiInThanhPhan').tagsinput('add', TenDongChi);
        }
        if (ArrayValueFromTaoLuong != undefined) {
            for (var i = 0; i < ArrayValueFromTaoLuong.length; i++) {
                var itemRemove = DataThanhPhanChuanBi.filter(x => x.UserID == ArrayValueFromTaoLuong[i]);
                if (itemRemove.length > 0) {
                    if (itemRemove[0].TenGoiTrongCoQuan != null && itemRemove[0].TenVietTat != "") {
                        $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan + " - " + itemRemove[0].TenVietTat);
                    }
                    if (itemRemove[0].itemRemove != null && itemRemove[0].TenVietTat == "") {
                        $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].TenGoiTrongCoQuan);
                    }
                    if (itemRemove[0].TenGoiTrongCoQuan == null || itemRemove[0].TenGoiTrongCoQuan == "") {
                        $('#HienThiInThanhPhan').tagsinput('remove', itemRemove[0].FullName);
                    }
                }

            }
        }
        if ($('#IsClickViewOrEditLichHop').val() == "1") {
            return;
        }
        //var Array = TextChange.split(',');
        //$("#HienThiInThanhPhan").val(Array.unique().join(","));
    };

    $("#btnGoogleMeetDel").click(function () {
        $('#GoogleMeet').val('');
    })

</script>


<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/plugins/mustache.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/controllers/quanLyController.js?version=1") %>" type="text/javascript"></script>



<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/GoogleMeet/googleMeetController.js?v=1") %>" type="text/javascript"></script>


<script async defer src="https://apis.google.com/js/api.js"
    onload="this.onload=function(){};handleClientLoad()"
    onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>

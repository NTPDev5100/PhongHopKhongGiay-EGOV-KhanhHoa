<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PageThanhPhanThamDu.ascx.cs" Inherits="PhongHopKhongGiay.Schedule.PageThanhPhanThamDu" %>


<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/bootstrap.min.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/jquery.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/bootstrap.min.js") %>" type="text/javascript"></script>--%>


<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/bootstrap.min.css")%>' />--%>
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
        <div style='float: left; width: 50px;'>
            {{:~format(StartTime)}}
        </div>
        <div>
            <div style="margin-left: 11px; margin-top: 3px">{{:Subject}}</div>
            <%--            <div style="cursor: pointer"> <i class="fa fa-file-code-o pull-left "></i>tài liệu họp</div>--%>
        </div>
        <i class="fa fa-paperclip fa-lg" id="btnPopupThemFile" onclick="ShowThemFile({{:Id}})" style="cursor: pointer; margin-left: 11px; margin-top: 3px"></i>
        <a id="btnPopupShowFile" onclick="ShowFile({{:Id}},{{:Categorize}})" style="color: white; cursor: pointer"
            class="">&nbsp{{:CountFile}}</a>
    </div>
</script>


<style type="text/css">
    #txtSearch_wrapper {
        width: 282px !important;
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
    .note-editable {
        padding: 20px !important;
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

<script type="text/javascript">

    $(function () {

        // Proxy created on the fly
        var job = $.connection.myHub;

        // Declare a function on the job hub so the server can invoke it
        job.client.displayStatus = function () {
            //TriggerOnTableSignal(false);
            TriggerOnTableBieuQuyetSignal(false);
            //TriggerOnTableTinhTrangCuocHopSignal(false);
        };

        // Start the connection
        $.connection.hub.start({ transport: 'longPolling' });
        TriggerOnTableBieuQuyetSignal(true);
        //TriggerOnTableTinhTrangCuocHopSignal(true);
    });
    function TriggerOnTableTinhTrangCuocHopSignal(IsFirstTime) {
        if (IsFirstTime == true) {
            $.ajax({
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableTinhTrangCuocHopSignal",
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
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableTinhTrangCuocHopSignal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.d.length > 0) {
                        if ($("#LichHopID").val() == "0") {
                            return;
                        }
                        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                }
            });
        }
    }

    function TriggerOnTableBieuQuyetSignal(IsFirstTime) {
        if (IsFirstTime == true) {
            $.ajax({
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableBieuQuyetSignal",
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
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GetTriggerOnTableBieuQuyetSignal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.d.length > 0) {
                        if ($("#LichHopID").val() == "0") {
                            return;
                        }
                        LoadBieuQuyetByLichHopID($("#LichHopID").val());
                    }
                }
            });
        }
    }

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
                        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                }
            });
        }

    }

</script>

<div class="container">
    <ul class="nav nav-tabs">
        <li id="TabLichCaNhan" class="active"><a data-toggle="tab" href="#home">LỊCH CÁ NHÂN</a></li>
        <li id="TabLichCoQuan"><a data-toggle="tab" href="#menu1">LỊCH CƠ QUAN </a></li>
    </ul>
</div>

<div class="content-container-fluid">
    <div class="row">
        <div class="cols-sample-area">
            <div class="row" id="divXemLichHopCuaChuTri" style="display: none">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <div class="pull-right" style="margin-top: 7px; font-size: large">Xem lịch họp của chủ trì</div>
                </div>
                <div class="col-md-2">
                    <input type="text" id="ChonChuTriID" style="width: 100%" placeholder="Chọn chủ trì" autocomplete="off" />
                </div>
                <div class="col-md-5">
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
                <button type="button" class="btn btn-success" id="btnPopUpDanhSachScheduleXuatExcel" style="display: none"><i class="fa fa-file-excel-o"></i></button>
                <button type="button" disabled class="btn btn-info" id="btnPrint"><i class="fa fa-print"></i></button>
            </div>

            <div id="TinhTrangColor">
                <div id="TinhTrangCaNhan">
                    <button type="button" class="btn btn-default" style="color: #fff; background-color: dimgrey; border-color: black;">
                        <i class=""></i>
                    </button>
                    &nbsp Báo vắng&nbsp
                <button type="button" class="btn btn-danger"><i class=""></i></button>
                    &nbsp Trùng lịch&nbsp
                                    <button type="button" class="btn btn-warning"><i class=""></i></button>
                    &nbsp Hủy họp&nbsp
                                    <button type="button" class="btn btn-success" style="background-color: green; border-color: green;"><i class=""></i></button>
                    &nbsp Đang họp&nbsp
                             <button type="button" class="btn btn-primary"><i class=""></i></button>
                    &nbsp Đã họp&nbsp
                                    <button type="button" class="btn btn-info">
                                        <i class=""></i>
                                    </button>
                    &nbsp Chưa họp&nbsp
                </div>
                <div id="TinhTrangCoQuan" style="display: none">
                    <button type="button" class="btn btn-warning"><i class=""></i></button>
                    &nbsp Hủy họp&nbsp
                                    <button type="button" class="btn btn-success" style="background-color: green; border-color: green;"><i class=""></i></button>
                    &nbsp Đang họp&nbsp
                             <button type="button" class="btn btn-primary"><i class=""></i></button>
                    &nbsp Đã họp&nbsp
                                    <button type="button" class="btn btn-info">
                                        <i class=""></i>
                                    </button>
                    &nbsp Chưa họp&nbsp
                </div>


            </div>
            <!--Schedule control div-->
            <div style="float: left" id="Schedule1"></div>
        </div>
    </div>
</div>

<div id="customPopup" style="padding: 1em; display: none;">
    <div id="appointmenPopup" class="appointmenPopup">
        <table>
            <tr id="trShowFile" style="display: none">
                <td>
                    <input type="hidden" id="IsClickTabCaNhan" value="1">
                    <input type="hidden" id="IsClickShowFile" value="0">
                    <input type="hidden" id="IsClickShowThemFile" value="0">
                </td>

            </tr>
            <tr id="trChuyenDuyet" style="display: none">
                <td>
                    <button id="btnChuyenDuyet" style="font-size: large; border-color: white" class="btn btn-default"><i class="fa fa-share pull-left "></i>&nbsp Chuyển duyệt</button>
                </td>

            </tr>
            <tr id="trSuaLichHop" style="display: none">
                <td>
                    <button id="btnSuaLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-pencil-square-o pull-left "></i>&nbsp Sửa lịch họp</button>
                </td>

            </tr>
            <tr id="trXoaLichHop" style="display: none">
                <td>

                    <button id="btnXoaLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-trash-o pull-left "></i>&nbsp Xóa lịch họp
                    </button>
                </td>

            </tr>


            <tr id="trThemChuongTrinhHop" style="display: none">
                <td>
                    <button id="btnThemChuongTrinhHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-sticky-note pull-left "></i>&nbsp Thêm ghi chú
                    </button>
                </td>

            </tr>
            <tr id="trThemBieuQuyet" style="display: none">
                <td>
                    <button id="btnThemBieuQuyet" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-hand-paper-o pull-left "></i>&nbsp Thêm biểu quyết
                    </button>
                </td>

            </tr>
            <tr id="trXemLichHop" style="display: none">
                <td>
                    <button id="btnXemLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-eye pull-left "></i>&nbsp Xem lịch họp
                    </button>
                </td>

            </tr>
            <tr id="trGuiThaoLuan" style="display: none">
                <td>
                    <button id="btnGuiThaoLuan" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-question-circle pull-left "></i>&nbsp Gửi thảo luận
                    </button>
                </td>
            </tr>
            <tr id="trHuyLichHop" style="display: none">
                <td>
                    <button id="btnHuyLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-remove  pull-left "></i>&nbsp Hủy lịch họp
                    </button>
                </td>
            </tr>
            <tr id="trPheDuyetLichHop" style="display: none">
                <td>
                    <button id="btnPheDuyetLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa  fa-check  pull-left "></i>&nbsp Phê duyệt lịch họp
                    </button>
                </td>
            </tr>

            <tr id="trKetLuanHop" style="display: none">
                <td>
                    <button id="btnKetLuanHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa  fa-file pull-left "></i>&nbsp Tài liệu kết luận họp
                        <%--Kết luận họp--%>
                    </button>
                </td>
            </tr>

            <tr id="trXemThaoLuan" style="display: none">
                <td>
                    <button id="btnXemThaoLuan" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa  fa-question-circle  pull-left "></i>&nbsp Xem Thảo luận
                    </button>
                </td>
            </tr>

            <tr id="trVaoHop" style="display: none">
                <td>
                    <button id="btnVaoHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa  fa-calendar-check-o  pull-left "></i>&nbsp Vào họp
                    </button>
                </td>
            </tr>

            <tr id="trKetNoiHopTrucTuyen" style="display: none">
                <td>
                    <button id="btnKetNoiHopTrucTuyen" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-users pull-left "></i>&nbsp Kết nối họp trực tuyến
                    </button>
                </td>
            </tr>
            <tr id="trChapNhanHop" style="display: none">
                <td>
                    <button id="btnChapNhanHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-check pull-left "></i>&nbsp Chấp nhận họp
                    </button>
                </td>
            </tr>
            <tr id="trBaoVang" style="display: none">
                <td>
                    <button id="btnBaoVang" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-remove pull-left "></i>&nbsp Báo vắng
                    </button>
                </td>
            </tr>
            <tr id="trTrungLich" style="display: none">
                <td>
                    <button id="btnTrungLich" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-calendar-times-o pull-left "></i>&nbsp Trùng lịch
                    </button>
                </td>
            </tr>
            <tr id="trNoiDungGiaoViec" style="display: none">
                <td>
                    <button id="btnNoiDungGiaoViec" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa fa-user"></i>&nbsp Kết luận họp
                       <%-- Nội dung giao việc--%>
                    </button>
                </td>
            </tr>


        </table>
    </div>
</div>


<div id="customWindowChiTietGiaoViec" style="padding: 1em; display: none;">
    <div id="appointmentChiTietGiaoViec" class="appointmentWindow">
        <form id="customAppointmentChiTietGiaoViec">
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Chi tiết giao việc <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="summernoteNoiDungChiTietGiaoViec" name="Description" rows="5" cols="50" style="width: 100%; height: 30%; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuChiTietGiaoViec" class="btn btn-primary"><i class="fa fa-check-square"></i>&nbsp Lưu</button>
                    <button type="button" id='btnTroVeChiTietGiaoViec' class="btn btn-info"><i class="fa fa-arrow-circle-right"></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>

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
                        Cuộc họp
                    </div>
                    <div class="col-md-3">
                        <label id="lblTenCuocHop"></label>
                    </div>
                    <div class="col-md-2 e-textlabel">
                        Thời gian họp
                    </div>
                    <div class="col-md-4">
                        <label id="lblGioBatDau"></label>
                        -&nbsp<label id="lblGioKetThuc">
                        </label>
                        &nbsp<label id="lblNgayHop"></label>

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
                    <%--<div class="col-md-3">
                        <a id="urlChuongTrinhHop">Xem chi tiết ghi chú</a>
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
                                    <th data-field="TenChuongTrinh" data-sortable="true" data-align="left">
                                    Tên chương trình
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
                            data-height="200"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TaiLieu_CoQuanChuTri" data-sortable="true" data-align="left">Cơ quan chủ trì</th>
                                    <th data-field="TaiLieu_NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên Tệp</th>
                                    <%--<th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="left">Văn bản liên quan</th>--%>
                                    <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>

                </div>
                <div class="row">
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
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenLinhVuc" data-sortable="true" data-align="left">Tên Lĩnh vực</th>
                                    <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên file</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
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


<div id="customWindowDanhSachSchedulePhatHanh" style="padding: 1em; display: none;">
    <div id="appointmentWindowDanhSachSchedulePhatHanh" class="appointmentWindow">
        <form id="customAppointmentDanhSachSchedulePhatHanh">
            <br />
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2 pull-right">
                    <button type="button" id="btnTroVePhatHanhMulti" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-12">
                    <div style="margin-top: 11px">
                        <table id="IDTableDanhSachSchedulePhatHanh"
                            data-classes="table table-striped jambo_table bulk_action vertical-align"
                            data-toggle="table"
                            data-page-size="6"
                            data-mobile-responsive="true"
                            data-pagination="true"
                            data-show-footer="false"
                            data-height="400"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[10, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenCuocHop" data-sortable="true" data-align="left">Tên cuộc họp</th>
                                    <th data-field="ThoiGian" data-sortable="true" data-align="center">Thời gian</th>
                                    <th data-field="TenPhongHop" data-sortable="true" data-align="center">Địa điểm</th>
                                    <th data-field="TinhTrangID" data-formatter="formatterTinhTrang" data-sortable="true" data-align="center">Tình trạng</th>
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

<div id="customWindow" style="padding: 1em; display: none;">
    <div id="appointmentWindow" class="appointmentWindow">
        <form id="customAppointmentWindow">
            <table>
                <tbody>
                    <tr>
                        <td colspan="8"><legend>Thông tin cuộc họp</legend></td>
                    </tr>
                    <tr id="customSubject">
                        <td class="e-textlabel">Tên cuộc họp <span style="color: red">*</span>
                        </td>
                        <td colspan="6">
                            <input id="TenCuocHop" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                            <input type="hidden" id="LichHopID" value="0">
                            <input type="hidden" id="PhongBanID" value="0">
                            <input type="hidden" id="RoleUser" value="">
                            <input type="hidden" id="TinhTrangID" value="1">
                        </td>
                    </tr>
                    <tr id="customStartendtime">
                        <td class="e-textlabel">Thời gian họp<span style="color: red">*</span></td>
                        <td>
                            <div style="margin-left: -15px">
                                <div class="col-md-3">
                                    <select id="GioBatDau" class="form-control">
                                        <option value="">Giờ</option>
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
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <select id="PhutBatDau" class="form-control">
                                        <option value="">Phút</option>
                                        <option value="00">00</option>
                                        <option value="05">05</option>
                                        <option value="10">10</option>
                                        <option value="15">15</option>
                                        <option value="20">20</option>
                                        <option value="25">25</option>
                                        <option value="30">30</option>
                                        <option value="35">35</option>
                                        <option value="40">40</option>
                                        <option value="45">45</option>
                                        <option value="50">50</option>
                                        <option value="55">55</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <select id="GioKetThuc" class="form-control">
                                        <option value="">Giờ</option>
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
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <select id="PhutKetThuc" class="form-control">
                                        <option value="">Phút</option>
                                        <option value="00">00</option>
                                        <option value="05">05</option>
                                        <option value="10">10</option>
                                        <option value="15">15</option>
                                        <option value="20">20</option>
                                        <option value="25">25</option>
                                        <option value="30">30</option>
                                        <option value="35">35</option>
                                        <option value="40">40</option>
                                        <option value="45">45</option>
                                        <option value="50">50</option>
                                        <option value="55">55</option>
                                    </select>
                                </div>
                            </div>

                        </td>
                        <td class="e-textlabel" style="width: 13%">Ngày họp<span style="color: red">*</span>
                        </td>
                        <td style="width: 13%">
                            <div class="cols-sample-area" style="margin-left: 1px;">
                                <div class="control">
                                    <input id="NgayHop" type="text" />
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
                        <td class="e-textlabel">Chủ trì<span style="color: red">*</span>
                        </td>
                        <td>
                            <div style="margin-left: -15px">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                    <input type="checkbox" style="margin-top: -1px;" id="KhongHienThi" value="False">
                                    <label for="vehicle1" style="margin-top: 10px;">Không hiển thị</label>
                                </div>
                            </div>
                        </td>

                        <td class="e-textlabel">Thư ký

                        </td>
                        <td>
                            <input type="text" id="ThuKyID" placeholder="Chọn thư ký" autocomplete="off" />

                        </td>

                    </tr>
                    <tr>
                        <td class="e-textlabel">Chuẩn bị</td>
                        <td colspan="6">
                            <input type="text" id="ChuanBiID" placeholder="Chọn phòng/ cá nhân chuẩn bị" autocomplete="off" />
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Thành phần <span style="color: red">*</span>

                        </td>
                        <td colspan="6">
                            <input type="text" id="ThanhPhanID" placeholder="Chọn thành phần tham dự họp" autocomplete="off" />
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
                    <tr>
                        <td class="e-textlabel">Ghi chú</td>
                        <td colspan="6">
                            <textarea id="GhiChu" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
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
                        <td class="e-textlabel">Tên tài liệu <span style="color: red">*</span></td>
                        <td>
                            <input id="TenTaiLieu" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                            <input type="hidden" id="TaiLieuID" value="0">
                            <input type="hidden" id="TenFile" value="">
                            <input type="hidden" id="FileID" value="">
                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Văn bản liên quan</td>
                        <td>
                            <button type="button" id="btnShowVanBanLienQuan" class="btn btn-info">...</button>
                            <div id="demo" class="collapse">
                                <fieldset>
                                    <br />
                                    <div class="col-md-3">
                                        Mã văn bản
                                    </div>

                                    <div class="col-md-3">
                                        <input id="MaVanBan" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                                    </div>

                                    <div class="col-md-3">
                                        Tên văn bản

                                    </div>

                                    <div class="col-md-3">
                                        <input id="TenVanBan" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                                    </div>
                                    <br />
                                    <div class="row">

                                        <div class="col-md-5"></div>
                                        <div class="col-md-3">
                                            <button type="button" class="btn btn-success" style="margin-top: 11px">Tìm kiếm</button>
                                            <button type="button" class="btn btn-success" style="margin-top: 11px">Chọn</button>
                                        </div>

                                    </div>
                                    <div style="margin-top: 11px">
                                    </div>
                                </fieldset>


                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td class="e-textlabel">Tệp đính kèm</td>
                        <td>
                            <input type="file" id="fileSelect" accept=".xlsx, .xls, .csv" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
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
                            <div style="margin-top: 11px">
                                <table id="IDTableDanhSachTaiLieu"
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
                                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                            <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                            <th data-field="TenFile" data-sortable="true" data-align="left">Tên Tệp</th>
                                            <th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="left">Văn bản liên quan</th>
                                            <th data-formatter="ChucNangChinhSuaFile" data-events="operateEvents" data-align="center">Chức năng</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </td>
                    </tr>


                </tbody>
            </table>
            <br />
        </form>
        <div>
            <div class="col-md-3"></div>
            <button type="button" id="btnLuu" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>Lưu</button>
            <button type="button" id="btnChuyenDuyetCuocHop" class="btn btn-primary">
                Chuyển duyệt
            </button>
            <button type="button" id="btnTroVe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
        </div>
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
                                    <th data-field="TenCuocHop" data-sortable="true" data-align="left">Tên cuộc họp</th>
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

<div id="customWindowPhatHanhLichHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowPhatHanhLichHop" class="appointmentWindow">

        <form id="customAppointmentPhatHanhLichHop">
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-11 e-textlabel" style="font-size: large">
                    LỊCH LÀM VIỆC CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-7 e-textlabel" style="font-size: large">
                    (Từ ngày
                    <label id="lblTuNgay"></label>
                    đến ngày
                    <label id="lblDenNgay"></label>
                    )
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="NoiDungPhatHanh" name="Description" rows="10" cols="50" style="width: 100%; height: 50%; resize: vertical"></textarea>
                    <input type="hidden" id="PhatHanhID" value="0">
                    <input type="hidden" id="LichHopPhatHanhID" value="">
                    <input type="hidden" id="IsClickPhatHanhMutil" value="">
                    <input type="hidden" id="ListEmailThanhPhan" value="">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Lịch đã ký <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <input type="file" id="fileSelectPhatHanh" accept=".xlsx, .xls, .csv" />
                    <input type="hidden" id="TenFilePhatHanh" value="">
                    <input type="hidden" id="FileIDPhatHanh" value="">
                </div>
            </div>
            <div class="row" id='divIDTableFileLichHopPhatHanh' style="display: none">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px"></div>
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
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Email nhận thông báo</div>
                <div class="col-md-8">
                    <textarea id="EmailNhanThongBao" name="Description" rows="5" cols="50" style="width: 100%; height: 30%; resize: vertical"></textarea>
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

<div id="customWindowXemLichHopPhatHanh" style="padding: 1em; display: none;">
    <div id="appointmentWindowXemLichHopPhatHanh" class="appointmentWindow">
        <form id="customAppointmentXemLichHopPhatHanh">
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-11 e-textlabel" style="font-size: large">
                    LỊCH LÀM VIỆC CỦA BAN THƯỜNG VỤ VÀ THƯỜNG TRỰC TỈNH ỦY
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-7 e-textlabel" style="font-size: large">
                    (Từ ngày
                    <label id="lblTuNgayXemLichHopPhatHanh"></label>
                    đến ngày
                    <label id="lblDenNgayXemLichHopPhatHanh"></label>
                    )
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="NoiDungPhatHanhXemLichHopPhatHanh" name="Description" rows="10" cols="50" style="width: 100%; height: 50%; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Lịch đã ký <span style="color: red">*</span></div>
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
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Email nhận thông báo</div>
                <div class="col-md-8">
                    <textarea id="EmailNhanThongBaoXemLichHopPhatHanh" name="Description" rows="5" cols="50" style="width: 100%; height: 30%; resize: vertical"></textarea>
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

<div id="customWindowGuiThaoLuan" style="padding: 1em; display: none;">
    <div id="appointmentWindowGuiThaoLuan" class="appointmentWindow">
        <form id="customAppointmentWindowGuiThaoLuan">
            <div class="row">
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-11">
                    <table id="IDTableDanhSachThaoLuan"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="10"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="400"
                        data-search="true"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                <th data-field="TenLinhVuc" data-sortable="true" data-align="left">Tên Lĩnh vực</th>
                                <th data-field="NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên file</th>
                                <th data-formatter="ChucNangDownloadFile" data-events="operateEventsThaoLuan" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
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
                <div class="col-md-8"></div>
                <div class="col-md-3 pull-right">
                    <button type="button" id="btnLuuVaoTaiLieuCaNhan" class="btn btn-info"><i class="fa fa-check-circle-o"></i>&nbsp Lưu vào tài liệu cá nhân</button>
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
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
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
        <form id="customAppointmentDanhSachShowThemFileDinhkem" style="margin-left: 30px">
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel">
                    Tên tài liệu <span style="color: red">*</span>
                </div>
                <div class="col-md-8">
                    <input id="TenTaiLieuShowThemFileDinhkem" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                    <input type="hidden" id="TaiLieuIDShowThemFileDinhkem" value="0">
                    <input type="hidden" id="TenFileShowThemFileDinhkem" value="">
                    <input type="hidden" id="FileIDShowThemFileDinhkem" value="">
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-3 e-textlabel">Tệp đính kèm</div>
                <div class="col-md-8">
                    <input type="file" id="fileSelectShowThemFileDinhkem" onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                    <span style="color: red">xlsx, xls, docx, doc, pdf</span><br>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-8">
                    <button type="button" id="btnThemShowThemFileDinhkem" class="btn btn-success"><i class="fa fa-check-circle"></i>&nbsp Thêm</button>
                    <button type="button" id="btnChiaSeTaiLieu" class="btn btn-info"><i class="fa fa-share "></i>&nbsp Chia sẻ tài liệu</button>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel">
                    Danh sách tài liệu cá nhân 
                </div>
            </div>
            <br />
            <div class="">
                <div class="col-md-12">
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
                                    <th data-field="" data-checkbox="true"></th>
                                    <th data-align="center" data-field="STT" data-sortable="true">STT</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                    <th data-formatter="ChucNangChinhSuaFile" data-events="operateEventsShowThemFileDinhkem" data-align="center">Chức năng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </form>
    </div>

</div>


<div id="customWindowKetLuanHop" style="padding: 1em; display: none;">
    <div id="appointmentKetLuanHop" class="appointmentWindow">
        <form id="customAppointmentKetLuanHop">
            <div class="row">
                <div class=" col-md-1"></div>
                <div class="col-md-11">
                    <table id="IDTableDanhSachKetLuanHop"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="10"
                        data-search="true"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="400"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên file</th>
                                <th data-formatter="ChucNangDownloadFile" data-events="operateEventsFile" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowVaoHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowVaoHop" class="appointmentWindow">

        <form id="customAppointmentVaoHop">

            <div class="container">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#ChuongTrinhHop" data-toggle="tab" style="display: none">>Chương trình</a></li>
                    <li><a href="#BieuQuyet" data-toggle="tab">Biểu quyết</a></li>
                    <li><a href="#ThanhPhanHop" style="display: none" data-toggle="tab">Thành phần họp</a></li>
                    <li><a href="#DanhSachPhatBieu" style="display: none" data-toggle="tab">Danh sách phát biểu</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="ChuongTrinhHop">
                        <br />
                        <button type="button" id="btnDangKyPhatBieu" class="btn btn-primary"><i class="fa fa-plus "></i>&nbsp Đăng ký phát biểu&nbsp</button>
                        <textarea id="summernote" rows="25" cols="50" style="width: 100%; height: 400px;" name="editordata"></textarea>
                    </div>
                    <div class="tab-pane" id="BieuQuyet">
                        <br />
                        <div id="divHtml">
                        </div>
                    </div>
                    <div class="tab-pane" id="ThanhPhanHop">
                        <div class="col-md-12">
                            <table id="IDTableDanhSachThanhPhanHop"
                                data-classes="table table-striped jambo_table bulk_action vertical-align"
                                data-toggle="table"
                                data-page-size="5"
                                data-search="true"
                                data-mobile-responsive="true"
                                data-pagination="true"
                                data-show-footer="false"
                                data-height="200"
                                data-formatter="detailFormatter"
                                data-sort-order="desc"
                                data-page-list="[5, 25, 50, 100, ALL]">
                                <thead>
                                    <tr class="headings">
                                        <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                        <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Họ tên</th>
                                        <th data-field="NoiDung" data-sortable="true" data-align="left">Phòng ban</th>
                                        <th data-field="NoiDung" data-sortable="true" data-align="left">Tình trạng</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane" id="DanhSachPhatBieu">
                        <div class="col-md-12">
                            <table id="IDTableDanhSachPhatBieu"
                                data-classes="table table-striped jambo_table bulk_action vertical-align"
                                data-toggle="table"
                                data-page-size="5"
                                data-search="true"
                                data-mobile-responsive="true"
                                data-pagination="true"
                                data-show-footer="false"
                                data-height="200"
                                data-formatter="detailFormatter"
                                data-sort-order="desc"
                                data-page-list="[5, 25, 50, 100, ALL]">
                                <thead>
                                    <tr class="headings">
                                        <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                        <th data-align="center" data-sortable="true" data-formatter="STT">Người phát biểu</th>
                                        <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Nội dung đăng ký phát biểu</th>
                                        <th data-field="NoiDung" data-sortable="true" data-align="left">Chức năng</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnTroVeVaoHop" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowGiaoViec" style="padding: 1em; display: none;">
    <div id="appointmentGiaoViec" class="appointmentWindow">
        <form id="customAppointmentGiaoViec">
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <input type="hidden" id="GiaoViecID" value="0" />
                    <textarea id="summernoteNoiDungGiaoViec" name="Description" rows="5" cols="50" style="width: 100%; height: 30%; resize: vertical"></textarea>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Phòng ban/ Đơn vị xử lý <span style="color: red">*</span></div>
                <div class="col-md-3">
                    <input type="text" id="PhongBanDonViXuLyID" placeholder="Chọn Phòng ban/Đơn vị xử lý " autocomplete="off" />

                </div>
                <div class="col-md-1 e-textlabel">Hạn xử lý</div>
                <div class="col-md-1">
                    <input type="number" min="0" style="width: 67px" value="0" class="form-control" id="HanXuLy" />
                </div>
                <div class="col-md-1 e-textlabel">Ngày</div>
                <div class="col-md-2" style="margin-left: -3%">
                    <input type="text" id="Ngay" placeholder="Chọn ngày">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Người chỉ đạo <span style="color: red">*</span></div>
                <div class="col-md-3">
                    <input type="text" id="NguoiChiDaoID" placeholder="Chọn người chỉ đạo " autocomplete="off" />
                </div>
                <div class="col-md-2 e-textlabel">Người theo dõi <span style="color: red">*</span></div>
                <div class="col-md-3">
                    <input type="text" id="NguoiTheoDoiID" placeholder="Chọn người theo dõi" autocomplete="off" />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Phòng ban/ Đơn vị phối họp </div>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="PhongBanDonViPhoiHop" />
                </div>

            </div>
            <br />
            <div id="divNoiDungKhongPheDuyet" class="row" style="display: none">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Nội dung không phê duyệt </div>
                <div class="col-md-8">
                    <textarea id="NoiDungKhongPheDuyet" disabled rows="25" cols="50" style="width: 100%; height: 50px;" name="editordata"></textarea>
                </div>

            </div>

            <%--            <div class="row">
                <div class="col-md-2 e-textlabel" style="margin-left: 18px"></div>
                <div class="col-md-7">
                    <table id="IDTableDanhSachNguoiXuLy"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="10"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="200"
                        data-sort-order="desc"
                        data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="left" data-field="IsTruongNhom" data-formatter="RadioTruongNhom" data-events="actionEventsNguoiXuLy">Trưởng nhóm</th>
                                <th data-field="FullName" data-formatter="CheckNguoiXuLy" data-events="actionEventsNguoiXuLy">Người xử lý</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>--%>
            <br />
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6" style="margin-left: 24px">
                    <input type="file" id="fileSelectGiaoViec" accept=".xlsx, .xls, .csv" />
                    <input type="hidden" id="FileIDGiaoViec" />
                    <input type="hidden" id="TenFileGiaoViec" />
                    <div id="divIDTableFileGiaoViec" style="display: none">
                        <table id="IDTableFileGiaoViec"
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
                                    <th data-formatter="ChucNangChinhSuaFileLichHopPhatHanh" data-events="operateEventsFileGiaoViec" data-align="center">Chức năng</th>
                                </tr>
                            </thead>
                        </table>
                    </div>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuGiaoViec" class="btn btn-primary"><i class="fa fa-check-square"></i>&nbsp Lưu</button>
                    <button type="button" id="btnChuyenGiaoViec" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i>&nbsp Chuyển</button>
                    <button type="button" id='btnTroVeGiaoViec' class="btn btn-info"><i class="fa fa-reply"></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowNoiDungGiaoViec" style="padding: 1em; display: none;">
    <div id="appointmentWindowNoiDungGiaoViec" class="appointmentWindow">
        <form id="customAppointmentNoiDungGiaoViec">
            <div class="">
                <ul class="nav nav-tabs">
                    <li id="TabBienBanHop" class="active"><a href="#BienBanHopGiaoViec" data-toggle="tab">Kết luận cuộc họp</a></li>
                    <li id="TabDanhSachGiaoViec"><a href="#DanhSachGiaoViec" data-toggle="tab" style="display: none;">Danh sách giao việc</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="BienBanHopGiaoViec">
                        <textarea id="summernoteBienBanHop" rows="25" cols="50" style="width: 100%; height: 300px;" name="editordata"></textarea>
                        <input type="hidden" id="BienBanID" value="0">
                        <br />
                        <div>
                            <div class="col-md-4"></div>
                            <div class="col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="DanhSachGiaoViec">
                        <br />
                        <div class="col-md-10">
                            <button type="button" id="btnThemGiaoViec" class="btn btn-success"><i class="fa fa-plus"></i>&nbsp Thêm giao việc</button>
                            <button type="button" id="btnInGiaoViec" class="btn btn-info" style="display: none"><i class="fa fa-print"></i>&nbsp In</button>
                        </div>

                        <div class="col-md-12">
                            <table id="IDTableDanhSachGiaoViec"
                                data-classes="table table-striped jambo_table bulk_action vertical-align"
                                data-toggle="table"
                                data-page-size="5"
                                data-search="true"
                                data-mobile-responsive="true"
                                data-pagination="true"
                                data-show-footer="false"
                                data-height="600"
                                data-formatter="detailFormatter"
                                data-sort-order="desc"
                                data-page-list="[5, 25, 50, 100, ALL]">
                                <thead>
                                    <tr class="headings">
                                        <th data-align="center" data-formatter="STT">STT</th>
                                        <th data-field="NoiDung" data-align="left">Nội dung</th>
                                        <th data-field="TenPhongBan" data-align="left">Phòng ban/ đơn vị xử lý</th>
                                        <th data-field="TenNguoiTheoDoi" data-align="left">Người theo dõi</th>
                                        <th data-field="TenNguoiChiDao" data-align="left">Người chỉ đạo</th>
                                        <th data-field="Ngay" data-align="left">Thời hạn</th>
                                        <th data-field="TinhTrangDuyet" data-formatter="formatterTinhTrangGiaoViec" data-align="left">Tình trạng</th>
                                        <th data-formatter="formatterChucNangNguoiXuLy" data-events="ChucNangNguoiXuLy" data-sortable="true" data-align="left">Chức năng</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnTroVeNoiDungGiaoViec" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>
    </div>

</div>

<div id="customWindowBaoVang" style="padding: 1em; display: none;">
    <div id="appointmentWindowBaoVang" class="appointmentWindow">
        <form id="customAppointmentWindowBaoVang">

            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Lý do vắng <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <input type="hidden" id="IsClickTrungLich" value="0" />
                    <input type="hidden" id="IsClickDanhSachCuocHop" value="0" />
                    <input type="text" id="LyDoVangID" placeholder="Chọn" autocomplete="off" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3 e-textlabel" style="margin-left: 18px">Ghi chú</div>
                <div class="col-md-8">
                    <textarea id="GhiChuBaoVang" name="Description" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="button" id="btnLuuBaoVang" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>&nbsp Lưu&nbsp</button>
                    <button type="button" id="btnTroVeBaoVang" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowPopupBieuQuyet" style="padding: 1em; display: none;">
    <div id="appointmentWindowPopupBieuQuyet" class="appointmentWindow">
        <form id="customAppointmentWindowPopupBieuQuyet">

            <div class="row">
                <div class="col-md-8" style="margin-left: 18px">
                    Tiêu đề:
                    <label id="lblTieuDeBieuQuyet"></label>
                </div>
                <input type="hidden" id="BieuQuyetID" />
            </div>
            <div class="row">
                <div class="col-md-8" style="margin-left: 18px">
                    Thời gian biểu quyết:
                    <label id="lblThoiGianBieuQuyetHienTai"></label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8" style="margin-left: 18px">
                    Nội dung:
                    <label id="lblNoiDungBieuQuyet"></label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-8">
                    <button type="button" id="btnDongYBieuQuyet" class="btn btn-primary"><i class="fa fa-check-circle-o"></i>&nbsp Đồng ý&nbsp</button>
                    <button type="button" id="btnKhongDongYBieuQuyet" class="btn btn-default"><i class="fa fa-ban"></i>&nbsp Không đồng ý</button>
                </div>
            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowChiaSeTaiLieu" style="padding: 1em; display: none;">
    <div id="appointmentWindowChiaSeTaiLieu" class="appointmentWindow">
        <form id="customAppointmentWindowChiaSeTaiLieu" style="height: 300px!important">
            <div class="row">
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-2 e-textlabel">
                    Chia sẻ cho <span style="color: red">*</span>
                </div>
                <div class="col-md-7">
                    <input type="text" id="ChuTriID" placeholder="Chọn đại biểu" autocomplete="off" />
                </div>
            </div>
            <br />
            <div>
                <div class="col-md-4"></div>
                <button type="button" id="btnChiaSe" class="btn btn-primary"><i class="fa fa-share"></i>&nbsp Chia sẻ&nbsp</button>
                <button type="button" id="btnTroVeChiaSe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
            <br />
            <br />
            <br />
        </form>

    </div>

</div>

<div id="customWindowDangKyPhatBieu" style="padding: 1em; display: none;">
    <div id="appointmentDangKyPhatBieu" class="appointmentWindow">
        <form id="customAppointmentWindowDangKyPhatBieu">
            <div class="row">
                <div class="col-md-1"></div>
                <input type="hidden" id="DangKyPhatBieuID" value="0">
                <div class="col-md-1 e-textlabel" style="margin-left: 18px">Nội dung <span style="color: red">*</span></div>
                <div class="col-md-8">
                    <textarea id="NoiDungDangKyPhatBieu" name="Description" rows="5" cols="50" style="width: 100%; height: 80%; resize: vertical"></textarea>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="button" id="btnThemDangKyPhatBieu" class="btn btn-success"><i class="fa fa-plus"></i>&nbsp Thêm</button>
                    <button type="button" id="btnLamMoiDangKyPhatBieu" class="btn btn-default"><i class="fa fa-refresh "></i>&nbsp Làm mới</button>
                    <button type="button" id='btnTroVeDangKyPhatBieu' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                </div>
                <div class="col-md-8">
                    <table id="IDTableDanhSachThaoDangKyPhatBieu"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="10"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="400"
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[10, 25, 50, 100, ALL]">
                        <thead>
                            <tr class="headings">
                                <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                <th data-field="NoiDungPhatBieu" class="col-x2" data-sortable="true" data-align="left">Nội dung đăng ký phát biểu</th>
                                <th data-formatter="ChucNangRemoveDangKyPhatBieu" data-events="operateEventsDangKyPhatBieu" data-align="center">Chức năng</th>
                            </tr>
                        </thead>
                    </table>
                </div>


            </div>
            <br />
        </form>

    </div>

</div>

<div id="customWindowKetNoiHopTrucTuyen" style="padding: 1em; display: none;">
    <div id="appointmentWindowKetNoiHopTrucTuyen" class="appointmentWindow">
        <form id="customAppointmentWindowKetNoiHopTrucTuyen">
            <div class="row">
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-2 e-textlabel">
                    Link kết nối <span style="color: red">*</span>
                </div>
                <div class="col-md-7">
                    <input type="text" id="LinkKetNoi" style="width: 100%" placeholder="Nhập Link " />
                </div>
            </div>
            <br />
            <div>
                <div class="col-md-4"></div>
                <button type="button" id="btnKetNoi" class="btn btn-primary"><i class="fa fa-link"></i>&nbsp Kết nối&nbsp</button>
                <button type="button" id="btnTroVeKetNoi" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
            <br />
            <br />
            <br />
        </form>

    </div>

</div>

<script type="text/javascript">

    alertify.defaults.transition = "slide";
    alertify.defaults.theme.ok = "btn btn-primary";
    alertify.defaults.theme.cancel = "btn btn-default"
    alertify.defaults.theme.input = "form-control";
    var Loai = "";
    var TuNgay = "";
    var DenNgay = "";
    var Thang = "";
    var Nam = "";
    var Role = "";

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

    $(function () {
        $('#summernote').summernote({
            height: 300,
            width: 1000,
            toolbar: [
                ['view']
            ]
        });
        $('#summernote').summernote('disable');
        $('#summernoteXemChuongTrinhHop').summernote({
            toolbar: [
                ['view']
            ]
        });
        $('#summernoteXemChuongTrinhHop').summernote('disable');

        $('#summernoteNoiDungGiaoViec').summernote({
            height: 200,
            width: 700

        });
        $('#summernoteNoiDungChiTietGiaoViec').summernote({
            height: 200,
            width: 700

        });


        $('#summernoteBienBanHop').summernote({
            height: 600,
            width: 1000,
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['misc', ['print']]
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
    function _getImages(date) {

        return null;
    }

    $.views.helpers({ format: _getImages });

    $(function () {
        $("#Schedule1").ejSchedule({
            appointmentTemplateId: "#apptemplate",
            allowDragAndDrop: false,
            width: "100%",
            height: "2000px",
            views: ["Day", "Week", "Month"],
            startHour: 5,
            endHour: 22,
            allowDelete: false,
            showAllDayRow: false,
            workHours: {
                highlight: true,
                start: 5,
                end: 22
            },
            dateFormat: "dd/MM/yyyy",
            timeMode: ej.Schedule.TimeMode.Hour24,
            //currentDate: new Date('2020-07-24'),
            categorizeSettings: {
                enable: true,
                allowMultiple: true,
                dataSource: [
                    //{ text: "Orange Category", id: 1, color: "#f0ad4e", fontColor: "#ffffff" },
                    { text: "Red Category", id: 11, color: "#dd654e", fontColor: "#ffffff" },
                    { text: "Blue Category", id: 10, color: "#337ab7", fontColor: "#ffffff" },
                    { text: "Green Category", id: 3, color: "#008000", fontColor: "#ffffff" },
                    { text: "Orange Category", id: 4, color: "#f0ad4e", fontColor: "#ffffff" },
                    { text: "Yellow Category", id: 6, color: "#008000", fontColor: "#ffffff" },
                    { text: "Black Category", id: 5, color: "#696969", fontColor: "#ffffff" },
                    { text: "Blue ", id: 7, color: "#5bc0de", fontColor: "#ffffff" }
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
                PhongBanID: "PhongBanID"
            },
            cellDoubleClick: "OnCellDoubleClick",
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
                if ($("#IsClickTabCaNhan").val() == "0") {
                    Role = "ThanhPhanHopLichCoQuan";
                }
                else {
                    Role = "ThanhPhanHopLichCaNhan";
                }
                LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
                //CheckPhatHanhByThoiGian(TuNgay, DenNgay, "3");// Đã phát hành
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
            Role = "ThanhPhanHopLichCaNhan";
            LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
            //CheckPhatHanhByThoiGian(TuNgay, DenNgay,"3");//Đã phát hành
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
        //args.cancel = true;
        //return;
    }
    function OnDragStop(args) {
        return;
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
                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
    function OnCellDoubleClick(args) {
        args.cancel = true;
        return;
    }

    function OnAppointmentClick(args) {

        var RoleUser = "ThanhPhanThamDu"
        $("#RoleUser").val(RoleUser);

        if (args.appointment) {
            $("#LichHopID").val(args.appointment.Id);
            $("#PhongBanID").val(args.appointment.PhongBanID);
            if ($("#PhongBanID").val() != "0") {
                var selectPhongBanIDOfUser = SelectParentPhongBan.filter(x => x.id == args.appointment.PhongBanID)
                comboPhongBanDonViXuLyID.setSource(selectPhongBanIDOfUser);
                comboPhongBanDonViXuLyID.setSelection([args.appointment.PhongBanID]);
            }

            if (RoleUser == "ThanhPhanThamDu") {
                $("#trVaoHop").css("display", "none");
                $("#trXemLichHop").css("display", "none");
                $("#trKetNoiHopTrucTuyen").css("display", "none");
                $("#trXemThaoLuan").css("display", "none");
                $("#trBaoVang").css("display", "none");
                $("#trKetLuanHop").css("display", "none");
                $("#trChapNhanHop").css("display", "none");
                $("#trTrungLich").css("display", "none");
                $("#trNoiDungGiaoViec").css("display", "none");

                if ($("#IsClickTabCaNhan").val() == "0") { //ThanhPhanHopLichCoQuan
                    $("#trXemLichHop").css("display", "");
                }
                else {//ThanhPhanHopLichCaNhan
                    switch (args.appointment.Categorize) {
                        case "10": // Đã họp
                            $("#trXemLichHop").css("display", "");
                            $("#trKetLuanHop").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            $("#trNoiDungGiaoViec").css("display", "");
                            break;
                        case "11": // Trùng lịch
                            $("#trXemLichHop").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            break;
                        case "5": //Báo vắng
                            $("#trXemLichHop").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            break;
                        case "4"://Hủy họp
                            $("#trXemLichHop").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            break;
                        case "6"://Đang họp
                            $("#trVaoHop").css("display", "");
                            $("#trXemLichHop").css("display", "");
                            $("#trKetNoiHopTrucTuyen").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            $("#trNoiDungGiaoViec").css("display", "");
                            break;
                        case "7"://Chưa họp
                            $("#trBaoVang").css("display", "");
                            $("#trXemLichHop").css("display", "");
                            $("#trXemThaoLuan").css("display", "");
                            $("#trChapNhanHop").css("display", "");
                            $("#trTrungLich").css("display", "");
                            break;
                    }
                }

            }
        }
        //begin // ẩn popup mini when click mún biết comment lại thấy ra popup mini
        args.cancel = true;
        if (!args.appointment.Recurrence)
            this._showAppointmentDetails(args.appointment.Guid, true);
        else {
            if (ej.isNullOrUndefined(this._recurEditWindow)) this._renderRecurEditWindow();
            this._parentId = args.appointment.ParentId;
            this._recurEditWindow.ejDialog("open");
            this._recurEditWindow.focus();
            this._deleteBeforeOpen();
        }

        //end


    }

    function onClick(args) {
        args.cancel = true;
        return;
        $("#NgayHop").ejDatePicker({
            value: args.startTime,
            dateFormat: "dd/MM/yyyy",
            width: "100%"
        });
        $("#GioBatDau").val(args.startTime.getHours().toString().length == 1 ? "0" + args.startTime.getHours().toString() : args.startTime.getHours());
        $("#PhutBatDau").val(args.startTime.getMinutes().toString().length == 1 ? "0" + args.startTime.getMinutes().toString() : args.startTime.getMinutes());

        $("#GioKetThuc").val(args.endTime.getHours().toString().length == 1 ? "0" + args.endTime.getHours().toString() : args.endTime.getHours());
        $("#PhutKetThuc").val(args.endTime.getMinutes().toString().length == 1 ? "0" + args.endTime.getMinutes().toString() : args.endTime.getMinutes());


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
        comboChuanBiID.clearSelection();
        comboThanhPhanID.clearSelection();
        $("#ThanhPhanThamDuKhac").val("");
        $("#GhiChu").val("");
        comboPhongHopID.clearSelection();
        comboDoiTuongXemID.clearSelection();
        comboChuTriID.clearSelection();
        comboThuKyID.clearSelection();
        $('#IDTableDanhSachTaiLieu').bootstrapTable('refreshOptions', { data: "" });

        this._customAppointmentWindow = $("#customWindow");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
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
        $("#TinhTrangID").val(args.appointment.Categorize);
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
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Thêm tài liệu cá nhân",
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
    //LoadSchedule();
    //LoadAllSchedule();

    var comboChuanBiID, comboThanhPhanID, comboDoiTuongNhacID,
        comboChuTriID, comboThuKyID, comboPhongHopID, comboDoiTuongXemID, SelectParentDistince,
        comboChonChuTriID, SelectParentDoiTuongNhac, DataThanhPhanChuanBi, comboLinhVucID,
        comboLyDoVangID, comboThoiGianNhacLichHop, comboLyDoVangID,
        comboPhongBanDonViXuLyID, comboNguoiChiDaoID, comboNguoiTheoDoiID, SelectParentPhongBan
    var DataDanhSachTaiLieu = [];

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
                "DoiTuongXemID": "5"
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_Schedule_CaNhan",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataSchedule = JSON.parse(obj);
                if (dataSchedule && dataSchedule.Table.length > 0) {
                    var dataMapSchedule = dataSchedule.Table.map(item => ({
                        Id: item.Id,
                        Subject: item.Subject,
                        CountFile: item.CountFile,
                        StartTime: formatStringToDate(item.StartTime),
                        EndTime: formatStringToDate(item.EndTime),
                        Categorize: item.Categorize,
                        PhongBanID: item.PhongBanID
                    }));
                    $("#Schedule1").ejSchedule({
                        appointmentSettings: {
                            dataSource: dataMapSchedule
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
    //    LoadSchedule("PheDuyet", "", "", "", "", "Search", $("#txtSearch").val(), "")
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
                    $("#summernote").summernote("code", data[0].TenChuongTrinh);
                    $("#summernoteXemChuongTrinhHop").summernote("code", data[0].TenChuongTrinh);
                    $("#urlChuongTrinhHop").attr("style", "display:block");
                    $("#IDTableChuongTrinhHopDetail").bootstrapTable('refreshOptions', { data: data });
                }
                else {
                    $("#IDTableChuongTrinhHopDetail").bootstrapTable('refreshOptions', { data: "" });
                    $("#summernote").summernote("code", "");
                    $("#urlChuongTrinhHop").attr("style", "display:none");
                }



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
    function LoadDangKyPhatBieuTheoLichHopID(LichHopID) {
        if (!LichHopID) {
            return;
        }
        var data =
        {
            "LichHopID": $("#LichHopID").val(),
            "IsChuToa": false
        }

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadDangKyPhatBieuTheoLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                $("#IDTableDanhSachThaoDangKyPhatBieu").bootstrapTable('refreshOptions', { data: data });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }
    function LoadXemBieuQuyetByLichHopID(LichHopID) {
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
                    $("#IDTableXemDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: data });
                    $("#urlNoiDungBieuQuyet").attr("style", "display:block");
                }
                else {
                    $("#IDTableXemDanhSachBieuQuyet").bootstrapTable('refreshOptions', { data: "" });
                    $("#urlNoiDungBieuQuyet").attr("style", "display:none");
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

        var data =
        {
            "obj": {
                "LichHopID": LichHopID,
                "PageSize": 25,
                "PageIndex": 1,
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_BIEUQUYET_GetByLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                var html = "";
                var STT = 1;

                if (data[0].length > 0) {
                    for (var i = 0; i < data[0].length; i++) {
                        debugger;
                        html += '<table style="background-color:#E9F6FF; width: 100%">'
                        html += '<tr>'
                        html += '<td width:70%>'
                        if (data[0][i].DaKetThuc == true) {// đã kết thúc
                            if (data[1].length > 0) {
                                var IsExistBieuQuyet = data[1].filter(x => x.BieuQuyetID == data[0][i].BieuQuyetID);
                                if (IsExistBieuQuyet.length > 0 && IsExistBieuQuyet[0].DongY == true) { // có biểu quyết và đồng ý
                                    html += ' <div class="col-md-1" style="margin-right: -37px; margin-top: 4px;">'
                                    html += '<button type="button" disabled class="btn btn-info"><i class="fa fa-check"></i></button>'
                                    html += ' </div>'
                                }
                                else {
                                    html += ' <div class="col-md-1" style="margin-right: -37px; margin-top: 4px;">'
                                    html += '<button type="button" disabled class="btn btn-info"><i class="fa fa-ban"></i></button>'
                                    html += ' </div>'

                                }
                            }
                            else {
                                html += ' <div class="col-md-1" style="margin-right: -37px; margin-top: 4px;">'
                                html += '<button type="button" disabled class="btn btn-info"><i class="fa fa-hand-paper-o"></i></button>'
                                html += ' </div>'
                            }
                        }

                        else {
                            if (data[0][i].TinhTrang == null || data[0][i].TinhTrang == false) {// chưa thực hiện biểu quyết
                                html += ' <div class="col-md-1" style="margin-right: -37px; margin-top: 4px;">'
                                html += '<button type="button" disabled class="btn btn-info"><i class="fa fa-hand-paper-o"></i></button>'
                                html += ' </div>'
                            }
                            else if (data[0][i].TinhTrang == true) {// đang thực hiện biểu quyết
                                html += ' <div class="col-md-1" style="margin-right: -37px; margin-top: 4px;">'
                                html += '<button type="button" onclick="BauChonBieuQuyet('
                                    + "'" + data[0][i].TieuDe + "'" + ','
                                    + "'" + data[0][i].NoiDung + "'" + ','
                                    + "'" + data[0][i].BieuQuyetID + "'" + ')" class="btn btn-info">'
                                if (data[1].length > 0) {

                                    var IsExistBieuQuyet = data[1].filter(x => x.BieuQuyetID == data[0][i].BieuQuyetID);
                                    if (IsExistBieuQuyet.length == 0) {
                                        html += '<i class="fa fa-hand-paper-o"></i >' // chưa biểu quyết
                                    }
                                    else {
                                        for (var j = 0; j < data[1].length; j++) {
                                            if (data[0][i].BieuQuyetID == data[1][j].BieuQuyetID) { // có biểu quyết

                                                if (data[1][j].DongY == true) { //đồng ý
                                                    html += '<i class="fa fa-check" ></i >'
                                                    break;
                                                }
                                                else {
                                                    html += '<i class="fa fa-ban" ></i >' // Không đồng ý
                                                    break;
                                                }
                                            }
                                        }
                                    }

                                }
                                else {
                                    html += '<i class="fa fa-hand-paper-o"></i >'
                                }
                            }
                        }
                        html += '</button ></div>'
                        html += '<div class="col-md-7">'
                        html += ' <span>' + STT + "." + data[0][i].TieuDe + '</span><br/>'
                        html += ' <span>' + data[0][i].NoiDung + '</span><br />'
                        html += '<span style="color: #008FE0">Đồng ý: ' + (data[0][i].SoLuongDongY == null ? 0 : data[0][i].SoLuongDongY) + '/' + data[0][i].SoLuongThamGia + '</label></span> &nbsp&nbsp&nbsp <span style="color: red">Không đồng ý: ' + (data[0][i].SoLuongKhongDongY == null ? 0 : data[0][i].SoLuongKhongDongY) + '/' + data[0][i].SoLuongThamGia + '</span>'
                        html += '  </div>'
                        html += ' <div class="col-md-2">'
                        if (data[0][i].DaKetThuc == true) {// đã kết thúc
                            html += '<span class="label label-danger" style="font-family: Helvetica, Arial, sans-serif; font-size:12px;">'
                            html += 'Kết thúc</span></div >'
                        }
                        else {
                            if (data[0][i].TinhTrang == null || data[0][i].TinhTrang == false) {

                                html += '<span class="label" style="font-family: Helvetica, Arial, sans-serif; font-size:12px;background-color:dimgrey;">'
                                html += 'Chưa bắt đầu</span></div >'
                            }
                            else {
                                html += '<span class="label label-success" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">'
                                html += 'Đang thực hiện</span> </div> '
                            }

                        }
                        html += '  </td>'
                        html += ' </tr >'
                        html += ' </table > <br/>'
                        STT++;
                    }
                }
                $("#divHtml").html(html);
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

                    $("#lblTuNgayXemLichHopPhatHanh").text(TuNgay.split("-").reverse().join("/"));
                    $("#lblDenNgayXemLichHopPhatHanh").text(DenNgay.split("-").reverse().join("/"));
                    $("#NoiDungPhatHanhXemLichHopPhatHanh").val(DataPhatHanh[0].NoiDung);
                    $("#EmailNhanThongBaoXemLichHopPhatHanh").val(DataPhatHanh[0].EmailNhanThongBao);
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
                    $("#NoiDungPhatHanhXemLichHopPhatHanh").val("");
                    $("#EmailNhanThongBaoXemLichHopPhatHanh").val("");
                    $("#IDTableFileXemLichHopPhatHanh").bootstrapTable('refreshOptions', { data: "" });

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
                "TinhTrangID": TinhTrangID
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
                    var DataPhatHanh = JSON.parse(data.DataPhatHanh);
                    var DataLichHopID = JSON.parse(data.DataLichHopID);
                    var DataThanhPhanThamDu = JSON.parse(data.DataThanhPhanThamDu);
                    $("#EmailNhanThongBao").val("");
                    $("#LichHopPhatHanhID").val("");
                    $("#PhatHanhID").val("0");
                    $("#divIDTableFileLichHopPhatHanh").hide();
                    $("#fileSelectPhatHanh").val(null);
                    $("#FileIDPhatHanh").val("");
                    $("#TenFilePhatHanh").val("");
                    $("#NoiDungPhatHanh").val("");
                    $("#EmailNhanThongBao").val("");
                    var ChuoiLichHopID = "";
                    if (DataLichHopID && DataLichHopID.length > 0) {

                        for (var i = 0; i < DataLichHopID.length; i++) {
                            ChuoiLichHopID += DataLichHopID[i].LichHopID + ",";
                        }
                    }
                    if (ListLichHopID != "" && ListLichHopID != undefined) {
                        ChuoiLichHopID += ListLichHopID;
                    }
                    $("#LichHopPhatHanhID").val(ChuoiLichHopID);

                    var EmailNhanThongBaoLichHop = "";
                    if (DataThanhPhanThamDu && DataThanhPhanThamDu.length > 0) {

                        for (var i = 0; i < DataThanhPhanThamDu.length; i++) {
                            if (DataThanhPhanThamDu[i].Email != null) {
                                EmailNhanThongBaoLichHop += DataThanhPhanThamDu[0].Email + ",";
                            }
                        }


                    }
                    if (ListEmailThanhPhan != "" && ListEmailThanhPhan != undefined) {
                        EmailNhanThongBaoLichHop += ListEmailThanhPhan;
                        var EmaillDistince = EmailNhanThongBaoLichHop.split(',').filter((v, i, a) => a.indexOf(v) === i);
                        EmailNhanThongBaoLichHop = EmaillDistince.join(',')
                    }
                    $("#EmailNhanThongBao").val(EmailNhanThongBaoLichHop);

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
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                debugger;
                var data = JSON.parse(obj);
                var EmailNhanThongBaoLichHop = "";
                for (var i = 0; i < data.length; i++) {
                    if (data[i].Email != null) {
                        EmailNhanThongBaoLichHop += data[0].Email + ",";
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

    function LoadData() {

        $("#NgayHop").ejDatePicker({
            value: new Date(2020, 07, 03),
            dateFormat: "dd/MM/yyyy",
            width: "100%"
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
                var DataDoiTuongNhac = JSON.parse(data.ListDoiTuong);
                var DataUser = JSON.parse(data.ListUsers);
                var DataPhongHop = JSON.parse(data.ListPhongHop);
                var DataLinhVuc = JSON.parse(data.ListLinhVuc);
                var DataLyDoVang = JSON.parse(data.ListLyDoVang);
                //var DataDanhSachTaiLieu = JSON.parse(data.ListDanhSachTaiLieu);
                var DataThoiGianNhacLichHop = JSON.parse(data.ListLichNhac);
                var DataListNguoiChiDao = JSON.parse(data.ListNguoiChiDao);
                var DataListNguoiTheoDoi = JSON.parse(data.ListNguoiTheoDoi);
                var DataListPhongBan = JSON.parse(data.ListPhongBan);

                $table.bootstrapTable('refreshOptions', { data: "" });

                if (DataLyDoVang.length > 0) {
                    var SelectParentLyDoVang = DataLyDoVang.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataPhongHop.length > 0) {
                    var SelectParentPhongHop = DataPhongHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataThoiGianNhacLichHop.length > 0) {
                    var SelectParentThoiGianNhacLichHop = DataThoiGianNhacLichHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataUser.Table.length > 0) {
                    var SelectParentUsers = DataUser.Table.map(Parent => ({ id: Parent.User_PortalID, title: Parent.HoTen, subs: [] }));
                }


                if (DataDoiTuongNhac.length > 0) {
                    SelectParentDoiTuongNhac = DataDoiTuongNhac.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataLinhVuc.length > 0) {
                    var SelectParentLinhVuc = DataLinhVuc.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataListNguoiChiDao.length > 0) {
                    var SelectParentNguoiChiDao = DataListNguoiChiDao.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataListPhongBan.length > 0) {
                    SelectParentPhongBan = DataListPhongBan.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (DataListNguoiTheoDoi.length > 0) {
                    var SelectParentNguoiTheoDoi = DataListNguoiTheoDoi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataThanhPhanChuanBi.length > 0) {
                    SelectParentThanhPhanChuanBi = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [], isSelectable: false, }));
                    SelectParentDistince = [...new Map(SelectParentThanhPhanChuanBi.map(item =>
                        [item['id'], item])).values()];
                }

                if (SelectParentDistince.length > 0) {

                    for (var i = 0; i < SelectParentDistince.length; i++) {
                        var dataChild = DataThanhPhanChuanBi.filter(x => x.Ma == SelectParentDistince[i].id).map(Parent => ({ id: Parent.UserID, title: Parent.FullName, isSelectable: true }));
                        for (var j = 0; j < dataChild.length; j++) {
                            SelectParentDistince[i].subs.push(dataChild[j]);
                        }
                    }
                }

                comboChuanBiID = $('#ChuanBiID').comboTree({
                    source: SelectParentDistince,
                    isMultiple: true,
                    cascadeSelect: true,
                    collapse: false
                });
                comboThanhPhanID = $('#ThanhPhanID').comboTree({
                    source: SelectParentDistince,
                    isMultiple: true,
                    cascadeSelect: true,
                    collapse: false
                });
                comboDoiTuongNhacID = $('#DoiTuongNhacID').comboTree({
                    source: SelectParentDoiTuongNhac,
                    isMultiple: true,
                    cascadeSelect: true,
                    collapse: false
                });

                comboChuTriID = $('#ChuTriID').comboTree({
                    source: SelectParentUsers,
                    isMultiple: true,
                    cascadeSelect: true,
                    collapse: false
                });
                var SelectParentUsersChuTri = SelectParentUsers;
                SelectParentUsersChuTri.push({ id: 0, title: "Tất cả", subs: [] });
                comboChonChuTriID = $('#ChonChuTriID').comboTree({
                    source: SelectParentUsersChuTri,
                    isMultiple: false,
                    cascadeSelect: true,
                    collapse: false,
                    selected: ['0']
                });


                comboThuKyID = $('#ThuKyID').comboTree({
                    source: SelectParentUsers,
                    isMultiple: false,
                    cascadeSelect: true,
                    collapse: false
                });


                comboPhongHopID = $('#PhongHopID').comboTree({
                    source: SelectParentPhongHop,
                    isMultiple: false
                });

                comboDoiTuongXemID = $('#DoiTuongXemID').comboTree({
                    source: SelectParentDoiTuongNhac,
                    isMultiple: false
                });

                comboLinhVucID = $('#LinhVucID').comboTree({
                    source: SelectParentLinhVuc,
                    isMultiple: false
                });
                comboThoiGianNhacLichHop = $('#ThoiGianNhacLichHop').comboTree({
                    source: SelectParentThoiGianNhacLichHop,
                    isMultiple: false
                });

                comboLyDoVangID = $('#LyDoVangID').comboTree({
                    source: SelectParentLyDoVang,
                    isMultiple: false
                });

                comboPhongBanDonViXuLyID = $('#PhongBanDonViXuLyID').comboTree({
                    source: SelectParentPhongBan,
                    isMultiple: false
                });

                comboNguoiChiDaoID = $('#NguoiChiDaoID').comboTree({
                    source: SelectParentNguoiChiDao,
                    isMultiple: false
                });
                comboNguoiTheoDoiID = $('#NguoiTheoDoiID').comboTree({
                    source: SelectParentNguoiTheoDoi,
                    isMultiple: false
                });

                //comboDataChuanBi.setSource(dataChild);
                //comboDataThanhPhan.setSource(dataChild);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });


    }




    function removeItem(array, item) {
        for (var i in array) {
            if (array[i] == item) {
                array.splice(i, 1);
                break;
            }
        }
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

        var obj =
        {
            "obj": {
                "LichHopID": LichHopID,
                "DoiTuongXemID": 5
            },
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/CN_Load_DanhSachTaiLieuByUserID",
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

    function ShowFile(LichHopID) {
        var obj =
        {
            "LichHopID": LichHopID,
            "DoiTuongXemID": 5

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

    $("#HanXuLy").on("keyup keydown change", function (event) {
        var ms = new Date().getTime() + (86400000 * $("#HanXuLy").val());
        var added = new Date(ms);
        $("#Ngay").ejDatePicker({
            dateFormat: "dd/MM/yyyy",
            value: added,
            width: "100%",
            locale: "vi-VN",
            readOnly: true
        });
    });
    $("#btnThemShowThemFileDinhkem").click(function () {
        var notify = "Vui lòng không được để trống";
        var TenTaiLieu = $("#TenTaiLieuShowThemFileDinhkem").val();
        var TaiLieuID = $("#TaiLieuIDShowThemFileDinhkem").val();
        if (!TenTaiLieu) {
            alert_info(notify);
            return;
        }
        var fileUpload = $("#fileSelectShowThemFileDinhkem").get(0);
        var FileID = $("#FileIDShowThemFileDinhkem").val();
        var TenFile = $("#TenFileShowThemFileDinhkem").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDShowThemFileDinhkem").val() == "") {
            alert_info("Vui lòng đính kèm file");
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

        var data =
        {
            "obj": {
                "TaiLieuID": TaiLieuID,
                "TenTaiLieu": TenTaiLieu,
                "TenFile": TenFile,
                "FileID": FileID,
                "IsDelete": false,
                "LichHopID": $("#LichHopID").val()
            }
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUploadCaNhan",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });
                $("#TaiLieuIDShowThemFileDinhkem").val("0");
                $("#TenTaiLieuShowThemFileDinhkem").val("");
                $("#fileSelectShowThemFileDinhkem").val(null);
                $("#TenFileShowThemFileDinhkem").val("");
                $("#FileIDShowThemFileDinhkem").val("");
                $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
                LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    });



    $("#btnChiaSeTaiLieu").click(function () {
        var data = $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('getAllSelections')
        if (data.length == 0) {
            alert_info("Vui lòng chọn dữ liệu cần chia sẻ")
            return;
        }
        else {
            this._customAppointmentWindow = $("#customWindowChiaSeTaiLieu");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "50%",
                showOnInit: false,
                enableModal: true,
                title: "Thông tin chia sẻ tài liệu",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmentWindowChiaSeTaiLieu").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            comboChuTriID.clearSelection();

        }
    });

    $("#btnChiaSe").click(function () {
        var NguoiNhanChiaSeID = comboChuTriID.getSelectedIds();
        if (!NguoiNhanChiaSeID) {
            alert_info("Vui lòng chọn đại biểu");
            return;
        }
        else {
            var dataFileCaNhan = $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('getAllSelections')
            if (dataFileCaNhan.length == 0) {
                alert_info("Vui lòng chọn dữ liệu cần chia sẻ")
                return;
            }
            else {
                var ListDataChiaSe = [];
                for (var i = 0; i < dataFileCaNhan.length; i++) {
                    for (var j = 0; j < NguoiNhanChiaSeID.length; j++) {
                        ListDataChiaSe.push({ NguoiNhanChiaSeID: NguoiNhanChiaSeID[j], TaiLieuChiaSeID: dataFileCaNhan[i].TaiLieuID });
                    }
                }
            }
            var obj = {
                "ListDataChiaSe": ListDataChiaSe
            }
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Mobile_CN_TAILIEU_CHIASE_Ins",
                data: JSON.stringify(obj),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var dataID = JSON.parse(reponse.d);
                        if (dataID[0].Column1 != 0) {
                            alert_success("Chia sẻ thành công");
                            LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
                        }
                        else {
                            alert_error("Xảy ra lỗi");
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
    });

    $("#btnLuuVaoTaiLieuCaNhan").click(function () {
        var dataTaiLieuHop = $("#IDTableDanhSachTaiLieuHop").bootstrapTable('getAllSelections')
        if (dataTaiLieuHop.length == 0) {
            alert_info("Vui lòng chọn dữ liệu cần lưu vào tài liệu cá nhân")
            return;
        }
        else {
            var ListDataLuuVaoTaiLieuCaNhan = [];
            for (var i = 0; i < dataTaiLieuHop.length; i++) {
                ListDataLuuVaoTaiLieuCaNhan.push({ TaiLieuCuocHopID: dataTaiLieuHop[i].TaiLieuCuocHopID });
            }

            var obj = {
                "ListDataLuuVaoTaiLieuCaNhan": ListDataLuuVaoTaiLieuCaNhan
            }
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Mobile_CN_TAILIEU_Ins",
                data: JSON.stringify(obj),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        var dataID = JSON.parse(reponse.d);
                        if (dataID[0].Column1 != 0) {
                            alert_success("Lưu vào tài liệu cá nhân thành công");
                            LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
                        }
                        else {
                            alert_error("Xảy ra lỗi");
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
    });


    $("#btnPopupPhatHanhLichHop").click(function () {
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
        $("#lblTuNgay").text(TuNgay.split("-").reverse().join("/"));
        $("#lblDenNgay").text(DenNgay.split("-").reverse().join("/"));
        LoadPhatHanhByThoiGian(TuNgay, DenNgay, "3,8"); //đã duyệt, đã phát hành
        $("#IsClickPhatHanhMutil").val("0");
        $("#ListEmailThanhPhan").val("");

    });

    $("#btnPopupXemLichHopPhatHanh").click(function () {
        this._customAppointmentWindow = $("#customWindowXemLichHopPhatHanh");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
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
        $("#lblTuNgayXemLichHopPhatHanh").text(TuNgay.split("-").reverse().join("/"));
        $("#lblDenNgayXemLichHopPhatHanh").text(DenNgay.split("-").reverse().join("/"));
        LoadPhatHanhLichSuTheoThoiGian(TuNgay, DenNgay);
    });

    $("#btnSearch").click(function () {
        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), null);
    });
    function searchKeyUp() {
        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), null);
    }
    $("#btnPopUpDanhSachSchedule").click(function () {
        this._customAppointmentWindow = $("#customWindowDanhSachSchedulePhatHanh");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách lịch họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowDanhSachSchedulePhatHanh").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        Load_DanhSach_Schedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "", null, "IDTableDanhSachSchedulePhatHanh");


    });

    $('#btnPrint').bind("click", function () {
        var obj = $("#Schedule1").data("ejSchedule");
        obj.print();
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
        Load_DanhSach_Schedule(Role, TuNgay, DenNgay, "", "", Loai, "", null, "IDTableDanhSachSchedulePhatHanhXuatExcel");

    });

    $("#btnXemThaoLuan").click(function () {
        this._customAppointmentWindow = $("#customWindowGuiThaoLuan");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Nôi dung thảo luận",
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

    $("#btnHuyLichHop").click(function () {
        if (confirm('Bạn có chắc chắn muốn hủy lịch họp?')) {
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
                        LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                    }
                    else {
                        alert_error("Xảy ra lỗi")

                    }


                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });


        } else {



        }
    });


    $("#btnPheDuyetLichHop").click(function () {
        if (confirm('Bạn có chắc chắn muốn phê duyệt lịch họp?')) {
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
                        LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                    }
                    else {
                        alert_error("Xảy ra lỗi")

                    }


                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });


        } else {



        }
    });


    $("#btnXoaLichHop").click(function () {
        XoaLichHop($("#LichHopID").val())
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
    });

    function XoaLichHop(LichHopID) {

        if (confirm('Bạn có chắc chắn muốn xóa lịch họp?')) {
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
                        LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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


        } else {

        }
    }
    $("#btnChuyenDuyet").click(function () {
        ChuyenDuyet($("#LichHopID").val());
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
    });

    function ChuyenDuyet(LichHopID) {
        if (confirm('Bạn có muốn chuyển duyệt không?')) {
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
                            LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
        } else {

        }
    }
    $("#btnChuyenDuyetCuocHop").click(function () {
        if (confirm('Bạn có muốn chuyển duyệt không?')) {
            var dataChuyenDuyet =
            {
                "LichHopID": $("#LichHopID").val(),
                "TinhTrangID": $("#TinhTrangID").val(),
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
                            LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
        } else {

        }

    });

    $("#btnSuaLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        SuaLichHop($("#LichHopID").val());
    });

    function SuaLichHop(LichHopID) {

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
                        $("#TenCuocHop").val(LichHop[0].TenCuocHop);
                        $("#TinhTrangID").val(LichHop[0].TinhTrangID);

                        $("#GioBatDau").val(LichHop[0].GioBatDau.split(":")[0]);
                        $("#PhutBatDau").val(LichHop[0].GioBatDau.split(":")[1]);
                        $("#GioKetThuc").val(LichHop[0].GioKetThuc.split(":")[0]);
                        $("#PhutKetThuc").val(LichHop[0].GioKetThuc.split(":")[1]);

                        $("#NgayHop").ejDatePicker({
                            value: new Date(LichHop[0].NgayHop),
                            dateFormat: "dd/MM/yyyy",
                            width: "100%"
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
                        if (ChuanBi.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < ChuanBi.length; i++) {
                                ArrayValue.push(ChuanBi[i].UserID);
                            }
                            comboChuanBiID.setSelection(ArrayValue);
                        }
                        else {
                            comboChuanBiID.clearSelection();
                        }

                        if (ThanhPhan.length > 0) {
                            ArrayValue = [];
                            for (var i = 0; i < ThanhPhan.length; i++) {
                                ArrayValue.push(ThanhPhan[i].UserID);
                            }
                            comboThanhPhanID.setSelection(ArrayValue);
                        }
                        else {
                            comboThanhPhanID.clearSelection();
                        }
                        $("#ThanhPhanThamDuKhac").val(LichHop[0].ThanhPhanThamDuKhac);

                        $("#GhiChu").val(LichHop[0].GhiChu);

                        comboPhongHopID.setSelection([LichHop[0].PhongHopID]);
                        comboDoiTuongXemID.setSelection([LichHop[0].DoiTuongXemID]);
                        comboChuTriID.setSelection([LichHop[0].NguoiChuTriID]);
                        comboThuKyID.setSelection([LichHop[0].ThuKyID]);

                        $('#IDTableDanhSachTaiLieu').bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });
                        this._customAppointmentWindow = $("#customWindow");
                        this._customAppointmentWindow.ejDialog({
                            //width: (this._mediaQuery) ? "100%" : 600,
                            width: "80%",
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
                    let doituongXemFile = LichHop[0].DoiTuongXemID;
                    if (doituongXemFile != null && (doituongXemFile.includes(5) || (doituongXemFile.includes(0)))) {
                        var TaiLieu = JSON.parse(ResultData.LH_TAILIEUCUOCHOP);
                    }
                    else {
                        var TaiLieu = [];
                    }
                    //var TaiLieu = JSON.parse(ResultData.LH_TAILIEUCUOCHOP);
                    var DoiTuongNhac = JSON.parse(ResultData.LH_DOITUONGNHAC);
                    var ThanhPhan = JSON.parse(ResultData.LH_THANHPHAN);
                    var ChuanBi = JSON.parse(ResultData.LH_CHUANBI);

                    if (LichHop) {

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





                        var ArrayValue = [];
                        if (LichHop[0].ChuTriPhu != "") {
                            ArrayValue = [];
                            ArrayValue.push(LichHop[0].NguoiChuTriID)
                            for (var i = 0; i < LichHop[0].ChuTriPhu.split(',').length; i++) {
                                ArrayValue.push(LichHop[i].ChuTriPhu.split(',')[i])
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
                                ArrayValue.push(LichHop[i].ThuKyPhu.split(',')[i])
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

                        if (LichHop[0].PhongHopID == "8") {
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
                        if (TaiLieu.length > 0) {
                            TaiLieu = TaiLieu.filter(x => x.DuocCongKhai == true);
                        }
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

                    LoadThaoLuanByLichHopID($("#LichHopID").val(), "IDTableDanhSachThaoLuanDetail");
                    LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
                    LoadXemBieuQuyetByLichHopID($("#LichHopID").val());
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

    function formatDateddMMyyyyHHmm(dateVal) {
        var newDate = new Date(dateVal);

        var sMonth = padValue(newDate.getMonth() + 1);
        var sDay = padValue(newDate.getDate());
        var sYear = newDate.getFullYear();
        var sHour = newDate.getHours();
        var sMinute = padValue(newDate.getMinutes());
        var sAMPM = "AM";

        var iHourCheck = parseInt(sHour);

        if (iHourCheck > 12) {
            sAMPM = "PM";
            sHour = iHourCheck - 12;
        }
        else if (iHourCheck === 0) {
            sHour = "12";
        }

        sHour = padValue(sHour);

        return sDay + "/" + sMonth + "/" + sYear + " " + sHour + ":" + sMinute + " " + sAMPM;
    }

    function padValue(value) {
        return (value < 10) ? "0" + value : value;
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

        LoadXemBieuQuyetByLichHopID($("#LichHopID").val())
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
            title: "Thêm ghi chú",
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

        LoadBieuQuyetByLichHopID($("#LichHopID").val());
        this._customAppointmentWindow.find("#customAppointmentWindowThemBieuQuyet").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");


    });

    $("#btnLuuChuongTrinhHop").click(function () {

        var text = $("#summernote").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_info("Bạn chưa nhập nội dung ghi chú");
            return;
        }
        $("#summernote").summernote("code");
        //You must use $(".summernote").summernote("code", "your text");
        if ($("#summernote").summernote("code") != "") {
            var dataLChuongTrinhHop =
            {
                "obj": {
                    "LichHopID": $("#LichHopID").val(),
                    "TenChuongTrinh": $("#summernote").summernote("code"),
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
                        $("#ChuongTrinhHopID").val(dataID);
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





    });

    $("#btnLuu").click(function () {

        var TenCuocHop = $("#TenCuocHop").val();
        var TinhTrangID = $("#TinhTrangID").val();

        if (!TenCuocHop) {
            alert_info("Vui lòng nhập tên cuộc họp");
            return
        }
        var GioBatDau = $("#GioBatDau").val();
        var PhutBatDau = $("#PhutBatDau").val();

        var GioKetThuc = $("#GioKetThuc").val();
        var PhutKetThuc = $("#PhutKetThuc").val();

        if (!GioBatDau || !PhutBatDau || !GioKetThuc || !PhutKetThuc) {
            alert("Vui lòng chọn thời gian cuộc họp");
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
            alert_info("Thời gian bắt đầu không được lớn hơn thời gian kết thúc ")
            return;
        }

        var ThoiGianNhacLichHop = comboThoiGianNhacLichHop.getSelectedIds();
        var DoiTuongNhacLichHopID = comboDoiTuongNhacID.getSelectedIds();

        var ChuTriID = comboChuTriID.getSelectedIds();
        if (!ChuTriID) {
            alert_info("Vui lòng chọn chủ trì");
            return;
        }

        var KhongHienThi = $("#KhongHienThi").val();
        var ThuKyID = comboThuKyID.getSelectedIds();

        // Begin xử lý phức tạp
        var ChuanBiID = comboChuanBiID.getSelectedIds();
        var ThanhPhanID = comboThanhPhanID.getSelectedIds();
        if (ThanhPhanID == null) {
            alert_info("Vui lòng chọn thành phần");
            return;
        }
        var ArrayChuanBi = [];
        var ArrayThanhPhan = [];

        if (ChuanBiID) {
            for (var i = 0; i < SelectParentDistince.length; i++) {
                removeItem(ChuanBiID, SelectParentDistince[i].id)
            }
            for (var i = 0; i < ChuanBiID.length; i++) {
                for (var j = 0; j < DataThanhPhanChuanBi.length; j++) {
                    if (ChuanBiID[i] == DataThanhPhanChuanBi[j].UserID) {
                        ArrayChuanBi.push({ PhongBanID: DataThanhPhanChuanBi[j].Ma, UserID: DataThanhPhanChuanBi[j].UserID })
                        break;
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
                        ArrayThanhPhan.push({ PhongBanID: DataThanhPhanChuanBi[j].Ma, UserID: DataThanhPhanChuanBi[j].UserID })
                        break;
                    }
                }
            }


        }

        // End
        var ThanhPhanThamDuKhac = $("#ThanhPhanThamDuKhac").val();
        var PhongHopID = comboPhongHopID.getSelectedIds();

        if (PhongHopID == null) {
            alert_info("Vui lòng chọn phòng họp");
            return;
        }
        var GhiChu = $("#GhiChu").val();
        var DoiTuongXemID = comboDoiTuongXemID.getSelectedIds();
        var NgayHopFormat = NgayHop.split("/").reverse().join("-");

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


                        var dataLichHop =
                        {
                            "objLichHop": {
                                "LichHopID": $("#LichHopID").val(),
                                "TenCuocHop": TenCuocHop,
                                "NgayHop": NgayHopFormat,
                                "GioBatDau": ThoiGianTu,
                                "GioKetThuc": ThoiGianDen,
                                "ThoiGianNhacLichHop": ThoiGianNhacLichHop != null ? ThoiGianNhacLichHop.toString() : "",
                                "NguoiChuTriID": ChuTriID != null ? ChuTriID.toString() : "",
                                "ThuKyID": ThuKyID != null ? ThuKyID.toString() : "",
                                "KhongHienThi": KhongHienThi == "false" ? false : true,
                                "ThanhPhanThamDuKhac": ThanhPhanThamDuKhac,
                                "PhongHopID": PhongHopID != null ? PhongHopID.toString() : "",
                                "DoiTuongXemID": DoiTuongXemID != null ? DoiTuongXemID.toString() : "",
                                //"QuaTrinhXuLyHienTaiID":  ,
                                "TinhTrangID": TinhTrangID,
                                "GhiChu": GhiChu,
                                "IsDelete": false
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
                                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                                if (reponse.d) {
                                    var dataID = JSON.parse(reponse.d);
                                    $("#LichHopID").val(dataID[0].LichHopID);
                                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
                    else {
                        alert_info("Lịch họp này đã trùng với phòng họp hiện tại .Xin vui lòng chọn phòng họp khác")
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

    });




    $("#btnThem").click(function () {
        var notify = "Vui lòng không được để trống";
        var TenTaiLieu = $("#TenTaiLieu").val();
        var TaiLieuID = $("#TaiLieuID").val();
        if (!TenTaiLieu) {
            alert_info(notify);
            return;
        }
        var DuocCongKhai = $("#DuocCongKhai").val();
        var fileUpload = $("#fileSelect").get(0);
        var FileID = $("#FileID").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileID").val() == "") {
            alert_info("Vui lòng đính kèm file");
            return;
        }
        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        if (files.length == 0 && FileID != "") { // không có file đính kèm và đã tồn tại file trên lưới
            for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                if (DataDanhSachTaiLieu[i].FileID == FileID) {
                    DataDanhSachTaiLieu[i].TenTaiLieu = TenTaiLieu;
                    DataDanhSachTaiLieu[i].DuocCongKhai = DuocCongKhai;
                }
            }
            $("#TenTaiLieu").val("");
            $("#TaiLieuID").val(0);
            $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });
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
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                            if (DataDanhSachTaiLieu[i].FileID == FileID) {
                                DataDanhSachTaiLieu[i].TenTaiLieu = TenTaiLieu;
                                DataDanhSachTaiLieu[i].DuocCongKhai = DuocCongKhai;
                                DataDanhSachTaiLieu[i].TenFile = obj.TenFile;
                                DataDanhSachTaiLieu[i].FileID = obj.FileID;
                            }
                        }
                        $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });
                        $("#TaiLieuID").val("0");
                        $("#TenTaiLieu").val("");
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
                success: function (reponse) {
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        var item =
                        {
                            "TaiLieuID": TaiLieuID,
                            "TenTaiLieu": TenTaiLieu,
                            "DuocCongKhai": DuocCongKhai,
                            "TenFile": obj.TenFile,
                            "FileID": obj.FileID,
                            "IsDelete": false,
                            "LichHopID": $("#LichHopID").val()
                        };
                        DataDanhSachTaiLieu.push(item);
                        $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });

                        $("#TaiLieuID").val("");
                        $("#TenTaiLieu").val("");
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
    });

    function SaveBieuQuyet(BieuQuyetID, LichHopID, TieuDe, NoiDung, IsDelete) {
        if (IsDelete == true) {// hành động xóa
            if (!BieuQuyetID) {
                alert_error("Bạn chưa có biểu quyết ID");
                return;
            }
        }
        else {

            if (!TieuDe) {
                alert_info("Vui lòng không được để trống");
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
            if (!BieuQuyetID) {
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
                    debugger;
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
            alert_info("Vui lòng chọn lĩnh vực");
            return
        }
        if ($("#NoiDung").val() == "") {
            alert_info("Vui lòng nhập nội dung");
            return
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
        $("#fileSelect").val(null);
        $("#FileIDThaoLuan").val("");
        $("#TenFileThaoLuan").val("");
    });

    $("#btnPhatHanh").click(function () {
        if ($("#PhatHanhID").val() == "0") {
            alert_info("Xin vui lòng lưu thông tin trước khi phát hành")
            return;
        }
        if (confirm("Bạn có chắc chắn muốn phát hành không ?")) {

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
                    if (reponse.d) {
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
                                Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                            }
                            LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                        }
                        else {
                            alert_error("Phát hành thất bại");
                        }
                    }
                    else {

                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });


        }

    });
    $("#btnPhatHanhTrucTiep").click(function () {
        PhatHanhTrucTiep();
    });


    $("#btnPhatHanhMulti").click(function () {
        var data = $("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.TinhTrangID != 2);// chờ duyệt
            if (DuLieuKhongHopLe.length > 0) {
                alert_info("Vui lòng chọn đúng dữ liệu với tình trạng chờ duyệt để phê duyệt")
                return;
            }
            else {
                if (confirm("Bạn có muốn phê duyệt lịch họp không")) {
                    for (var i = 0; i < data.length; i++) {
                        var dataLichHop =
                        {
                            "objLichHop": {
                                "LichHopID": data[i].LichHopID,
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
                    alert_success("Phê duyệt thành công");
                    Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                }
            }
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu cần phê duyệt")
            return;
        }

    });

    $("#btnHuyLichHopMulti").click(function () {
        var data = $("#IDTableDanhSachSchedulePhatHanh").bootstrapTable('getAllSelections')
        if (data.length > 0) {
            var DuLieuKhongHopLe = data.filter(x => x.TinhTrangID != 3);// đã phát hành
            if (DuLieuKhongHopLe.length > 0) {
                alert_info("Vui lòng chọn đúng dữ liệu với tình trạng đã phát hành để hủy lịch họp")
                return;
            }
            else {
                if (confirm("Bạn có có chắn chắn hủy lịch họp không")) {
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
                    Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");
                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                }
            }
        }
        else {
            alert_info("Bạn chưa chọn dữ liệu cần phát hành")
            return;
        }

    });

    function PhatHanhTrucTiep() {
        var NoiDungPhatHanh = $("#NoiDungPhatHanh").val();
        var PhatHanhID = $("#PhatHanhID").val();

        var EmailNhanThongBao = $("#EmailNhanThongBao").val();
        if (NoiDungPhatHanh == "") {
            alert_info("Nội dung không được để trống")
            return;
        }
        if (EmailNhanThongBao == "") {
            alert_info("Email không được để trống")
            return;
        }
        var fileUpload = $("#fileSelectPhatHanh").get(0);
        var TenFile = $("#TenFilePhatHanh").val();
        var FileID = $("#FileIDPhatHanh").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDPhatHanh").val() == "") {
            alert_info("Vui lòng đính kèm file");
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
                "EmailNhanThongBao": EmailNhanThongBao,
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
                var data = JSON.parse(reponse.d);
                if (data && data[0].IsSuccess == 1) {
                    alert_success("Phát hành thành công");
                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                    this._customAppointmentWindow = $("#customWindowPhatHanhLichHop");
                    this._customAppointmentWindow.ejDialog("close");
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

    function LoadDataTable(LichHopID, TenTable, IDTable, PhatHanh) {
        var dataTable =
        {
            "obj": {
                "LichHopID": LichHopID,
                "TenTable": TenTable,
                "PhatHanh": PhatHanh
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

    $("#btnLuuPhatHanh").click(function () {
        var NoiDungPhatHanh = $("#NoiDungPhatHanh").val();
        var PhatHanhID = $("#PhatHanhID").val();

        var EmailNhanThongBao = $("#EmailNhanThongBao").val();
        if (NoiDungPhatHanh == "") {
            alert_info("Nội dung không được để trống")
            return;
        }
        if (EmailNhanThongBao == "") {
            alert_info("Email không được để trống")
            return;
        }
        var fileUpload = $("#fileSelectPhatHanh").get(0);
        var TenFile = $("#TenFilePhatHanh").val();
        var FileID = $("#FileIDPhatHanh").val();
        var files = fileUpload.files;
        if (files.length == 0 && $("#FileIDPhatHanh").val() == "") {
            alert_info("Vui lòng đính kèm file");
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
                "EmailNhanThongBao": EmailNhanThongBao,
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


    $("#btnKetNoiHopTrucTuyen").click(function () {
        this._customAppointmentWindow = $("#customWindowKetNoiHopTrucTuyen");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "50%",
            showOnInit: false,
            enableModal: true,
            title: "Kết nối họp trực tiếp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowKetNoiHopTrucTuyen").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });

    $("#btnTrungLich").click(function () {
        $("#IsClickDanhSachCuocHop").val("0");
        this._customAppointmentWindow = $("#customWindowBaoVang");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            height: "70%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin vào họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowBaoVang").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        comboLyDoVangID.clearSelection();
        $("#GhiChuBaoVang").val("");
        $("#IsClickTrungLich").val("1");


    });



    $("#btnDangKyPhatBieu").click(function () {

        this._customAppointmentWindow = $("#customWindowDangKyPhatBieu");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Đăng ký phát biểu",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowDangKyPhatBieu").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        LoadDangKyPhatBieuTheoLichHopID($("#LichHopID").val());
    });

    $("#btnBaoVang").click(function () {
        $("#IsClickDanhSachCuocHop").val("0");
        this._customAppointmentWindow = $("#customWindowBaoVang");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin vào họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowBaoVang").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        comboLyDoVangID.clearSelection();
        $("#GhiChuBaoVang").val("");
        $("#IsClickTrungLich").val("0");


    });

    $("#btnChapNhanHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        alertify.confirm("<h4>Bạn có chấp nhận họp không ? </h4>",
            function () {
                ChapNhanHop();
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

    });

    $("#btnThemGiaoViec").click(function () {
        this._customAppointmentWindow = $("#customWindowGiaoViec");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin giao việc",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowGiaoViec").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        $("#GiaoViecID").val(0);
        $("#fileSelectGiaoViec").val(null);
        $("#summernoteNoiDungGiaoViec").summernote("code", "");
        $("#Ngay").ejDatePicker({
            dateFormat: "dd/MM/yyyy",
            value: new Date(),
            width: "100%",
            locale: "vi-VN",
            readOnly: true
        });
        $("#divNoiDungKhongPheDuyet").hide("");
        $("#HanXuLy").val(0);
        comboNguoiChiDaoID.clearSelection();
        comboNguoiTheoDoiID.clearSelection();
        $("#PhongBanDonViPhoiHop").val("");

        $("#FileIDGiaoViec").val("");
        $("#TenFileGiaoViec").val("");
        $("#divIDTableFileGiaoViec").hide();
        $("#IDTableFileGiaoViec").bootstrapTable('refreshOptions', { data: "" });
        $("#IDTableDanhSachNguoiXuLy").bootstrapTable('refreshOptions', { data: "" });
    });

    $("#btnTroVeGiaoViec").click(function () {
        this._customAppointmentWindow = $("#customWindowGiaoViec");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeChiTietGiaoViec").click(function () {
        this._customAppointmentWindow = $("#customWindowChiTietGiaoViec");
        this._customAppointmentWindow.ejDialog("close");
    })
    $("#btnLuuChiTietGiaoViec").click(function () {

        var text = $("#summernoteNoiDungChiTietGiaoViec").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_warning("Bạn chưa nhập chi tiết giao việc");
            return;
        }
        var ChiTietGiaoViec = $("#summernoteNoiDungChiTietGiaoViec").summernote("code");

        var dataGiaoViec = {
            "obj": {
                "GiaoViecID": $("#GiaoViecID").val(),
                "ChiTietGiaoViec": ChiTietGiaoViec,
                "IsDelete": false
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_GiaoViec_UpdateChiTietGiaoViec",
            data: JSON.stringify(dataGiaoViec),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    $("#GiaoViecID").val(dataID[0].GiaoViecID);
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

    });

    $("#btnLuuGiaoViec").click(function () {

        var text = $("#summernoteNoiDungGiaoViec").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_warning("Bạn chưa nhập nội dung giao việc");
            return;
        }
        var NoiDungGiaoViec = $("#summernoteNoiDungGiaoViec").summernote("code");

        var PhongBanDonViXuLyID = comboPhongBanDonViXuLyID.getSelectedIds();
        if (!PhongBanDonViXuLyID) {
            alert_warning("Bạn chưa chọn phòng ban/Đơn vị xử lý");
            return;
        }

        var Ngay = $("#Ngay").val().split("/").reverse().join("-");
        var HanXuLy = $("#HanXuLy").val();

        var NguoiChiDaoID = comboNguoiChiDaoID.getSelectedIds();
        if (!NguoiChiDaoID) {
            alert_warning("Bạn chưa chọn người chỉ đạo");
            return;
        }
        var NguoiTheoDoiID = comboNguoiTheoDoiID.getSelectedIds();
        if (!NguoiTheoDoiID) {
            alert_warning("Bạn chưa chọn người theo dõi");
            return;
        }

        var PhongBanDonViPhoiHop = $("#PhongBanDonViPhoiHop").val();



        //if ($("input[type=radio][name=HanXuLy]").is(':checked')) {
        //    var value = $('input[type=radio][name=HanXuLy]:checked').val();
        //    GioGiaoViecID = null;
        //    NgayHanXuLy = null;
        //    IsKhongThoihan = null;
        //    if (value == "Giờ") {
        //        GioGiaoViecID = comboGioGiaoViecID.getSelectedIds();
        //        if (GioGiaoViecID == null) {
        //            alert_info("Vui lòng chọn giờ xử lý");
        //            return;
        //        }
        //    }
        //    if (value == "Ngày") {
        //        if ($("#NgayGiaoViec").val() != "") {
        //            NgayHanXuLy = $("#NgayGiaoViec").val().split("/").reverse().join("-");
        //        }
        //        else {
        //            alert_info("Vui lòng chọn ngày hạn xử lý")
        //            return;
        //        }
        //    }

        //    if (value == "Không thời hạn") {
        //        IsKhongThoihan = true;
        //    }
        //}
        //var ThoiGianNhacViecTuDong = comboThoiGianNhacViecID.getSelectedIds();
        //if (ThoiGianNhacViecTuDong == null) {
        //    alert_info("Vui lòng chọn thời gian nhắc việc tự động");
        //    return;
        //}
        //var PhongBanID = comboPhongBanID.getSelectedIds();
        //if (PhongBanID == null) {
        //    alert_info("Vui lòng chọn phòng ban");
        //    return;
        //}

        //var dataNguoiXuLy = $("#IDTableDanhSachNguoiXuLy").bootstrapTable('getData');
        //var TruongNhomID = "";
        //var TenTruongNhom = "";
        //var NguoiXuLyID = "";
        //var TenNguoiXuLy = "";
        //var IsTruongNhom = dataNguoiXuLy.filter(x => x.IsTruongNhom);
        //var IsNguoiXuLy = dataNguoiXuLy.filter(x => x.IsCheck);

        //if (IsTruongNhom.length == 0) {
        //    alert_info("Bạn chưa chọn trưởng nhóm");
        //    return;
        //}

        //if (IsNguoiXuLy.length == 0) {
        //    alert_info("Bạn chưa chọn người xử lý");
        //    return;
        //}

        //if (dataNguoiXuLy != null && dataNguoiXuLy.length > 0) {
        //    for (var i = 0; i < dataNguoiXuLy.length; i++) {
        //        if (dataNguoiXuLy[i].IsTruongNhom == true) {
        //            TruongNhomID += dataNguoiXuLy[i].UserID + ",";
        //            TenTruongNhom += dataNguoiXuLy[i].FullName + ",";
        //        }
        //        if (dataNguoiXuLy[i].IsCheck == true) {
        //            NguoiXuLyID += dataNguoiXuLy[i].UserID + ",";
        //            TenNguoiXuLy += dataNguoiXuLy[i].FullName + ",";
        //        }
        //    }

        //}

        var fileUpload = $("#fileSelectGiaoViec").get(0);
        var FileID = $("#FileIDGiaoViec").val();
        var TenFile = $("#TenFileGiaoViec").val();
        var files = fileUpload.files;
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
        var dataGiaoViec = {
            "obj": {
                "GiaoViecID": $("#GiaoViecID").val(),
                "LichHopID": $("#LichHopID").val(),
                "NoiDung": NoiDungGiaoViec,
                "PhongBanDonViXuLyID": PhongBanDonViXuLyID.toString(),
                "HanXuLy": HanXuLy,
                "Ngay": Ngay,
                "NguoiChiDaoID": NguoiChiDaoID.toString(),
                "NguoiTheoDoiID": NguoiTheoDoiID.toString(),
                "PhongBanDonViPhoiHop": PhongBanDonViPhoiHop,
                "DoiTuongID": 5,
                "TenFile": TenFile,
                "FileID": FileID,
                "IsDelete": false

            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GiaoViec_InsUpDel",
            data: JSON.stringify(dataGiaoViec),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if ($("#GiaoViecID").val() == "0") {

                    }
                    $("#GiaoViecID").val(dataID[0].GiaoViecID);
                    alert_success("Lưu thành công");
                    LoadGiaoViecTheoLichHopID($("#LichHopID").val());
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

    $("#btnChuyenGiaoViec").click(function () {
        if ($("#GiaoViecID").val() == "0") {
            alert_warning("Bạn chưa lưu nôi dung giao việc");
            return;
        }

        var text = $("#summernoteNoiDungGiaoViec").summernote("code").replace(/&nbsp;|<\/?[^>]+(>|$)/g, "").trim();
        if (text.length == 0) {
            alert_warning("Bạn chưa nhập nội dung giao việc");
            return;
        }
        var NoiDungGiaoViec = $("#summernoteNoiDungGiaoViec").summernote("code");

        var PhongBanDonViXuLyID = comboPhongBanDonViXuLyID.getSelectedIds();
        if (!PhongBanDonViXuLyID) {
            alert_warning("Bạn chưa chọn phòng ban/Đơn vị xử lý");
            return;
        }

        var Ngay = $("#Ngay").val().split("/").reverse().join("-");
        var HanXuLy = $("#HanXuLy").val();

        var NguoiChiDaoID = comboNguoiChiDaoID.getSelectedIds();
        if (!NguoiChiDaoID) {
            alert_warning("Bạn chưa chọn người chỉ đạo");
            return;
        }
        var NguoiTheoDoiID = comboNguoiTheoDoiID.getSelectedIds();
        if (!NguoiTheoDoiID) {
            alert_warning("Bạn chưa chọn người theo dõi");
            return;
        }

        var PhongBanDonViPhoiHop = $("#PhongBanDonViPhoiHop").val();



        //if ($("input[type=radio][name=HanXuLy]").is(':checked')) {
        //    var value = $('input[type=radio][name=HanXuLy]:checked').val();
        //    GioGiaoViecID = null;
        //    NgayHanXuLy = null;
        //    IsKhongThoihan = null;
        //    if (value == "Giờ") {
        //        GioGiaoViecID = comboGioGiaoViecID.getSelectedIds();
        //        if (GioGiaoViecID == null) {
        //            alert_info("Vui lòng chọn giờ xử lý");
        //            return;
        //        }
        //    }
        //    if (value == "Ngày") {
        //        if ($("#NgayGiaoViec").val() != "") {
        //            NgayHanXuLy = $("#NgayGiaoViec").val().split("/").reverse().join("-");
        //        }
        //        else {
        //            alert_info("Vui lòng chọn ngày hạn xử lý")
        //            return;
        //        }
        //    }

        //    if (value == "Không thời hạn") {
        //        IsKhongThoihan = true;
        //    }
        //}
        //var ThoiGianNhacViecTuDong = comboThoiGianNhacViecID.getSelectedIds();
        //if (ThoiGianNhacViecTuDong == null) {
        //    alert_info("Vui lòng chọn thời gian nhắc việc tự động");
        //    return;
        //}
        //var PhongBanID = comboPhongBanID.getSelectedIds();
        //if (PhongBanID == null) {
        //    alert_info("Vui lòng chọn phòng ban");
        //    return;
        //}

        //var dataNguoiXuLy = $("#IDTableDanhSachNguoiXuLy").bootstrapTable('getData');
        //var TruongNhomID = "";
        //var TenTruongNhom = "";
        //var NguoiXuLyID = "";
        //var TenNguoiXuLy = "";
        //var IsTruongNhom = dataNguoiXuLy.filter(x => x.IsTruongNhom);
        //var IsNguoiXuLy = dataNguoiXuLy.filter(x => x.IsCheck);

        //if (IsTruongNhom.length == 0) {
        //    alert_info("Bạn chưa chọn trưởng nhóm");
        //    return;
        //}

        //if (IsNguoiXuLy.length == 0) {
        //    alert_info("Bạn chưa chọn người xử lý");
        //    return;
        //}

        //if (dataNguoiXuLy != null && dataNguoiXuLy.length > 0) {
        //    for (var i = 0; i < dataNguoiXuLy.length; i++) {
        //        if (dataNguoiXuLy[i].IsTruongNhom == true) {
        //            TruongNhomID += dataNguoiXuLy[i].UserID + ",";
        //            TenTruongNhom += dataNguoiXuLy[i].FullName + ",";
        //        }
        //        if (dataNguoiXuLy[i].IsCheck == true) {
        //            NguoiXuLyID += dataNguoiXuLy[i].UserID + ",";
        //            TenNguoiXuLy += dataNguoiXuLy[i].FullName + ",";
        //        }
        //    }

        //}

        var fileUpload = $("#fileSelectGiaoViec").get(0);
        var FileID = $("#FileIDGiaoViec").val();
        var TenFile = $("#TenFileGiaoViec").val();
        var files = fileUpload.files;
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

        alertify.confirm("<h4> Bạn có muốn chuyển duyệt không ?</h4>",
            function () {
                var dataGiaoViec = {
                    "obj": {
                        "GiaoViecID": $("#GiaoViecID").val(),
                        "LichHopID": $("#LichHopID").val(),
                        "NoiDung": NoiDungGiaoViec,
                        "PhongBanDonViXuLyID": PhongBanDonViXuLyID.toString(),
                        "HanXuLy": HanXuLy,
                        "Ngay": Ngay,
                        "NguoiChiDaoID": NguoiChiDaoID.toString(),
                        "NguoiTheoDoiID": NguoiTheoDoiID.toString(),
                        "PhongBanDonViPhoiHop": PhongBanDonViPhoiHop,
                        "TenFile": TenFile,
                        "FileID": FileID,
                        "TinhTrangDuyet": 2,
                        "IsDelete": false

                    }
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GiaoViec_InsUpDel",
                    data: JSON.stringify(dataGiaoViec),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            var dataID = JSON.parse(reponse.d);
                            $("#GiaoViecID").val(dataID[0].GiaoViecID);
                            this._customAppointmentWindow = $("#customWindowGiaoViec");
                            this._customAppointmentWindow.ejDialog("close");
                            alert_success("Chuyển duyệt thành công");
                            LoadGiaoViecTheoLichHopID($("#LichHopID").val());
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
    $("#btnNoiDungGiaoViec").click(function () {

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        this._customAppointmentWindow = $("#customWindowNoiDungGiaoViec");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "90%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin nôi dung giao việc",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        LoadGiaoViecTheoLichHopID($("#LichHopID").val());
        LoadBienBanHopByLichHopID($("#LichHopID").val());
        this._customAppointmentWindow.find("#customAppointmentNoiDungGiaoViec").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });

    function LoadBienBanHopByLichHopID(LichHopID) {
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
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadBienBanHopByLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                if (data.length > 0) {
                    $("#summernoteBienBanHop").summernote("code", data[0].NoiDung);
                    $("#BienBanID").val(data[0].BienBanID)
                }
                else {
                    $("#summernoteBienBanHop").summernote("code", "");
                    $("#BienBanID").val("0");
                }



            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    function LoadGiaoViecTheoLichHopID(LichHopID) {
        if (!LichHopID) {
            return;
        }
        var data =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
                "PhongBanDonViXuLyID": $("#PhongBanID").val()
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_LoadGiaoViecTheoLichHopID",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataTable = JSON.parse(obj);
                $("#IDTableDanhSachGiaoViec").bootstrapTable('refreshOptions', { data: dataTable });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

    $("#btnVaoHop").click(function () {

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");

        this._customAppointmentWindow = $("#customWindowVaoHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin vào họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });

        LoadChuongTrinhHopByLichHopID($("#LichHopID").val());
        LoadBieuQuyetByLichHopID($("#LichHopID").val());
        this._customAppointmentWindow.find("#customAppointmentWindowVaoHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });

    function ChapNhanHop() {
        var dataChapNhanHop =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_ChapNhan",
            data: JSON.stringify(dataChapNhanHop),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if (dataID[0].Column1 != 0) {
                        alert_success("Chấp nhận thành công");
                        LoadSchedule("ThanhPhanHopLichCaNhan", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                    else {
                        alert_error("Xảy ra lỗi");
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

    };
    function BauChonBieuQuyet(TieuDe, NoiDung, BieuQuyetID, DongY) {

        this._customAppointmentWindow = $("#customWindowPopupBieuQuyet");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "40%",
            showOnInit: false,
            enableModal: true,
            title: "Thông tin biểu quyết",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customWindowPopupBieuQuyet").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        $("#BieuQuyetID").val(BieuQuyetID);
        $("#lblTieuDeBieuQuyet").text(TieuDe);
        $("#lblThoiGianBieuQuyetHienTai").text(formatDateddMMyyyyHHmm(new Date()));
        $("#lblNoiDungBieuQuyet").text(NoiDung);
    };


    $("#btnDongYBieuQuyet").click(function () {
        IsDongYBieuQuyet(true)
    });

    $("#btnKhongDongYBieuQuyet").click(function () {
        IsDongYBieuQuyet(false)
    });

    $("#btnThemDangKyPhatBieu").click(function () {
        if ($("#NoiDungDangKyPhatBieu").val() == "") {

            alert_info("Vui lòng không được để trống");
            return;
        }
        let dangKyPhatBieuID = $('#DangKyPhatBieuID').val();
        SaveDangKyPhatBieu(dangKyPhatBieuID, $("#NoiDungDangKyPhatBieu").val(), false);

    });
    $("#btnLamMoiDangKyPhatBieu").click(function () {
        $("#DangKyPhatBieuID").val("0");
        $("#NoiDungDangKyPhatBieu").val("");
    });

    function SaveDangKyPhatBieu(DangKyPhatBieuID, NoiDung, IsDelete) {

        if (IsDelete == false) {
            $("#NoiDungDangKyPhatBieu").val("");
        }

        var dataDangKyPhatBieu =
        {
            "obj": {
                "DangKyPhatBieuID": DangKyPhatBieuID,
                "NoiDungPhatBieu": NoiDung,
                "PhanBoThoiGianID": 1, // 5 PHÚT
                "TinhTrang": 0,
                "LichHopID": $("#LichHopID").val(),
                "IsDelete": IsDelete
            },
            "IsChuToa": false,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_DANGKYPHATBIEU_THANHPHANHOP_InsUpDel",
            data: JSON.stringify(dataDangKyPhatBieu),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var DATA = JSON.parse(reponse.d)
                    $("#IDTableDanhSachThaoDangKyPhatBieu").bootstrapTable('refreshOptions', { data: DATA });
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
    function IsDongYBieuQuyet(IsDongY) {

        var dataBieuQuyet =
        {
            "obj": {
                "BieuQuyetID": $("#BieuQuyetID").val(),
                "DongY": IsDongY
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_BIEUQUYET_KETQUA_Ins",
            data: JSON.stringify(dataBieuQuyet),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if (dataID[0].Column1 = !0) {
                        if (IsDongY == true) {
                            alert_success("Biểu quyết đồng ý");
                        }
                        else {
                            alert_success("Biểu quyết không đồng ý");
                        }
                        //LoadBieuQuyetByLichHopID($("#LichHopID").val());
                        this._customAppointmentWindow = $("#customWindowPopupBieuQuyet");
                        this._customAppointmentWindow.ejDialog("close");
                    }
                    else {
                        alert_error("Xảy ra lỗi");
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



    function BaoVang(LyDoID, NoiDung) {

        var dataBaoVang =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
                "LyDoID": LyDoID,
                "LyDoVang": NoiDung
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_BaoVang",
            data: JSON.stringify(dataBaoVang),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if (dataID[0].Column1 != 0) {
                        alert_success("Báo vắng thành công");
                        LoadSchedule("ThanhPhanHopLichCaNhan", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                    else {
                        alert_error("Xảy ra lỗi");
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

    };

    function XungDot(LyDoID, NoiDung) {
        var dataXungDot =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
                "LyDoID": LyDoID,
                "LyDoVang": NoiDung
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_XungDot",
            data: JSON.stringify(dataXungDot),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if (dataID[0].Column1 != 0) {
                        alert_success("Báo trùng lịch thành công");
                        LoadSchedule("ThanhPhanHopLichCaNhan", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                    else {
                        alert_error("Xảy ra lỗi");
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
    };

    function TuChoi(LyDoID, NoiDung) {
        var dataTuChoi =
        {
            "obj": {
                "LichHopID": $("#LichHopID").val(),
                "LyDoID": LyDoID,
                "LyDoVang": NoiDung
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_TuChoi",
            data: JSON.stringify(dataTuChoi),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataID = JSON.parse(reponse.d);
                    if (dataID[0].Column1 != 0) {
                        alert_success("Từ chối thành công");
                        LoadSchedule("ThanhPhanHopLichCaNhan", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                    else {
                        alert_error("Xảy ra lỗi");
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
    };

    $("#btnLuuBaoVang").click(function () {
        var LyDoVangID = comboLyDoVangID.getSelectedIds();
        if (LyDoVangID == null) {
            alert_info("Vui lòng chọn lý do vắng");
            return;
        }
        if ($("#IsClickTrungLich").val() == "1") {

            XungDot(LyDoVangID.toString(), $("#GhiChuBaoVang").val());
        }
        else {
            BaoVang(LyDoVangID.toString(), $("#GhiChuBaoVang").val())

        }
        if ($("#IsClickDanhSachCuocHop").val() == "1") {
            Load_DanhSach_Schedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "", null, "IDTableDanhSachSchedulePhatHanh");
            this._customAppointmentWindow = $("#customWindowBaoVang");
            this._customAppointmentWindow.ejDialog("close");
        }
        else {
            this._customAppointmentWindow = $("#customWindowBaoVang");
            this._customAppointmentWindow.ejDialog("close");
            this._customAppointmentWindow = $("#customPopup");
            this._customAppointmentWindow.ejDialog("close");
        }

    });

    $("#btnLamMoiBieuQuyet").click(function () {
        $("#BieuQuyetID").val("0");
        $("#TieuDe").val("");
        $("#NoiDungBieuQuyet").val("");
    });



    $("#TabLichCaNhan").click(function () {

        $("#IsClickTabCaNhan").val("1");
        $("#TinhTrangCoQuan").hide();
        $("#TinhTrangCaNhan").show();
        Role = "ThanhPhanHopLichCaNhan";
        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
    })

    $("#btnKetLuanHop").click(function () {
        this._customAppointmentWindow = $("#customWindowKetLuanHop");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Tài liệu kết luận họp",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowKetLuanHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        //hungnk

        LoadDataTable($("#LichHopID").val(), "LH_TAILIEUKETLUAN", "IDTableDanhSachKetLuanHop", true)

        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");

    });

    $("#TabLichCoQuan").click(function () {

        $("#IsClickTabCaNhan").val("0");
        $("#TinhTrangCoQuan").show();
        $("#TinhTrangCaNhan").hide();
        Role = "ThanhPhanHopLichCoQuan";
        LoadSchedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "")
    })

    // Event Back
    $("#btnTroVeGiaoViec").click(function () {
        this._customAppointmentWindow = $("#customWindowGiaoViec");
        this._customAppointmentWindow.ejDialog("close");
    })
    $("#btnTroVeNoiDungGiaoViec").click(function () {
        this._customAppointmentWindow = $("#customWindowNoiDungGiaoViec");
        this._customAppointmentWindow.ejDialog("close");
    })



    $("#btnTroVeKetNoi").click(function () {
        this._customAppointmentWindow = $("#customWindowKetNoiHopTrucTuyen");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeDangKyPhatBieu").click(function () {
        this._customAppointmentWindow = $("#customWindowDangKyPhatBieu");
        this._customAppointmentWindow.ejDialog("close");
    })


    $("#btnTroVeChiaSe").click(function () {
        this._customAppointmentWindow = $("#customWindowChiaSeTaiLieu");
        this._customAppointmentWindow.ejDialog("close");
    })


    $("#btnTroVeBaoVang").click(function () {
        this._customAppointmentWindow = $("#customWindowBaoVang");
        this._customAppointmentWindow.ejDialog("close");
    })


    $("#btnTroVeVaoHop").click(function () {
        this._customAppointmentWindow = $("#customWindowVaoHop");
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

    $("#btnSuaLichHopTroVe").click(function () {
        this._customAppointmentWindow = $("#customWindow");
        this._customAppointmentWindow.ejDialog("close");
    })

    $("#btnTroVeChuongTrinhHop").click(function () {
        this._customAppointmentWindow = $("#customWindowThemChuongTrinhHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    function saveUploadFile(TaiLieuID, TenTaiLieu, DuocCongKhai, TenFile, FileID, IsDelete) {
        var data =
        {
            "obj": {
                "TaiLieuID": TaiLieuID,
                "TenTaiLieu": TenTaiLieu,
                "DuocCongKhai": DuocCongKhai,
                "TenFile": TenFile,
                "FileID": FileID,
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
                $("#TaiLieuID").val("");
                $("#TenTaiLieu").val("");
                $("#fileSelect").val(null);
                $("#DuocCongKhai").prop('checked', true);
                $("#TenFile").val("");
                $("#FileID").val("");
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
    window.operateEventsSchedulePhatHanh = {
        'click .View': function (e, value, row, index) {
            $("#LichHopID").val(row.LichHopID);
            this._customAppointmentWindow = $("#customWindowGuiThaoLuan");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Nôi dung thảo luận",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#customAppointmentWindowGuiThaoLuan").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            LoadThaoLuanByLichHopID($("#LichHopID").val(), "IDTableDanhSachThaoLuan");

        }, 'click .Confirm': function (e, value, row, index) {
            $("#LichHopID").val(row.LichHopID);
            alertify.confirm("<h4> </h4>",
                function () {
                    ChapNhanHop();
                    Load_DanhSach_Schedule(Role, TuNgay, DenNgay, Thang, Nam, Loai, "", null, "IDTableDanhSachSchedulePhatHanh");
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        }, 'click .Reject': function (e, value, row, index) {
            $("#LichHopID").val(row.LichHopID);
            this._customAppointmentWindow = $("#customWindowBaoVang");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Lý do báo vắng",
                //title: this._getLocalizedLabels("Cr+eateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#customAppointmentWindowBaoVang").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            comboLyDoVangID.clearSelection();
            $("#GhiChuBaoVang").val("");
            $("#IsClickTrungLich").val("0");
            $("#IsClickDanhSachCuocHop").val("1");
        }, 'click .Duplicate': function (e, value, row, index) {
            $("#LichHopID").val(row.LichHopID);
            this._customAppointmentWindow = $("#customWindowBaoVang");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "90%",
                height: "70%",
                showOnInit: false,
                enableModal: true,
                title: "Lý do trùng lịch",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#customAppointmentWindowBaoVang").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            comboLyDoVangID.clearSelection();
            $("#GhiChuBaoVang").val("");
            $("#IsClickTrungLich").val("1");
            $("#IsClickDanhSachCuocHop").val("1");
        }
    }
    function ChucNang(value, row, index) {

        if ($("#IsClickTabCaNhan") == "1") {
            if (row.TinhTrangID == "7")// Chưa họp
                return [
                    '<div>',
                    '<button type="button" class="View btn btn-default btn-xs">',
                    '<i class=" fa fa-question-circle"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                    '</button>',
                    '&nbsp&nbsp',
                    '<button type="button" class="Confirm btn btn-default btn-xs">',
                    '<i class=" fa fa-check"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                    '</button>',
                    '&nbsp&nbsp',
                    '<button type="button"class="Duplicate btn btn-default btn-xs">',
                    '<i class=" fa fa-calendar-times-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                    '</button>',
                    '&nbsp&nbsp',
                    '<button type="button"class="Reject btn btn-danger btn-xs">',
                    '<i class=" fa fa-remove"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                    '</button>',
                    '</div>',

                ].join('');
            else {
                return [
                    '<div>',
                    '<button type="button" class="View btn btn-default btn-xs">',
                    '<i class=" fa fa-question-circle"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                    '</button>',
                    '&nbsp&nbsp&nbsp',
                    '</div>'
                ].join('');

            }

        }
        else {
            return [
                '<div>',
                '<button type="button" class="View btn btn-default btn-xs">',
                '<i class=" fa fa-question-circle"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '&nbsp&nbsp&nbsp',
                '</div>'
            ].join('');

        }


    };

    window.ChucNangNguoiXuLy = {
        'click .Edit': function (e, value, row, index) {

            this._customAppointmentWindow = $("#customWindowGiaoViec");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Thông tin giao việc",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmentWindowGiaoViec").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            $("#GiaoViecID").val(row.GiaoViecID);
            if (row.DoiTuongID == 2)// Thư ký
            {
                $("#btnDuyetGiaoViec").hide();
                $("#btnKhongDuyetGiaoViec").hide();
            }
            else {
                $("#btnDuyetGiaoViec").show();
                $("#btnKhongDuyetGiaoViec").show();

            }


            $("#fileSelectGiaoViec").val(null);
            $("#summernoteNoiDungGiaoViec").summernote("code", row.NoiDung);

            if (row.PhongBanDonViXuLyID != null) {
                comboPhongBanDonViXuLyID.setSelection([row.PhongBanDonViXuLyID]);
            }
            if (row.HanXuLy != null) {
                $("#HanXuLy").val(row.HanXuLy);
            }
            if (row.Ngay != null) {
                $("#Ngay").val(row.Ngay);
            }

            if (row.NguoiChiDaoID != null) {
                comboNguoiChiDaoID.setSelection([row.NguoiChiDaoID]);
            }
            if (row.NguoiTheoDoiID != null) {
                comboNguoiTheoDoiID.setSelection([row.NguoiTheoDoiID]);
            }
            if (row.NoiDungKhongPheDuyet != null && row.TinhTrangDuyet == 0) {
                $("#divNoiDungKhongPheDuyet").show(row.Ngay);
                $("#TextNoiDungKhongPheDuyet").val(row.NoiDungKhongPheDuyet);
            }
            else {
                $("#divNoiDungKhongPheDuyet").hide();
                $("#TextNoiDungKhongPheDuyet").val("");
            }

            $("#PhongBanDonViPhoiHop").val(row.PhongBanDonViPhoiHop);

            if (row.FileID) {
                $("#FileIDGiaoViec").val(row.FileID);
                $("#TenFileGiaoViec").val(row.TenFile);

                if (row.FileID != "") {
                    $("#divIDTableFileGiaoViec").show();

                    var dataFile =
                        [{
                            "TenFile": row.TenFile,
                            "FileID": row.FileID,
                        }]
                    $("#IDTableFileGiaoViec").bootstrapTable('refreshOptions', { data: dataFile });
                }
            }



            //var NguoiXuLy = DataThanhPhanChuanBi.filter(x => x.Ma == row.PhongBanID.toString());
            //var dataNguoiXuLy = [];
            //for (var i = 0; i < NguoiXuLy.length; i++) {
            //    dataNguoiXuLy.push({ IsTruongNhom: false, IsCheck: false, FullName: NguoiXuLy[i].FullName, UserID: NguoiXuLy[i].UserID })
            //}
            //if (row.TruongNhomID && row.NguoiXuLyID) {
            //    var arrayTruongNhomID = row.TruongNhomID.split(',');
            //    var arrayNguoiXuLyID = row.NguoiXuLyID.split(',');
            //    for (var i = 0; i < arrayNguoiXuLyID.length; i++) {
            //        for (var j = 0; j < dataNguoiXuLy.length; j++) {
            //            if (dataNguoiXuLy[j].UserID == arrayNguoiXuLyID[i]) {
            //                dataNguoiXuLy[j].IsCheck = true;
            //                break;
            //            }
            //        }
            //    }
            //    for (var i = 0; i < arrayTruongNhomID.length; i++) {
            //        for (var j = 0; j < dataNguoiXuLy.length; j++) {
            //            if (dataNguoiXuLy[j].UserID == arrayTruongNhomID[i]) {
            //                dataNguoiXuLy[j].IsTruongNhom = true;
            //                break;
            //            }
            //        }
            //    }
            //    $("#IDTableDanhSachNguoiXuLy").bootstrapTable('refreshOptions', { data: dataNguoiXuLy });
            //}

        },
        'click .Remove': function (e, value, row, index) {

            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    var dataGiaoViec = {
                        "obj": {
                            "GiaoViecID": row.GiaoViecID,
                            "IsDelete": true
                        }
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/GiaoViec_InsUpDel",
                        data: JSON.stringify(dataGiaoViec),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) {
                            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                var data = JSON.parse(reponse.d);
                                if (data && data[0].IsSuccess == 1) {
                                    alert_success("Xóa thành công");
                                    LoadGiaoViecTheoLichHopID($("#LichHopID").val());
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

        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        },
        'click .Detail': function (e, value, row, index) {

            this._customAppointmentWindow = $("#customWindowChiTietGiaoViec");
            this._customAppointmentWindow.ejDialog({
                //width: (this._mediaQuery) ? "100%" : 600,
                width: "80%",
                showOnInit: false,
                enableModal: true,
                title: "Thông tin chi tiết giao việc",
                //title: this._getLocalizedLabels("CreateAppointmentTitle"),
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });
            this._customAppointmentWindow.find("#appointmentWindowGiaoViec").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
            $("#GiaoViecID").val(row.GiaoViecID);
            $("#summernoteNoiDungChiTietGiaoViec").summernote("code", row.ChiTietGiaoViec);
        },
    }

    function formatterChucNangNguoiXuLy(value, row, index) {
        return [
            '<div>',
            '<button type="button" class="Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class="Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button" class="Detail btn btn-info btn-xs">',
            '<i class=" fa fa-eye"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
        ].join('');
    };

    function formatterTinhTrangGiaoViec(value, row, index) {

        if (value == null) {
            return [
                '<div>',
                '<span class="label label-warning" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;background-color: dimgrey;">Đã tạo</span>',
                '</div>'
            ].join('');
        }
        if (value == 2) {
            return [
                '<div>',
                '<span class="label label-info" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Chưa duyệt</span>',
                '</div>'
            ].join('');
        }
        if (value == 1) {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;background-color: dimgrey;">Đã duyệt</span>',
                '</div>'
            ].join('');
        }
        if (value == 0) {
            return [
                '<div>',
                '<span class="label label-danger" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;background-color: dimgrey;">Không duyệt</span>',
                '</div>'
            ].join('');
        }


    };

    function formatterTinhTrang(value, row, index) {
        if (value == "4")
            return [
                '<div>',
                '<span class="label label-warning" style="background-color: green; border-color: green;font-size:12px";>Hủy họp</span>',
                '</div>'
            ].join('');
        if (value == "5") {
            return [
                '<div>',
                '<span class="label label-danger" style="color: #fff; background-color: dimgrey; border-color: black";>Báo vắng</span>',
                '</div>'
            ].join('');
        }

        if (value == "6") {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;background-color: dimgrey;">Đang họp</span>',
                '</div>'
            ].join('');
        }
        if (value == "7") {
            return [
                '<div>',
                '<span class="label label-info" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Chưa họp</span>',
                '</div>'
            ].join('');
        }
        if (value == "10") {
            return [
                '<div>',
                '<span class="label label-primary" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Đã họp</span>',
                '</div>'
            ].join('');
        }
        if (value == "11") {
            return [
                '<div>',
                '<span class="label label-danger" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Trùng lịch</span>',
                '</div>'
            ].join('');
        }
    };


    function ChucNangRemoveDangKyPhatBieu(value, row, index) {
        return [
            '<div>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class="Edit btn btn-info btn-xs">',
            '<i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class="Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
    };
    function ChucNangDownloadFile(value, row, index) {
        return [
            '<div>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class="DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '</div>'
        ].join('');
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
            '<button type="button" class="DownloadFile btn btn-default btn-xs">',
            '<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
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

    window.operateEventsFileGiaoViec = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắc chắn muốn xóa file không ? </h4>",
                function () {
                    $("#FileIDGiaoViec").val("");
                    $("#TenFileGiaoViec").val("");
                    $("#IDTableFileGiaoViec").bootstrapTable('refreshOptions', { data: "" });
                    $("#divIDTableFileGiaoViec").hide();
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsFileLichHopPhatHanh = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắc chắn muốn xóa file không ? </h4>",
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
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsDangKyPhatBieu = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    SaveDangKyPhatBieu(row.DangKyPhatBieuID, "", true);
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        },
        'click .Edit': function (e, value, row, index) {
            $("#DangKyPhatBieuID").val(row.DangKyPhatBieuID);
            $("#NoiDungDangKyPhatBieu").val(row.NoiDungPhatBieu);
            //alert('You click like action, row: ' + JSON.stringify(row))
        },

    }


    window.operateEvents = {
        'click .Edit': function (e, value, row, index) {
            $("#TaiLieuID").val(row.TaiLieuID);
            $("#TenTaiLieu").val(row.TenTaiLieu);
            $("#fileSelect").val("");
            $("#TenFile").val(row.TenFile);
            $("#FileID").val(row.FileID);
            if (row.DuocCongKhai) {
                $("#DuocCongKhai").prop('checked', true);
            }
            else {
                $("#DuocCongKhai").prop('checked', false);
            }

            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            if (confirm('Bạn có muốn xóa dữ liệu không?')) {
                for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                    if (DataDanhSachTaiLieu[i].FileID == row.FileID) {
                        DataDanhSachTaiLieu[i].IsDelete = true;
                    }
                }
                var GetDataAfterUpdateIsDelete = DataDanhSachTaiLieu.filter(x => x.IsDelete == false)
                $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: GetDataAfterUpdateIsDelete });

            } else {

            }
        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsShowThemFileDinhkem = {
        'click .Edit': function (e, value, row, index) {
            $("#TaiLieuIDShowThemFileDinhkem").val(row.TaiLieuID);
            $("#TenTaiLieuShowThemFileDinhkem").val(row.TenTaiLieu);
            $("#fileSelectShowThemFileDinhkem").val("");
            $("#TenFileShowThemFileDinhkem").val(row.TenFile);
            $("#FileIDShowThemFileDinhkem").val(row.FileID);
            if (row.DuocCongKhai) {
                $("#DuocCongKhaiShowThemFileDinhkem").prop('checked', true);
            }
            else {
                $("#DuocCongKhaiShowThemFileDinhkem").prop('checked', false);
            }

            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            if (confirm('Bạn có muốn xóa dữ liệu không?')) {
                var data =
                {
                    "obj": {
                        "TaiLieuID": row.TaiLieuID,
                        "IsDelete": true,
                        "LichHopID": $("#LichHopID").val()
                    }
                };

                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUploadCaNhan",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) {
                        if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        var obj = reponse.d;
                        $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                });
                //$("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('remove', { field: 'FileID', values: row.FileID })
            } else {

            }
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
            if (confirm('Bạn có muốn xóa dữ liệu không?')) {
                SaveBieuQuyet(row.BieuQuyetID, "", "", "", true);

            } else {

            }
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





</script>



<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PheDuyet.ascx.cs" Inherits="PhongHopKhongGiay.Schedule.PheDuyet" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />


<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/bootstrap.min.css")%>' />--%>
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/default-theme/ej.web.all.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default-responsive.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/responsive-css/ej.responsive.css")%>' />


<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/jquery-3.4.1.min.js") %>" type="text/javascript"></script>
<script src="/DesktopModules/HanhChinhCong/HDND/HDND.GUI/Scripts/bootstrap/js/bootstrap-select.js"></script>
<script src="/DesktopModules/HanhChinhCong/HDND/HDND.GUI/Scripts/bootstrap/js/bootstrap.js"></script>
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
    .BodyMain{
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
                        LoadSchedule("PheDuyet", TuNgay, DenNgay, Thang, Nam, Loai, "")
                    }
                }
            });
        }
    }

</script>

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

                <button type="button" class="btn btn-primary"><i class=""></i></button>
                &nbsp Đã duyệt&nbsp
                 <button  type="button" class="btn btn-default" style="color: #fff; background-color: #804000; border-color: black;">
                     <i class=""></i>
                 </button>
                &nbsp Không phê duyệt &nbsp
                                    <button type="button" class="btn btn-danger"><i class=""></i></button>
                &nbsp Chờ duyệt&nbsp
                                    <button type="button" class="btn btn-success" style="background-color: green; border-color: green;">
                                        <i class=""></i>
                                    </button>
                &nbsp Đã phát hành&nbsp
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
                        <i class="fa  fa-check  pull-left "></i>&nbsp Phê duyệt
                    </button>
                </td>
            </tr>
            <tr id="trKhongPheDuyetLichHop" style="display: none">
                <td>
                    <button id="btnKhongPheDuyetLichHop" style="font-size: large; border-color: white" class="btn btn-default">
                        <i class="fa  fa-ban  pull-left "></i>&nbsp Không Phê duyệt
                    </button>
                </td>
            </tr>
        </table>
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
                                    <input type="text" id="ChuTriID" placeholder="Chọn chủ trì" autocomplete="off" />
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
                            <input type="hidden" id="TaiLieuCuocHopID" value="0">
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
                                            <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
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
            <%--                                    <button id="appOk" type='button' class="e-appButton e-appOk" style="margin-right: 5px;">Submit</button>
                                    <button id="appCancel" type="button" class="e-appButton e-appCancel">Cancel</button>--%>
            <button type="button" id="btnLuu" class="btn btn-primary"><i class="fa fa-pencil-square-o "></i>Lưu</button>
            <button type="button" id="btnChuyenDuyetCuocHop" class="btn btn-primary">
                Chuyển duyệt
            </button>
            <button type="button" id="btnTroVe" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
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
                                <div id="divTenPhongHopKhac" style="display:none" >
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
                        Ghi chú
                    </div>
                    <div class="col-md-3">
                        <a id="urlChuongTrinhHop">Xem chi tiết ghi chú</a>
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
                                    <th data-field="TaiLieu_NoiDung" data-sortable="true" data-align="left">Nội dung</th>
                                    <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                    <th data-field="TenFile" data-sortable="true" data-align="left">Tên Tệp</th>
                                   <%-- <th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="left">Văn bản liên quan</th>--%>
                                    <th data-field="DuocCongKhai" data-sortable="true" data-formatter="formatterTinhTrangTaiLieuHop" data-align="left">Tình trạng</th>
                                    <th data-formatter="ChucNangChinhSuaFileTaiLieuHop" data-events="operateEventsFile" data-align="center">Chức năng</th>
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

<div id="customWindowThemChuongTrinhHop" style="padding: 1em; display: none;">
    <div id="appointmentWindowThemChuongTrinhHop" class="appointmentWindow">
        <form id="customAppointmentWindowThemChuongTrinhHop">
            <div id="container">
                <textarea id="summernote" name="editordata"></textarea>
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
            <br />
        </div>
    </div>

</div>

<div id="customWindowKhongPheDuyet" style="padding: 1em; display: none;">
    <div id="appointmentWindowKhongPheDuyet" class="appointmentWindow">
        <form id="customAppointmentWindowKhongPheDuyet">
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Nội dung <span style="color: red">*</span>
                </div>
                <div class="col-md-8">
                    <textarea id="NoiDungKhongPheDuyet" style="height: 50px; width: 100%" name="editordata"></textarea>
                </div>
            </div>

        </form>
        <br />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="button" id="btnKhongPheDuyet" class="btn btn-primary"><i class="fa fa-ban"></i>&nbsp Không phê duyệt</button>
                <button type="button" id="btnTroVeKhongPheDuyet" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
            </div>
        </div>
    </div>

</div>

<div id="customWindowGuiThaoLuan" style="padding: 1em; display: none;">
    <div id="appointmentWindowGuiThaoLuan" class="appointmentWindow">
        <form id="customAppointmentWindowGuiThaoLuan">
            <div class="row">
                <div class="col-md-1 e-textlabel">
                </div>
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
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-2 e-textlabel">
                    Nội dung <span style="color: red">*</span>
                </div>
                <div class="col-md-7">
                    <textarea id="NoiDung" rows="5" cols="50" style="width: 100%; height: 70px !important; resize: vertical"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-2 e-textlabel">
                    Tệp đính kèm
                </div>
                <div class="col-md-7">
                    <input type="file" id="fileSelectThaoLuan" accept=".xlsx, .xls, .csv" />
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
                <div class="col-md-1 e-textlabel">
                </div>
                <div class="col-md-2  e-textlabel">
                    Danh sách thảo luận
                </div>
                <div class="col-md-7">
                    <table id="IDTableDanhSachThaoLuan"
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


<div id="customWindowDanhSachSchedulePhatHanh" style="padding: 1em; display: none;">
    <div id="appointmentWindowDanhSachSchedulePhatHanh" class="appointmentWindow">
        <form id="customAppointmentDanhSachSchedulePhatHanh">
            <br />
            <div class="row">
                <div class="col-md-9"></div>
                <div class="col-md-3 pull-right">
                    <button type="button" id="btnPhatHanhMulti" class="btn btn-primary"><i class="fa  fa-check-square-o"></i>&nbsp Phê duyệt&nbsp</button>
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
                                    <th data-field="" data-checkbox="true"></th>
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                                    <th data-field="TenCuocHop" data-sortable="true" data-align="left">Tên cuộc họp</th>
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


<div id="customWindowShowFileDinhkem" style="padding: 1em; display: none;">
    <div id="appointmentWindowShowFileDinhkem" class="appointmentWindow">
        <form id="customAppointmentDanhSachShowFileDinhkem">
            <br />
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2 pull-right">
                    <button type="button" class="btn btn-default"><i class="fa fa-envelope-o"></i></button>
                    <button type="button" class="btn btn-default"><i class="fa fa-eye-slash"></i></button>
                    <button type="button" class="btn btn-default"><i class="fa fa-globe"></i></button>
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
                            data-height="200"
                            data-use-row-attr-func="true"
                            data-reorderable-rows="true"
                            data-formatter="detailFormatter"
                            data-sort-order="desc"
                            data-page-list="[5, 25, 50, 100, ALL]">
                            <thead>
                                <tr class="headings">
                                    <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
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
        <form id="customAppointmentDanhSachShowThemFileDinhkem" style="margin-left: 30px">
            <br />
            <div class="row">
                <div class="col-md-2 e-textlabel">
                    Tên tài liệu <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenTaiLieuShowThemFileDinhkem" class="Subject" type="text" value="" name="Subject" style="width: 100%" />
                    <input type="hidden" id="TaiLieuCuocHopIDShowThemFileDinhkem" value="0">
                    <input type="hidden" id="TenFileShowThemFileDinhkem" value="">
                    <input type="hidden" id="FileIDShowThemFileDinhkem" value="">
                </div>
            </div>
            <br />

            <div class="row">
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
            <div class ="">
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
                                <th data-field="TenTaiLieu" data-sortable="true" data-align="left">Tên tài liệu</th>
                                <th data-field="TenFile" data-sortable="true" data-align="left">Tên tệp</th>
                                <th data-field="VanBanLienQuan" class="col-xs-3" data-sortable="true" data-align="center">Văn bản liên quan</th>
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
        });
        $('#summernoteXemChuongTrinhHop').summernote({
            height: 300,
            width: 1000,
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
                categorize: "Categorize"
            },
            navigation: "OnNavigation",
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
                LoadSchedule("PheDuyet", TuNgay, DenNgay, Thang, Nam, Loai, "")
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
            LoadSchedule("PheDuyet", TuNgay, DenNgay, Thang, Nam, Loai, "")
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
        //var RoleUser = "PheDuyet"
        //var RoleUser = "ThuKy"
        //var RoleUser = "ChuToa"
        //var RoleUser = "ThanhPhanhHop"
        var RoleUser = "PheDuyet";
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
                $("#trHuyLichHop").css("display", "none");
                $("#trPheDuyetLichHop").css("display", "none");
                $("#trKhongPheDuyetLichHop").css("display", "none");

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
                        $("#trKhongPheDuyetLichHop").css("display", "none");
                        break;
                    case "3": //Đã phát hành
                        $("#trHuyLichHop").css("display", "");
                        $("#trSuaLichHop").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        $("#trGuiThaoLuan").css("display", "");
                        break;
                    case "9":// Không Phê duyệt
                        $("#trXemLichHop").css("display", "");
                    case "8"://Đã duyệt
                        $("#trSuaLichHop").css("display", "");
                        $("#trXoaLichHop").css("display", "");
                        $("#trThemChuongTrinhHop").css("display", "");
                        $("#trXemLichHop").css("display", "");
                        $("#trGuiThaoLuan").css("display", "");
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
                $("#trHuyLichHop").css("display", "none");
                $("#trPheDuyetLichHop").css("display", "none");
                $("#trKhongPheDuyetLichHop").css("display", "none");

                switch (args.appointment.Categorize) {
                    case "2": //Chờ duyệt
                        $("#trXemLichHop").css("display", "");
                        $("#trPheDuyetLichHop").css("display", "");
                        $("#trKhongPheDuyetLichHop").css("display", "");
                        break;
                    case "9":// Không Phê duyệt
                        $("#trXemLichHop").css("display", "");
                        break
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
    //LoadSchedule();
    //LoadAllSchedule();

    var comboChuanBiID, comboThanhPhanID, comboDoiTuongNhacID,
        comboChuTriID, comboThuKyID, comboPhongHopID, comboDoiTuongXemID, SelectParentDistince,
        comboChonChuTriID, SelectParentDoiTuongNhac, DataThanhPhanChuanBi, comboLinhVucID,
        comboLyDoVangID, comboThoiGianNhacLichHop
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
            }
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadSchedule",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataSchedule = JSON.parse(obj);
                if (dataSchedule && dataSchedule.Table.length > 0) {
                    var dataMapSchedule = dataSchedule.Table.map(item => ({
                        Id: item.Id,
                        Subject: item.Subject,
                        CountFile: item.CountFile,
                        StartTime: formatStringToDate(item.StartTime),
                        EndTime: formatStringToDate(item.EndTime),
                        Categorize: item.Categorize
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

    function LoadAllSchedule() {

        var dataRole =
        {
            "Role": "TatCa",
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadSchedule",
            data: JSON.stringify(dataRole),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataSchedule = JSON.parse(obj);
                if (dataSchedule && dataSchedule.Table.length > 0) {
                    var dataMapSchedule = dataSchedule.Table.map(item => ({
                        Id: item.Id,
                        Subject: item.Subject,
                        CountFile: item.CountFile,
                        StartTime: formatStringToDate(item.StartTime),
                        EndTime: formatStringToDate(item.EndTime),
                        Categorize: item.Categorize
                    }));
                }
                $("#Schedule1").ejSchedule({
                    appointmentSettings: {
                        dataSource: dataMapSchedule
                    }
                });


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }

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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);

                if (data.length > 0) {
                    $("#summernote").summernote("code", data[0].TenChuongTrinh);
                    $("#summernoteXemChuongTrinhHop").summernote("code", data[0].TenChuongTrinh);
                    $("#ChuongTrinhHopID").val(data[0].ChuongTrinhHopID);
                    $("#urlChuongTrinhHop").attr("style", "display:block");
                }
                else {
                    $("#urlChuongTrinhHop").attr("style", "display:none");
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);

                DataThanhPhanChuanBi = JSON.parse(data.ListThanhPhanChuanBi);
                var DataDoiTuongNhac = JSON.parse(data.ListDoiTuong);
                var DataUser = JSON.parse(data.ListUsers);
                var DataPhongHop = JSON.parse(data.ListPhongHop);
                var DataLinhVuc = JSON.parse(data.ListLinhVuc);
                //var DataDanhSachTaiLieu = JSON.parse(data.ListDanhSachTaiLieu);
                var DataThoiGianNhacLichHop = JSON.parse(data.ListLichNhac);

                $table.bootstrapTable('refreshOptions', { data: "" });

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
                    isMultiple: false,
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

                comboChonChuTriID.onChange(function () {
                    LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
            "LichHopID": LichHopID,
            "DoiTuongXemID": 3
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSachTaiLieuCuocHopByLichHopID",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            "DoiTuongXemID": 3
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/Load_DanhSachTaiLieuCuocHopByLichHopID",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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

    $("#btnThemShowThemFileDinhkem").click(function () {
        var notify = "Vui lòng không được để trống";
        var TenTaiLieu = $("#TenTaiLieuShowThemFileDinhkem").val();
        var TaiLieuCuocHopID = $("#TaiLieuCuocHopIDShowThemFileDinhkem").val();
        if (!TenTaiLieu) {
            alert_info(notify);
            return;
        }
        var DuocCongKhai = $("#DuocCongKhaiShowThemFileDinhkem").val();
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        debugger;
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
                "LichHopID": $("#LichHopID").val()
            },
            "LichHopID": $("#LichHopID").val(),
            "DoiTuongXemID": 3
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });
                $("#TaiLieuCuocHopIDShowThemFileDinhkem").val("0");
                $("#TenTaiLieuShowThemFileDinhkem").val("");
                $("#fileSelectShowThemFileDinhkem").val(null);
                $("#DuocCongKhai").prop('checked', true);
                $("#TenFileShowThemFileDinhkem").val("");
                $("#FileIDShowThemFileDinhkem").val("");
                $("#IDTableDanhSachTaiLieuHopShowThemFileDinhkem").bootstrapTable('refreshOptions', { data: JSON.parse(obj) });
                LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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
        LoadSchedule("PheDuyet", TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), null)
    });
    function searchKeyUp() {
        LoadSchedule("PheDuyet", TuNgay, DenNgay, Thang, Nam, "Search", $("#txtSearch").val(), null)
    }
    $("#btnPopUpDanhSachSchedule").click(function () {
        this._customAppointmentWindow = $("#customWindowDanhSachSchedulePhatHanh");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Danh sách",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#appointmentWindowDanhSachSchedulePhatHanh").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");


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
        Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanhXuatExcel");

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

    $("#btnHuyLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        alertify.confirm("<h4>Bạn có chắc chắn muốn hủy lịch họp? </h4>",
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
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
    });


    $("#btnPheDuyetLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        alertify.confirm("<h4>Bạn có chắc chắn muốn phê duyệt lịch họp ? </h4>",
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
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {
                            alert_success("Phê duyệt thành công");
                            //LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
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

    $("#btnKhongPheDuyetLichHop").click(function () {
        this._customAppointmentWindow = $("#customPopup");
        this._customAppointmentWindow.ejDialog("close");
        this._customAppointmentWindow = $("#customWindowKhongPheDuyet");
        this._customAppointmentWindow.ejDialog({
            //width: (this._mediaQuery) ? "100%" : 600,
            width: "50%",
            showOnInit: false,
            enableModal: true,
            title: "Nội dung không phê duyệt",
            //title: this._getLocalizedLabels("CreateAppointmentTitle"),
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });

        this._customAppointmentWindow.find("#customAppointmentWindowKhongPheDuyet").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    });

    $("#btnKhongPheDuyet").click(function () {
        if ($("#NoiDungKhongPheDuyet").val() == "") {
            alert_warning("Bạn chưa nhập nội dung");
            return;
        }

        var dataLichHop =
        {
            "objLichHop": {
                "LichHopID": $("#LichHopID").val(),
                "TinhTrangID": "9",
                "NoiDungKhongPheDuyet": $("#NoiDungKhongPheDuyet").val(),
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    alert_success("Không Phê duyệt thành công");
                    this._customAppointmentWindow = $("#customWindowKhongPheDuyet");
                    this._customAppointmentWindow.ejDialog("close");
                    //LoadSchedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString());
                }
                else {
                    alert_error("Xảy ra lỗi")

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var ResultData = JSON.parse(reponse.d);
                    var LichHop = JSON.parse(ResultData.LH_LICHHOP);
                    var TaiLieu = JSON.parse(ResultData.LH_TAILIEUCUOCHOP);
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

        LoadBieuQuyetByLichHopID($("#LichHopID").val())
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
        var TaiLieuCuocHopID = $("#TaiLieuCuocHopID").val();
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
            $("#TaiLieuCuocHopID").val(0);
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                        $("#TaiLieuCuocHopID").val("0");
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        var item =
                        {
                            "TaiLieuCuocHopID": TaiLieuCuocHopID,
                            "TenTaiLieu": TenTaiLieu,
                            "DuocCongKhai": DuocCongKhai,
                            "TenFile": obj.TenFile,
                            "FileID": obj.FileID,
                            "IsDelete": false,
                            "LichHopID": $("#LichHopID").val()
                        };
                        DataDanhSachTaiLieu.push(item);
                        $("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: DataDanhSachTaiLieu });

                        $("#TaiLieuCuocHopID").val("");
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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

    // Event Back


    $("#btnTroVeKhongPheDuyet").click(function () {
        this._customAppointmentWindow = $("#customWindowKhongPheDuyet");
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

    function saveUploadFile(TaiLieuCuocHopID, TenTaiLieu, DuocCongKhai, TenFile, FileID, IsDelete) {
        var data =
        {
            "obj": {
                "TaiLieuCuocHopID": TaiLieuCuocHopID,
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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                $("#TaiLieuCuocHopID").val("");
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

    function ChucNang(value, row, index) {
        if (row.TinhTrangID == "2")
            return [
                '<div>',
                '<button type="button"class="Check btn btn-info btn-xs">',
                '<i class=" fa fa-check"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
                '</button>',
                '</div>'
            ].join('');
        else {
            return [
                '<div>',
                '<button type="button" disabled class="Check btn btn-default btn-xs">',
                '<i class=" fa fa-check"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
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


    function ChucNangChinhSuaFileTaiLieuHop(value, row, index) {
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
        if (value == false || value == null)
            return [
                '<div>',
                '<span class="label label-warning" style="background-color: green; border-color: green;font-size:12px";>Không công khai</span>',
                '</div>'
            ].join('');

        if (value == true) {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Công khai</span>',
                '</div>'
            ].join('');
        }
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
            if (confirm('Bạn có chắc chắn muốn xóa file không?')) {
                $("#FileIDPhatHanh").val("");
                $("#TenFilePhatHanh").val("");
                $("#IDTableFileLichHopPhatHanh").bootstrapTable('refreshOptions', { data: "" });
                $("#divIDTableFileLichHopPhatHanh").hide();
            }
        },
        'click .DownloadFile': function (e, value, row, index) {
            window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + row.FileID;
        }
    }

    window.operateEventsSchedulePhatHanh = {
        'click .Check': function (e, value, row, index) {
            if (confirm('Bạn có chắc chắn muốn phê duyệt lịch họp?')) {
                var dataLichHop =
                {
                    "objLichHop": {
                        "LichHopID": row.LichHopID,
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
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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
            Load_DanhSach_Schedule("PheDuyet", TuNgay, DenNgay, "", "", "week", "", comboChonChuTriID.getSelectedIds().toString(), "IDTableDanhSachSchedulePhatHanh");

        }
    }

    window.operateEvents = {
        'click .Edit': function (e, value, row, index) {
            $("#TaiLieuCuocHopID").val(row.TaiLieuCuocHopID);
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
            $("#TaiLieuCuocHopIDShowThemFileDinhkem").val(row.TaiLieuCuocHopID);
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
                        "TaiLieuCuocHopID": row.TaiLieuCuocHopID,
                        "IsDelete": true,
                        "LichHopID": $("#LichHopID").val()
                    },
                    "LichHopID": $("#LichHopID").val(),
                    "DoiTuongXemID": 0,
                };

                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/SaveFileUpload",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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



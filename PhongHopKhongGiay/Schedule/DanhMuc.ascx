<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhMuc.ascx.cs" Inherits="PhongHopKhongGiay.Schedule.DanhMuc" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />
<%--<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/jquery-3.2.1.slim.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/popper.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/bootstrap.min.js") %>" type="text/javascript"></script>--%>


<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/bootstrap.min.css")%>' />
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/jquery.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Tab/bootstrap.min.js") %>" type="text/javascript"></script>

<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/bootstrap.min.css")%>' />--%>
<%--<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/default-theme/ej.web.all.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default-responsive.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/responsive-css/ej.responsive.css")%>' />--%>

<%--<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/jquery-3.4.1.min.js") %>" type="text/javascript"></script>--%>

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



<style type="text/css">
    .bootstrap-tagsinput {
        width: 100% !important;
        height: 50px !important;
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

<div>
    <ul class="nav nav-tabs">
        <li class="active"><a href="#DoiTuongNhac" data-toggle="tab">Đối tượng nhắc</a></li>
        <li><a href="#NhomChuTri" style="display:none" data-toggle="tab">Nhóm chủ trì</a></li>
        <li><a href="#ChuTri" data-toggle="tab"> Chủ trì</a></li>
        <li><a href="#QuyTrinh" data-toggle="tab"> Quy trình</a></li>
        <li><a href="#ThuKy" data-toggle="tab">Thư ký</a></li>
        <li><a href="#PhongHop" data-toggle="tab">Phòng họp</a></li>
        <li><a href="#LoaiLichHop" data-toggle="tab">Loại lịch họp</a></li>
        <li><a href="#DonViKhac" data-toggle="tab">Đơn vị khác</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="DoiTuongNhac" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Tên đối tượng <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenDoiTuong" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                    <input type="hidden" id="DoiTuongID" value="0">
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">Đối tượng nhắc</div>
                <div class="col-md-9">
                    <input type="checkbox" style="margin-top: -3px;" id="checkboxDoiTuongNhac" value="True">
                    <label>Hiển thị</label>
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemDoiTuong" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiDoiTuong' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableDoiTuongNhac"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenDoiTuong" data-sortable="true" data-align="left">Tên đối tượng</th>
                            <th data-field="DoiTuongNhac" data-formatter="formatterDoiTuongNhac" data-sortable="true" data-align="left">Đối tượng nhắc</th>
                            <th data-formatter="formatterChucNang" data-events="operateEventsDoiTuongNhac" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="NhomChuTri" style="margin-left: 30px; height: 350px;display:none">
            <br />
            <div class="col-md-2">Nhập tên nhóm chủ trì</div>
            <div class="col-md-5">
                <input id="TenNhomChuTri" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                <input type="hidden" id="NhomChuTriID" value="0">
            </div>
            <br />
            <br />
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemNhomChuTri" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiNhomChuTri' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableNhomChuTri"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenNhomChuTri" data-sortable="true" data-align="left">Tên nhóm chủ trì</th>
                            <th data-formatter="formatterChucNangChuTri" data-events="operateEventsNhomChuTri" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="ChuTri" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2">Chọn chủ trì <span style="color:red">*</span></div>
                <div class="col-md-9">
                    <input type="text" id="ComboChuTri" placeholder="Chọn" autocomplete="off" />
                </div>
            </div>

            <br />
            <br />
            <br />
            <div class="">
                <div class="col-md-2">Độ ưu tiên</div>
                <div class="col-md-9">
                    <input type="number" id="DoUuTien" />
                </div>
            </div>

            <br />
            <br />
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemChuTri" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiChuTri' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableChuTri"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenChuTri" data-sortable="true" data-align="left">Tên chủ trì</th>
                            <th data-field="DoUuTien" data-sortable="true" data-align="left">Độ ưu tiên</th>
                            <th data-formatter="formatterChucNangChuTri" data-events="operateEventsChuTri" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
            <div class="tab-pane" id="QuyTrinh" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2">Chọn người chuyển <span style="color:red">*</span></div>
                <div class="col-md-9">
                    <input type="text" id="ComboNguoiChuyen" placeholder="Chọn" autocomplete="off" />
                </div>
            </div>
                <br />
            <br />
            <br />
                <div class="">
                    <div class="col-md-2">Chọn người nhận <span style="color:red">*</span></div>
                    <div class="col-md-9">
                        <input type="text" id="ComboNguoiNhan" placeholder="Chọn" autocomplete="off" />
                    </div>
                </div>

            <br />
            <br />
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemQuyTrinh" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id="btnLamMoiQuyTrinh" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableQuyTrinh"
                    data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
                    data-toggle="table"
                    data-page-size="5"
                    data-mobile-responsive="true"
                    data-pagination="true"
                    data-show-footer="false"
                    data-height="400"
                       data-search="true"
                    data-formatter="detailFormatter"
                    data-sort-order="desc"
                    data-page-list="[5, 25, 50, 100, ALL]">
                    <thead>
                        <tr class="headings">
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="NguoiChuyen" data-sortable="true" data-align="left">Người chuyển</th>
                            <th data-field="NguoiNhan" data-sortable="true" data-align="left">Người nhận</th>
                            <th data-formatter="formatterChucNangChuTri" data-events="operateEventsQuyTrinh" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="ThuKy" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="col-md-2">Chọn thư ký</div>
            <div class="col-md-5">
                <input type="text" id="ComboThuKy" placeholder="Chọn" autocomplete="off" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemThuKy" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiThuKy' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableThuKy"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenThuKy" data-sortable="true" data-align="left">Tên chủ trì</th>
                            <th data-formatter="formatterChucNangChuTri" data-events="operateEventsThuKy" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="PhongHop" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Tên phòng họp <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenPhongHop" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                    <input type="hidden" id="PhongHopID" value="0">
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemPhongHop" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiPhongHop' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTablePhongHop"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenPhongHop" data-sortable="true" data-align="left">Tên phòng họp</th>
                            <th data-formatter="formatterChucNang" data-events="operateEventsPhongHop" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="LoaiLichHop" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Mã loại lịch họp <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="MaLoaiLichHop" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                    <input type="hidden" id="Id" value="0">
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Tên loại lịch họp <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenLoaiLichHop" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemLoaiLichHop" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiLoaiLichHop' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableLoaiLichHop"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="MaDanhMuc" data-sortable="true" data-align="left">Mã loại lịch họp</th>
                            <th data-field="TenDanhMuc" data-sortable="true" data-align="left">Tên loại lịch họp</th>
                            <th data-formatter="formatterChucNang" data-events="operateEventsLoaiLichHop" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <div class="tab-pane" id="DonViKhac" style="margin-left: 30px; height: 350px;">
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Tên đơn vị <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="TenDonVi" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                    <input type="hidden" id="DonViID" value="0">
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2 e-textlabel">
                    Email <span style="color: red">*</span>
                </div>
                <div class="col-md-9">
                    <input id="Email" class="Subject" type="text" value="" name="Subject" style="width: 50%" />
                </div>
            </div>
            <br />
            <br />
            <div class="">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button type="button" id="btnThemDonVi" class="btn btn-success"><i class="fa fa-plus "></i>&nbsp&nbsp Thêm</button>
                    <button type="button" id='btnLamMoiDonVi' class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp&nbsp Làm mới</button>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="col-md-10">
                <table id="IDTableDonVi"
                    data-classes="table-reponsive table table-striped jambo_table bulk_action vertical-align"
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
                            <th data-align="center" data-sortable="true" data-formatter="STT">STT</th>
                            <th data-field="TenDonVi" data-sortable="true" data-align="left">Tên đơn vị</th>
                            <th data-field="Email" data-sortable="true" data-align="left">Email</th>
                            <th data-formatter="formatterChucNang" data-events="operateEventsDonVi" data-align="center">Chức năng</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    var DataThanhPhanChuanBi;
    $(document).ready(function () {
        LoadData();

        function LoadData() {
            LoadThanhPhan();
            LoadDataTable(null, "DM_DOITUONG", "IDTableDoiTuongNhac");
            LoadDataTable(null, "DM_PHONGHOP", "IDTablePhongHop");
            LoadDataTable(null, "DM_NHOMCHUTRI", "IDTableNhomChuTri");
            LoadDataTable(null, "DM_CHUTRI", "IDTableChuTri");
            LoadDataTable(null, "DM_THUKY", "IDTableThuKy");
            LoadDataTable(null, "DM_DONVI", "IDTableDonVi");
            LoadDataTable(null, "DM_QUITRINHXULY", "IDTableQuyTrinh");
            LoadDataTable(null, "DM_LOAILICHHOP", "IDTableLoaiLichHop");

        }



        function LoadThanhPhan() {
            var dataTable =
            {
                "obj": {
                    "TenTable": "DM_THANHPHANCHUANBI"
                }
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LoadDataTable",
                data: JSON.stringify(dataTable),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        DataThanhPhanChuanBi = JSON.parse(reponse.d);
                        var SelectParentDistinceChuanBi;
                        if (DataThanhPhanChuanBi.length > 0) {

                            SelectParentDistinceChuanBi = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [], isSelectable: false, }));

                            SelectParentThanhPhanChuanBi = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [], isSelectable: false, }));
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

                        ComboNguoiNhan = $('#ComboNguoiNhan').comboTree({
                            source: SelectParentDistince,
                            isMultiple: false,
                            cascadeSelect: false
                        });

                        ComboNguoiChuyen = $('#ComboNguoiChuyen').comboTree({
                            source: SelectParentDistince,
                            isMultiple: false,
                            cascadeSelect: false
                        });
                        ComboChuTri = $('#ComboChuTri').comboTree({
                            source: SelectParentDistince,
                            isMultiple: false,
                            cascadeSelect: false
                        });
                        ComboThuKy = $('#ComboThuKy').comboTree({
                            source: SelectParentDistince,
                            isMultiple: true,
                            cascadeSelect: false
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
        }

        $("#btnThemDoiTuong").click(function () {
            if ($("#TenDoiTuong").val() == "") {
                alert_warning("Bạn chưa nhập tên đối tượng");
                return;
            }
            var DataObject =
            {
                "obj": {
                    "DoiTuongID": $("#DoiTuongID").val(),
                    "TenDoiTuong": $("#TenDoiTuong").val(),
                    "DoiTuongNhac": $('#checkboxDoiTuongNhac').is(":checked"),
                    "IsDelete": false
                },
                "TenStore": "DM_DOITUONG"
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                data: JSON.stringify(DataObject),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        $("#DoiTuongID").val("0");
                        $("#TenDoiTuong").val("");
                        $("#checkboxDoiTuongNhac").prop('checked', true);
                        LoadDataTable(null, "DM_DOITUONG", "IDTableDoiTuongNhac");
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

        $("#btnLamMoiDoiTuong").click(function () {
            $("#DoiTuongID").val("0");
            $("#TenDoiTuong").val("");
            $("#checkboxDoiTuongNhac").prop('checked', true);
        });


        $("#btnThemPhongHop").click(function () {
            if ($("#TenPhongHop").val() == "") {
                alert_warning("Bạn chưa nhập tên phòng họp");
                return;
            }
            var DataObject =
            {
                "obj": {
                    "PhongHopID": $("#PhongHopID").val(),
                    "TenPhongHop": $("#TenPhongHop").val(),
                    "IsDelete": false
                },
                "TenStore": "DM_PHONGHOP"
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                data: JSON.stringify(DataObject),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        $("#PhongHopID").val("0");
                        $("#TenPhongHop").val("");
                        LoadDataTable(null, "DM_PHONGHOP", "IDTablePhongHop");
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

        $("#btnLamMoiPhongHop").click(function () {
            $("#PhongHopID").val("0");
            $("#TenPhongHop").val("");
        });

        $("#btnThemLoaiLichHop").click(function () {
            if ($("#MaLoaiLichHop").val() == "") {
                alert_warning("Bạn chưa nhập mã loại lịch họp");
                return;
            }
            if ($("#TenLoaiLichHop").val() == "") {
                alert_warning("Bạn chưa nhập tên loại lịch họp");
                return;
            }
            var DataObject =
            {
                "obj": {
                    "Id": $("#Id").val(),
                    "MaDanhMuc": $("#MaLoaiLichHop").val(),
                    "TenDanhMuc": $("#TenLoaiLichHop").val(),
                    "IsDelete": false
                },
                "TenStore": "DM_LOAILICHHOP"
            };
            debugger
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
                        $("#Id").val("0");
                        $("#MaLoaiLichHop").val("");
                        $("#TenLoaiLichHop").val("");
                        LoadDataTable(null, "DM_LOAILICHHOP", "IDTableLoaiLichHop");
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

        $("#btnLamMoiLoaiLichHop").click(function () {
            $("#Id").val("0");
            $("#MaLoaiLichHop").val("");
            $("#TenLoaiLichHop").val("");
        });

        $("#btnThemDonVi").click(function () {
            if ($("#TenDonVi").val() == "") {
                alert_warning("Bạn chưa nhập tên đơn vị");
                return;
            }
            if ($("#Email").val() == "") {
                alert_warning("Bạn chưa nhập Email");
                return;
            }
            var DataObject =
            {
                "obj": {
                    "DonViID": $("#DonViID").val(),
                    "TenDonVi": $("#TenDonVi").val(),
                    "Email": $("#Email").val(),
                    "IsDelete": false
                },
                "TenStore": "DM_DONVI"
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                data: JSON.stringify(DataObject),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        $("#DonViID").val("0");
                        $("#TenDonVi").val("");
                        $("#Email").val("");
                        LoadDataTable(null, "DM_DONVI", "IDTableDonVi");
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

        $("#btnLamMoiDonVi").click(function () {
            $("#DonViID").val("0");
            $("#TenDonVi").val("");
            $("#Email").val("");
        });
        $("#btnLamMoiThuKy").click(function () {
            comboThuKy.clearSelection();
        });

        $("#btnLamMoiChuTri").click(function () {
            ComboChuTri.clearSelection();
        });

        $("#btnLamMoiQuyTrinh").click(function () {
            ComboNguoiNhan.clearSelection();
            ComboNguoiChuyen.clearSelection();
        });

        $("#btnThemChuTri").click(function () {
            var DataSelectedCombo = ComboChuTri.getSelectedNames();
            if (!DataSelectedCombo) {
                alert_warning("Bạn chưa chọn dữ liệu");
                return;
            }
            var IsExistedData = $("#IDTableChuTri").bootstrapTable('getData').filter(x => DataSelectedCombo.indexOf(x.TenChuTri) !== -1);
            if (IsExistedData.length > 0) {
                alert_warning("Đã tồn tại dữ liệu");
                return;
            }

            var DataSelected = DataThanhPhanChuanBi.filter(x => DataSelectedCombo.indexOf(x.FullName) !== -1);
            for (var i = 0; i < DataSelected.length; i++) {
                var DataObject =
                {
                    "obj": {
                        "ChuTriID": 0,
                        "TenChuTri": DataSelected[i].FullName,
                        "UserID": DataSelected[i].UserID,
                        "DoUuTien": $("#DoUuTien").val(),
                        "IsDelete": false
                    },
                    "TenStore": "DM_CHUTRI"
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                    data: JSON.stringify(DataObject),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {

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
            LoadDataTable(null, "DM_CHUTRI", "IDTableChuTri");
            ComboChuTri.clearSelection();
            $("#DoUuTien").val("");

        });


        $("#btnThemQuyTrinh").click(function () {
            var DataSelectedComboNguoiChuyen = ComboNguoiChuyen.getSelectedNames();
            if (!DataSelectedComboNguoiChuyen) {
                alert_warning("Bạn chưa chọn dữ liệu người chuyển");
                return;
            }
            var DataSelectedComboNguoiNhan = ComboNguoiNhan.getSelectedNames();
            if (!DataSelectedComboNguoiNhan) {
                alert_warning("Bạn chưa chọn dữ liệu người nhận");
                return;
            }
            var DataObject =
                {
                    "obj": {
                        "QuiTrinhID": 0,
                        "NguoiChuyenID": ComboNguoiChuyen.getSelectedIds().toString(),
                        "NguoiNhanID": ComboNguoiNhan.getSelectedIds().toString(),
                        "IsDelete": false
                    },
                "TenStore": "DM_QUITRINHXULY"
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
                            LoadDataTable(null, "DM_QUITRINHXULY", "IDTableQuyTrinh");
                            ComboNguoiNhan.clearSelection();
                            ComboNguoiChuyen.clearSelection();
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


        $("#btnThemThuKy").click(function () {
            var DataSelectedCombo = ComboThuKy.getSelectedNames();
            if (!DataSelectedCombo) {
                alert_warning("Bạn chưa chọn dữ liệu");
                return;
            }
            var IsExistedData = $("#IDTableThuKy").bootstrapTable('getData').filter(x => DataSelectedCombo.indexOf(x.TenThuKy) !== -1);
            if (IsExistedData.length > 0) {
                alert_warning("Đã tồn tại dữ liệu");
                return;
            }
            var DataSelected = DataThanhPhanChuanBi.filter(x => DataSelectedCombo.indexOf(x.FullName) !== -1);
            for (var i = 0; i < DataSelected.length; i++) {
                var DataObject =
                {
                    "obj": {
                        "ThuKyID": 0,
                        "TenThuKy": DataSelected[i].FullName,
                        "UserID": DataSelected[i].UserID,
                        "IsDelete": false
                    },
                    "TenStore": "DM_THUKY"
                };
                $.ajax({
                    type: "POST",
                    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                    data: JSON.stringify(DataObject),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                        if (reponse.d) {

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
            ComboThuKy.clearSelection();
            LoadDataTable(null, "DM_THUKY", "IDTableThuKy");

        });

        $("#btnThemNhomChuTri").click(function () {
            var datatext = $("#TenNhomChuTri").val();
            if (!datatext) {
                alert_warning("Bạn chưa nhập tên nhóm chủ trì");
                return;
            }
            var IsExistedData = $("#IDTableNhomChuTri").bootstrapTable('getData').filter(x => x.TenNhomChuTri == datatext);
            if (IsExistedData.length > 0) {
                alert_warning("Đã tồn tại dữ liệu");
                return;
            }
            var DataObject =
            {
                "obj": {
                    "NhomChuTriID": 0,
                    "TenNhomChuTri": datatext,
                    "IsDelete": false
                },
                "TenStore": "DM_NHOMCHUTRI"
            };
            $.ajax({
                type: "POST",
                url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                data: JSON.stringify(DataObject),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    if (reponse.d) {
                        LoadDataTable(null, "DM_NHOMCHUTRI", "IDTableChuTri");
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

        $("#btnLamMoiNhomChuTri").click(function () {
            $("#TenNhomChuTri").val("");
            $("#NhomChuTriID").val("0");
        });
    });

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
            success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
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

    function STT(value, row, index) {
        return [
            '<div>',
            '  <label>',
            '<span style="font-family: Helvetica,Arial,sans-serif;font-size:15px";>' + (index + 1) + '</span>',
            '</label>',
            '</div>'
        ].join('');

    };

    function formatterDoiTuongNhac(value, row, index) {
        if (value == true) {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;">' + 'Hiển thị' + '</span>',
                '</div>'
            ].join('');
        }
        else {
            return [
                '<div>',
                '<span class="label label-danger" style="font-family: Helvetica,Arial,sans-serif;font-size:12px;">' + 'Không hiển thị' + '</span>',
                '</div>'
            ].join('');
        }

    };
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
            //'<button type="button" class="DownloadFile btn btn-default btn-xs">',
            //'<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            //'</button>',
            '</div>'
        ].join('');
    };

    function formatterChucNangChuTri(value, row, index) {
        return [
            '<div>',
            '&nbsp&nbsp&nbsp',
            '<button type="button"  class="Remove btn btn-danger btn-xs">',
            '<i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            '</button>',
            '&nbsp&nbsp&nbsp',
            //'<button type="button" class="DownloadFile btn btn-default btn-xs">',
            //'<i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>',
            //'</button>',
            '</div>'
        ].join('');
    };


    window.operateEventsDoiTuongNhac = {
        'click .Edit': function (e, value, row, index) {
            $("#DoiTuongID").val(row.DoiTuongID);
            $("#TenDoiTuong").val(row.TenDoiTuong);
            $("#DoUuTien").val(row.DoUuTien);
            if (row.DoiTuongNhac) {
                $("#checkboxDoiTuongNhac").prop('checked', true);
            }
            else {
                $("#checkboxDoiTuongNhac").prop('checked', false);
            }

            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4> Bạn có chắc chắn muốn xóa không ? </h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "DoiTuongID": row.DoiTuongID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_DOITUONG"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                $("#DoiTuongID").val("0");
                                $("#TenDoiTuong").val("");
                                $("#checkboxDoiTuongNhac").prop('checked', true);
                                LoadDataTable(null, "DM_DOITUONG", "IDTableDoiTuongNhac");
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

        }
    };

    window.operateEventsPhongHop = {
        'click .Edit': function (e, value, row, index) {
            $("#PhongHopID").val(row.PhongHopID);
            $("#TenPhongHop").val(row.TenPhongHop);
            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "PhongHopID": row.PhongHopID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_PHONGHOP"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                $("#PhongHopID").val("0");
                                $("#TenPhongHop").val("");
                                LoadDataTable(null, "DM_PHONGHOP", "IDTablePhongHop");
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

        }
    };
    window.operateEventsLoaiLichHop = {
        'click .Edit': function (e, value, row, index) {
            debugger
            $("#Id").val(row.Id);
            $("#MaLoaiLichHop").val(row.MaDanhMuc);
            $("#TenLoaiLichHop").val(row.TenDanhMuc);
            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "Id": row.Id,
                            "IsDelete": true
                        },
                        "TenStore": "DM_LOAILICHHOP"
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
                                $("#Id").val("0");
                                $("#MaLoaiLichHop").val("");
                                $("#TenLoaiLichHop").val("");
                                LoadDataTable(null, "DM_LOAILICHHOP", "IDTableLoaiLichHop");
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

        }
    };
    window.operateEventsDonVi = {
        'click .Edit': function (e, value, row, index) {
            $("#DonViID").val(row.DonViID);
            $("#TenDonVi").val(row.TenDonVi);
            $("#Email").val(row.Email);
            //alert('You click like action, row: ' + JSON.stringify(row))
        },
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "DonViID": row.DonViID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_DONVI"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                $("#PhongHopID").val("0");
                                $("#TenPhongHop").val("");
                                LoadDataTable(null, "DM_PHONGHOP", "IDTablePhongHop");
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

        }
    };
    window.operateEventsChuTri = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "ChuTriID": row.ChuTriID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_CHUTRI"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                LoadDataTable(null, "DM_CHUTRI", "IDTableChuTri");
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

        }
    };

    window.operateEventsQuyTrinh = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "QuiTrinhID": row.QuiTrinhID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_QUITRINHXULY"
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
                                LoadDataTable(null, "DM_QUITRINHXULY", "IDTableQuyTrinh");
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

        }
    };

    window.operateEventsNhomChuTri = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "NhomChuTriID": row.ChuTriID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_CHUTRI"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                LoadDataTable(null, "DM_NHOMCHUTRI", "IDTableNhomChuTri");
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

        }
    };
    window.operateEventsThuKy = {
        'click .Remove': function (e, value, row, index) {
            alertify.confirm("<h4>Bạn có chắn chắn muốn xóa dữ liệu ?</h4>",
                function () {
                    var DataObject =
                    {
                        "obj": {
                            "ThuKyID": row.ThuKyID,
                            "IsDelete": true
                        },
                        "TenStore": "DM_THUKY"
                    };
                    $.ajax({
                        type: "POST",
                        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/DM_DANHMUC_InsUpDel",
                        data: JSON.stringify(DataObject),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (reponse) { if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                            if (reponse.d) {
                                LoadDataTable(null, "DM_THUKY", "IDTableThuKy");
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

        }
    };

</script>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaiLieuKhacV2.ascx.cs" Inherits="PhongHopKhongGiay.TaiLieu.TaiLieuKhacV2" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/jquery-3.2.1.slim.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/popper.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/Popper/bootstrap.min.js") %>" type="text/javascript"></script>

<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/bootstrap.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/default-theme/ej.web.all.min.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/default-responsive.css")%>' />
<link rel="Stylesheet" type="text/css" href='<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/content/ejthemes/responsive-css/ej.responsive.css")%>' />

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Libary/javascript-ej1-demos/scripts/jquery-3.4.1.min.js") %>" type="text/javascript"></script>

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


<style>
    .bg-search {
        border-width: 0px;
        background: inherit;
        background-color: rgba(255, 255, 255, 1);
        border: none;
        border-radius: 5px;
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        box-shadow: none;
        font-size: 14px;
    }

    .tai-lieu-khac {
        background-color: #fff;
        padding: 37px;
        border-radius: 5px;
    }

        .tai-lieu-khac .mb-10 {
            margin-bottom: 10px !important;
        }

        .tai-lieu-khac .mb-20 {
            margin-bottom: 20px !important;
        }

        .tai-lieu-khac [class^="col-md-"] {
            padding-left: 15px !important;
            padding-right: 15px !important;
        }

        .tai-lieu-khac .form-group label {
            display: inline-block;
            max-width: 100%;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .tai-lieu-khac .btn-custom {
            margin-left: 5px;
            background-color: #f19f4a;
            border-color: #f19f4a;
            color: #fff;
        }

            .tai-lieu-khac .btn-custom:hover {
                color: #fff;
                background-color: #e79846;
                border-color: #e79846;
            }

    .btn-icon {
        outline: 0;
        border: 1px solid #ddd;
        background-color: #fff;
        padding: 5px 7px;
        border-radius: 5px;
    }

    .grid-tai-lieu-khac {
        margin-top: 20px !important;
        background-color: #fff;
        padding: 37px;
        border-radius: 5px;
    }

    .group-btn {
        border-bottom: 1px solid #ddd;
        margin: auto 20px;
        padding-bottom: 15px;
    }

    table#IDTableDanhSachThongKeCuocHop tbody tr, table#IDTableChiTietDanhSachThongKeCuocHop tbody tr {
        cursor: pointer !important;
    }

        table#IDTableDanhSachThongKeCuocHop tbody tr:not(.no-hover):hover {
            background-color: #ddd !important;
        }

    thead tr:hover td {
        background-color: none !important;
    }

    .bootstrap-table .fixed-table-pagination > .pagination-detail .page-list .btn-group .dropdown-menu {
        /*height: 115px !important;*/
    }

    .grid-tai-lieu-khac .bootstrap-table .fixed-table-pagination > .pagination-detail {
        display: none;
    }

    #appointmentWindowTaiLieuKhac .bootstrap-table .fixed-table-pagination > .pagination-detail {
        display: none;
    }

    .appointmentWindowTaiLieuKhac .mb-10 {
        margin-bottom: 10px !important;
    }

    .appointmentWindowTaiLieuKhac .mt-10 {
        margin-top: 10px !important;
    }

    .mt-20 {
        margin-top: 20px;
    }

    .mb-20 {
        margin-bottom: 20px;
    }

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


    .inline {
        display: inline-block;
    }

    .parent-title {
        background-color: #99e3e3 !important;
        border-color: #2196F3 !important;
        color: #000 !important;
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

    .ajs-ok {
        color: #fff;
        background-color: #2c87d7;
        border-color: #2c87d7;
    }

    .ajs-cancel {
        color: #fff;
        background-color: #d72f2f;
        border-color: #d72f2f;
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

<div class="content-container-fluid main-screen">

    <%--Form search--%>
    <div class="row tai-lieu-khac">
        <div class="">
            <div class="col-md-12 mb-10">
                <div class="col-md-4">
                    <!-- Tên tài liệu -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Tên tài liệu</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Nhập tên tài liệu" id="TaiLieu" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Tài liệu từ ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Từ ngày</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn từ ngày" id="TuNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Tài liệu đến ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Đến ngày</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn đến ngày" id="DenNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs-block visible-sm-block "></div>
            </div>
            <div class="col-md-12 mb-10" style="text-align: center; margin-top: 20px;">

                <button style="width: 136px; margin-right: 20px;" type="button" id="btnThucHien" class="btn btn-primary">&nbsp Tìm kiếm</button>
                <button style="width: 136px;" type="button" id="btnThemMoi" class="btn btn-custom e-workcells e-alternatecells e-businesshighlightworkcells">&nbsp Thêm mới</button>
            </div>
        </div>
    </div>


    <%--Table data--%>
    <div class="row grid-thong-ke-cuoc-hop">
        <div style="margin-bottom: 20px">Danh sách tài liệu</div>
        <div class="">
            <div>
                <ul name="ul-group" id="TaiLieuKhac_TreeView">
                </ul>
            </div>

            <script id="dataTaiLieuKhac-Template" type="x-tmpl-mustache">   
                                   <li class="mg-b-5p" style=" margin-bottom: 5px;">     
                                        <div class="parent-title inline" data-id="{{Index}}" data-name="{{TenTaiLieu}}" onclick="quanLyTaiLieuKhacV2.f_CloseChill(this)">
                                            <i class="glyphicon glyphicon-plus"></i>
                                            <span class="bold">{{TenTaiLieu}} </span>                   
                                        </div>
                                        <div class="inline">
                                            <button type="button" data-TenTaiLieu="{{TenTaiLieu}}"
                                            class="Edit_FileCuocHop btn btn-info btn-xs" onclick="f_UpdTaiLieuCuocHop(this)">
                                            <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                            </button>
                                        </div>
                                       <ul id="ul-file-{{Index}}" data-ulFileShow="ul-file-{{Index}}" class="ul-tree-type" style="display: none;">
                                            <li>
                                                <ul name="ul-listFile-{{Index}}" class="lst-main" id="TaiLieuKhac_ListFile_{{Index}}">
                                                    
                                                </ul>
                                            </li>
                                        </ul>
                                    </li> 
            </script>
            <script id="dataTaiLieuKhac-listFile-Template" type="x-tmpl-mustache">   
                                <li data-id-parent-noidung="01">
                                    <span class="gly-file glyphicon glyphicon-file" title="{{TenFile}}"></span>
                                    <span class="cursor-default">{{TenFile}}</span>
                                    <%--<button type="button" 
                                    data-TaiLieuID="{{TaiLieuID}}"
                                    data-TenTaiLieu="{{TenTaiLieu}}"
                                    data-TenFile="{{TenFile}}"
                                    data-FileID="{{FileID}}"
                                 
                                    class="Edit_FileCuocHop btn btn-info btn-xs" onclick="f_UpdTaiLieuCuocHop(this)">
                                        <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>--%>
                                    <button type="button" data-fileid={{FileID}} class=" btn btn-default btn-xs" onclick="quanLyTaiLieuKhacV2.f_DonwLoadFile(this)">
                                        <i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif" ;=""></span></i>
                                    </button>
                                    <button type="button" data-fileid={{FileID}} class="btn btn-danger btn-xs" onclick="f_DeleteFile_TaiLieu(this)">
                                        <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>
                                </li>      
            </script>
        </div>
    </div>




    <div id="customWindowTaiLieuKhac" style="padding: 1em; display: none;">
        <div id="appointmentWindowTaiLieuKhac" class="appointmentWindowTaiLieuKhac">
            <form id="customAppointmentWindowTaiLieuKhac">
                <div id="container">
                    <div class="col-md-12 mb-10 ">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                <label class="col-sm-4 col-xs-4 control-label">Tên tài liệu</label>
                                <div class="col-sm-8 col-xs-8">
                                    <input list="TenTaiLieu" name="TenTaiLieu" value="" class="col-sm-6 form-control custom-select custom-select-sm">
                                    <input type="hidden" id="TaiLieuID" value="0">
                                    <input type="hidden" id="TenFile" value="">
                                    <input type="hidden" id="FileID" value="">
                                    <datalist id="TenTaiLieu">
                                    </datalist>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 mb-10  displayHidden">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                <label class="col-sm-4 col-xs-4 control-label">Tệp đính kèm</label>
                                <div class="col-sm-8 col-xs-8">
                                    <input type="file" id="fileSelect" multiple onchange="checkfile(this)" accept="xlsx, xls, doc, docx, pdf, pptx" />
                                    <label id="file-name"></label>
                                    <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-xs-block visible-sm-block"></div>
                    </div>

                    <%--button--%>
                    <div class="col-md-12 mb-10 ">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <button type="button" id="btnThem" class="btn btn-primary" style="width: 100px; height: 30px; line-height: 0px; margin-right: 20px;">Lưu</button>
                            <button type="button" id="btnDong" class="btn btn-custom" style="width: 100px; height: 30px; line-height: 0px; background-color: #a1a1a1; color: #fff">Đóng</button>
                        </div>
                    </div>
                </div>
                <br />
            </form>
            <%--    <div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                        <button type="button" id="btnThem" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Thêm</button>
                    </div>
                </div>
                <br />
            </div>--%>
        </div>
    </div>

</div>

<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/plugins/mustache.min.js") %>" type="text/javascript"></script>
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/controllers/quanLyTaiLieuKhacV2.js") %>" type="text/javascript"></script>
<script type="text/javascript">


    var idTenTaiLieu, tentailieudata, SelectTenTaiLieu;
    var DataDanhSachTaiLieu = [];
    var DataDanhSachTaiLieuInsert = [];
    var taiLieuID = "";
    var setTuNgay = new Date();
    setTuNgay.setDate(setTuNgay.getDate() - 30);

    $(function () {
        $("#TuNgay").ejDatePicker({
            locale: "vi-VN",
            value: setTuNgay,
            dateFormat: "dd/MM/yyyy",
            width: "100%",
        });


        $("#DenNgay").ejDatePicker({
            locale: "vi-VN",
            value: new Date(),
            dateFormat: "dd/MM/yyyy",
            width: "100%",
        });


    });


    $("#btnThemMoi").click(function () {

        $(".displayHidden").css({ "display": "block" });

        this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
        this._customAppointmentWindow.ejDialog({
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Thêm mới tài liệu",
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowTaiLieuKhac").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        ClearControl();
    });

    $("#btnDong").click(function () {
        this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
        this._customAppointmentWindow.ejDialog("close");
        ClearControl();
    })

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

    function LoadData() {
        debugger
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
                var TenTaiLieu = JSON.parse(data.ListTenTaiLieu);

                if (TenTaiLieu.Table.length > 0) {
                    SelectTenTaiLieu = TenTaiLieu.Table.map(p => ({ id: p.Ma, title: p.Ten }));

                    $.each(SelectTenTaiLieu, function (i, item) {
                        $("#TenTaiLieu").append($("<option>").attr('data-value', item.id).text(item.title));
                    });
                }
            }
        });
    }



    $("input[name=TenTaiLieu]").focusout(function () {
        idTenTaiLieu = $([].slice.call($(this)[0].list.children).filter((e) => {

            return e.value === $(this).val();
        })).attr('data-value');
    });




    $("#btnThem").click(function () {

       /* var fileID, filename;*/
        var notify = "Vui lòng không được để trống";
        var TenTaiLieu = $("input[name=TenTaiLieu]").val();
        var TaiLieuID = $("#TaiLieuID").val();
        if (!TenTaiLieu) {
            alert_warning(notify);
            return;
        }
        //if (taiLieuID && taiLieuID != "") {

        //    UpdateTaiLieu(TenTaiLieu, tentailieudata);
        //    return;
        //}

        if (tentailieudata && tentailieudata != "") {
            UpdateTaiLieu(TenTaiLieu, tentailieudata);
            return;
        }

        var FileID = $("#FileID").val();


        var fileUpload = $("#fileSelect").get(0);
        var files = fileUpload.files;
        if (files.length == 0) {
            alert_warning("Vui lòng đính kèm file");
            return;
        }

        var data = new FormData();
        for (var i = 0; i < files.length; i++) {
            data.append(files[i].name, files[i]);
        }
        debugger
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
                    debugger
                    if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                    var obj = JSON.parse(reponse)
                    if (obj != "") {
                        if (obj.length >= 2) { // không có file đính kèm và đã tồn tại file trên lưới
                            for (let i = 0; i < obj.length; i++) {
                                var item =
                                {
                                    "STT": 1,
                                    "TaiLieuID": TaiLieuID,
                                    "TenTaiLieu": TenTaiLieu,
                                    "TenFile": obj[i].TenFile,
                                    "FileID": obj[i].FileID,
                                    "IsDelete": false
                                };
                                DataDanhSachTaiLieuInsert.push(item);
                            }
                        }
                        else {
                            var item =
                            {
                                "STT": 1,
                                "TaiLieuID": TaiLieuID,
                                "TenTaiLieu": TenTaiLieu,
                                "TenFile": obj.TenFile,
                                "FileID": obj.FileID,
                                "IsDelete": false
                            };
                            DataDanhSachTaiLieuInsert.push(item);
                        }                       
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
            });           
        } //hungnk end


        var obj =
        {
            "DataDanhSachTaiLieuInsert": DataDanhSachTaiLieuInsert
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_ThemTaiLieuKhacData",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false, // Set false để chạy đồng bộ
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (dataDanhSachSchedule[0].Result == "1") {
                    alert_success("Thêm thành công");
                    ClearControl();
                    this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, $("#TuNgay").val(), $("#DenNgay").val());
                }
                else {
                    alert_error("Lỗi trong quá trình xử lý");
                }



            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
        

        //if (files.length > 0) {
        //    //hungnk begin upload file server
        //    $.ajax({
        //        type: "POST",
        //        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/FileUploadHandler.ashx",
        //        data: data,
        //        async: false,
        //        contentType: false,
        //        processData: false,
        //        enctype: 'multipart/form-data',
        //        success: function (reponse) {
        //            debugger
        //            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
        //            var obj = JSON.parse(reponse)
        //            if (obj != "") {
        //                if (obj.length >= 2) {
        //                    for (var i = 0; i < Object.keys(obj).length; i++) {
        //                        filename = obj[i].TenFile;
        //                        fileID = obj[i].FileID;
        //                        ThemMoiTaiLieu(filename, fileID);
        //                    }

        //                }
        //                else {
        //                    filename = obj.TenFile;
        //                    fileID = obj.FileID;
        //                    ThemMoiTaiLieu(filename, fileID);
        //                }


        //            }
        //        },
        //        error: function (XMLHttpRequest, textStatus, errorThrown) {
        //            alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
        //        },
        //    });
        //}


    });


    //function ThemMoiTaiLieu(filename, fileID) {
    //    /*        debugger*/
    //    var obj =
    //    {
    //        "TenTaiLieu": $("input[name='TenTaiLieu']").val(),
    //        "TenFile": filename,
    //        "FileID": fileID
    //    };
    //    $.ajax({
    //        type: "POST",
    //        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_ThemTaiLieuKhac",
    //        data: JSON.stringify(obj),
    //        contentType: "application/json; charset=utf-8",
    //        dataType: "json",
    //        success: function (reponse) {
    //            debugger
    //            if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
    //            var obj = reponse.d;
    //            var dataDanhSachSchedule = JSON.parse(obj);
    //            if (dataDanhSachSchedule[0].Result == "1") {
    //                alert_success("Thêm thành công");
    //                ClearControl();
    //                this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
    //                this._customAppointmentWindow.ejDialog("close");
    //                LoadDanhSachFirst(null, $("#TuNgay").val(), $("#DenNgay").val());
    //            }
    //            else {
    //                alert_error("Lỗi trong quá trình xử lý");
    //            }



    //        },
    //        error: function (XMLHttpRequest, textStatus, errorThrown) {
    //            alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
    //        },
    //    });


    //}



    $("#btnThucHien").click(function () {
        debugger
        var TenTaiLieu = $("#TaiLieu").val();
        var TuNgay = $("#TuNgay").val();
        var DenNgay = $("#DenNgay").val();

        var TuNgayMoment = moment(TuNgay, 'DD/MM/YYYY');
        var TuNgayObject = TuNgayMoment.toDate();
        var DenNgayMoment = moment(DenNgay, 'DD/MM/YYYY');
        var DenNgayObject = DenNgayMoment.toDate();


        if (TuNgayObject > DenNgayObject) {
            alert_error("Từ ngày phải nhỏ hơn đến ngày");
        }
        else {
            LoadDanhSachFirst(TenTaiLieu, TuNgay, DenNgay);
        }
    });


    function LoadDanhSachFirst(TenTaiLieu, TuNgay, DenNgay) {

        var dataGetSearch =
        {
            "objLichHop": {
                "TenTaiLieu": TenTaiLieu,
                "TuNgay": TuNgay,
                "DenNgay": DenNgay
            },
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_GetDSTaiLieuKhacV2",
            data: JSON.stringify(dataGetSearch),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; } if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataListMeetingReport = JSON.parse(reponse.d);
                    if (dataListMeetingReport) {

                        DataDanhSachTaiLieu = [];
                        $.each(dataListMeetingReport, function (i, item) {

                            var itemdata =
                            {
                                "STT": 1,
                                "TaiLieuID": item.TaiLieuID,
                                "TenFile": item.TenFile,
                                "FileID": item.FileID,
                                "TenTaiLieu": item.TenTaiLieu,
                                "IsDelete": false
                            };

                            DataDanhSachTaiLieu.push(itemdata);


                        });

                        for (let i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                            DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
                        }
                        quanLyTaiLieuKhacV2.f_LoadDataTaiLieuKhac(null, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
                        quanLyTaiLieuKhacV2.common_ReloadTreeViewOpen();

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

    function f_DeleteFile_TaiLieu(e) {
        debugger
        alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
            function () {
                let fileID = $(e).attr('data-fileid') || '';
                for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                    if (DataDanhSachTaiLieu[i].FileID == fileID) {
                        DataDanhSachTaiLieu[i].IsDelete = true;
                    }
                }

                DeleteLHThuMuc(fileID);
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        return false;

    };

    function f_UpdTaiLieuCuocHop(e) {
        debugger
        let that = $(e);
        tentailieudata = that.attr('data-TenTaiLieu');
        $("input[name='TenTaiLieu']").val(that.attr('data-TenTaiLieu'));
        taiLieuID = that.attr('data-TaiLieuID');
        $(".displayHidden").css({ "display": "none" });

        this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
        this._customAppointmentWindow.ejDialog({
            width: "80%",
            showOnInit: false,
            enableModal: true,
            title: "Update tài liệu",
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: "clearFields"
        });
        this._customAppointmentWindow.find("#customAppointmentWindowTaiLieuKhac").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    }

    function UpdateTaiLieu(tenTaiLieu, tentailieudata) {
        debugger
        var obj =
        {
            "TenTaiLieu": tenTaiLieu,
            "TenTaiLieuData": tentailieudata,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_UpdateTaiLieuKhac",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (dataDanhSachSchedule[0].Result == "1") {
                    alert_success("Sửa thành công");
                    this._customAppointmentWindow = $("#customWindowTaiLieuKhac");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, $("#TuNgay").val(), $("#DenNgay").val());
                }
                else {
                    alert_error("Lỗi trong quá trình xử lý");
                }



            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });
    }

    function DeleteLHThuMuc(fileID) {

        var obj =
        {
            "FileID": fileID
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_DeleteTaiLieuKhac",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (dataDanhSachSchedule[0].Result == "1") {
                    alert_success("Thêm thành công");
                    LoadDanhSachFirst(null, $("#TuNgay").val(), $("#DenNgay").val());
                }
                else {
                    alert_error("Lỗi trong quá trình xử lý");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    }


    function ClearControl() {
        $("input[name='TenTaiLieu']").val("");
        $("#fileSelect").val(null);
        $("#TaiLieuID").val("0");
        $("#TenFile").val("");
        $("#FileID").val("");
        DataDanhSachTaiLieuInsert = [];
        taiLieuID = "";
    }
    LoadData();
    LoadDanhSachFirst(null, $("#TuNgay").val(), $("#DenNgay").val());
</script>

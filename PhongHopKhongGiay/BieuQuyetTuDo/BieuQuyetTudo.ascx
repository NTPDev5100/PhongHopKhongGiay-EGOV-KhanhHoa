<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BieuQuyetTudo.ascx.cs" Inherits="PhongHopKhongGiay.BieuQuyetTuDo.BieuQuyetTudo" %>
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

    .grid-bieu-quyet-tu-do {
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

    table#IDTableDanhSachBieuQuyetTuDo tbody tr, table#IDTableChiTietDanhSachBieuQuyetTuDo tbody tr {
        cursor: pointer !important;
    }

        table#IDTableDanhSachBieuQuyetTuDo tbody tr:not(.no-hover):hover {
            background-color: #ddd !important;
        }

    thead tr:hover td {
        background-color: none !important;
    }

    .bootstrap-table .fixed-table-pagination > .pagination-detail .page-list .btn-group .dropdown-menu {
        /*height: 115px !important;*/
    }

    .grid-bieu-quyet-tu-do .bootstrap-table .fixed-table-pagination > .pagination-detail {
        display: none;
    }

    #appointmentWindowBieuQuyetTuDo .bootstrap-table .fixed-table-pagination > .pagination-detail {
        display: none;
    }

    .appointmentWindowBieuQuyetTuDo .mb-10 {
        margin-bottom: 10px !important;
    }

    .appointmentWindowBieuQuyetTuDo .mt-10 {
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

    .parent-title {
        border-color: #2196F3 !important;
        color: #000 !important;
        background-color: #99e3e3 !important;
        border-left: 6px solid #2196F3 !important;
        font-size: 15px;
        height: 30px;
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
    .cell-breakWord {
        word-wrap: break-word;
        max-width: 300px;
    }
</style>

<div class="content-container-fluid main-screen">

    <%--Form search--%>
    <div class="row tai-lieu-khac">
        <div class="">
            <div class="col-md-12 mb-10">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Tiêu đề</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Nhập tên tiêu đề" id="TieuDe" type="text" />
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>

                        <label class="col-sm-4 col-xs-5 control-label" for="DaKetThuc">Đã kết thúc</label>
                        <div class="col-sm-8 col-xs-7">
                            <input type="checkbox" id="DaKetThuc" name="DaKetThuc" <%--checked="checked"--%>>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>

                <div class="clearfix visible-xs-block visible-sm-block "></div>
            </div>


            <div class="col-md-12 mb-10">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Từ ngày</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn từ ngày" id="TuNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Đến ngày</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn đến ngày" id="DenNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
                <div class="clearfix visible-xs-block visible-sm-block "></div>
            </div>


            <div class="col-md-12 mb-10" style="text-align: center;margin-top: 20px;">
                 
                <button style="width: 136px; margin-right: 20px;" type="button" id="btnThucHien" class="btn btn-primary">&nbsp Thực hiện</button>
                <button style="width: 136px;" type="button" id="btnThemMoi" class="btn btn-custom e-workcells e-alternatecells e-businesshighlightworkcells">&nbsp Thêm mới</button>
            </div>
        </div>
    </div>


    <%--Table data--%>
    <div class="row grid-bieu-quyet-tu-do">
        <div class="">
            <div class="row group-btn">
                <div class="pull-right" style="margin-right: 0;">
                    <asp:ImageButton ID="ImageButtonPDF" runat="server" OnClick="ImageButtonPDF_Click" CommandName="btnPDF" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-word.PNG" ToolTip="In dữ liệu ra file pdf" />
                    <asp:ImageButton ID="ImageButtonExcel" runat="server" OnClick="ImageButtonExcel_Click" CommandName="btnExcel" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-excel2.PNG" ToolTip="In dữ liệu ra file excel" />
                </div>
            </div>
            <div class="col-md-12">
                <div style="margin-top: 11px">
                    <table id="IDTableDanhSachBieuQuyetTuDo"
                        data-classes="table table-striped jambo_table bulk_action vertical-align"
                        data-toggle="table"
                        data-page-size="10"
                        data-search="false"
                        data-mobile-responsive="true"
                        data-pagination="true"
                        data-show-footer="false"
                        data-height="500"
                        <%--           data-use-row-attr-func="true"
                        data-reorderable-rows="true"--%>
                        data-formatter="detailFormatter"
                        data-sort-order="desc"
                        data-page-list="[5, 25, 50, 100, ALL]">

                        <thead>
                            <tr class="headings">
                                <th data-field="STT" data-sortable="false" data-align="center">STT</th>
                                <th data-field="TieuDe" data-sortable="false" data-align="left" >Tiêu đề</th>
                                <th data-field="NoiDung" data-sortable="false" class="cell-breakWord" data-width="300px" data-align="center">Nội dung</th>
                                <th data-field="SoLuongDongy" data-sortable="false" data-align="center" >Số lượng đồng ý</th>
                                <th data-field="SoLuongKhongDongY" data-sortable="false" data-align="center">Số lượng không đồng ý</th>
                                <th data-field="TinhTrang" data-formatter="formatterDaKetThuc" data-sortable="false" data-align="center">Tình trạng</th>
                                <th data-field="ThaoTacXoa" data-formatter="formatterXoa" data-sortable="false" data-align="center">Xóa</th>
                                <th data-field="ThaoTacSua" data-formatter="formatterSua" data-sortable="false" data-align="center">Sửa</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>



    <div id="customWindowBieuQuyetTuDo" style="padding: 1em; display: none;">
        <div id="#appointmentWindowBieuQuyetTuDo" class="#appointmentWindowBieuQuyetTuDo">
            <form id="customappointmentWindowBieuQuyetTuDo">
                <div id="container">
                    <div class="col-md-12 mb-20 ">
                        <div class="col-md-8">
                            <div class="form-group">
                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                <label class="col-sm-3 col-xs-4 control-label">Tiêu đề</label>
                                <div class="col-sm-9 col-xs-8">
                                    <input class="form-control" placeholder="Nhập tiêu đề" id="TieuDeCustom" type="text" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                <label class="col-sm-5 col-xs-4 control-label">Đã kết thúc</label>
                                <div class="col-sm-2 col-xs-2">
                                    <input type="checkbox" id="DaKetThucCustom" name="DaKetThucCustom" value="true">
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-xs-block visible-sm-block"></div>
                    </div>

                    <div class="col-md-12 mb-20">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                <label class="col-sm-2 col-xs-4 control-label">Nội dung</label>
                                <div class="col-sm-9 col-xs-8">
                                    <textarea class="form-control" placeholder="Nhập nội dung" id="NoiDung" rows="3" cols="50" style="width: 100%; height: 60px !important; resize: vertical"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-xs-block visible-sm-block"></div>
                    </div>





                    <%--button--%>
                    <div class="col-md-12 mb-20 ">
                        <div class="col-md-2"></div>
                        <div class="col-md-4">
                            <button type="button" id="btnThem" class="btn btn-primary" style="width: 100px; height: 30px; line-height: 0px; margin-right: 20px;">Lưu</button>
                            <button type="button" id="btnDong" class="btn btn-custom" style="width: 100px; height: 30px; line-height: 0px; background-color: #a1a1a1; color: #fff">Đóng</button>
                        </div>
                        <div class="col-md-2 displayHidden">
                            <button type="button" data-bieuquyetid="{{bieuQuyetID}}" class="btn btn-danger btn-xs" style="width: 100px; height: 30px; line-height: 0px; margin-right: 20px; background-color: #d72f2f; color: #fff" onclick="f_DeleteBieuQuyetTuDo(this)">
                                <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif"></span></i>
                            </button>
                        </div>
                    </div>
                </div>
                <br />
            </form>
        </div>
    </div>
</div>

<asp:HiddenField ID="NgayHopTuAsp" runat="server" />
<asp:HiddenField ID="NgayHopDenAsp" runat="server" />
<asp:HiddenField ID="TieuDeAsp" runat="server" />
<asp:HiddenField ID="NoiDungAsp" runat="server" />
<asp:HiddenField ID="DaKetThucAsp" runat="server" />
<asp:HiddenField ID="BieuQuyetIDAsp" runat="server" />
<script type="text/javascript">
    var bieuQuyetID = "";


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
        
        LoadDanhSachFirst(null, false, $("#TuNgay").val(), $("#DenNgay").val());

    });



    $("#btnThemMoi").click(function () {

        $(".displayHidden").css({ "display": "none" });

        this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
        this._customAppointmentWindow.ejDialog({
            width: "60%",
            showOnInit: false,
            enableModal: true,
            title: "Thêm mới biểu quyết",
            enableResize: false,
            allowKeyboardNavigation: false,
            cssClass: "e-scheduledialog",
            close: function () {
                ClearControl();
            }
        });
        this._customAppointmentWindow.find("#customappointmentWindowBieuQuyetTuDo").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");
        ClearControl();
    });



    $("#btnDong").click(function () {
        this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
        this._customAppointmentWindow.ejDialog("close");
        ClearControl();
    })
     


    $("#btnThem").click(function () {
        var notify = "Vui lòng không được để trống";
        var TieuDe = $("#TieuDeCustom").val();
        var NoiDung = $("#NoiDung").val();
        var DaKetThuc = $("#DaKetThucCustom").is(":checked")




        if (!TieuDe || !NoiDung) {
            alert_warning(notify);
            return;
        }


        if (bieuQuyetID && bieuQuyetID != "") {

            UpdateBieuQuyet(TieuDe, NoiDung, DaKetThuc, bieuQuyetID);
            return;
        }

        ThemMoiBieuQuyetTuDo(DaKetThuc);
        LoadDanhSachFirst(null, false, $("#TuNgay").val(), $("#DenNgay").val());
    });



    function ThemMoiBieuQuyetTuDo(DaKetThuc) {
        debugger
        var obj =
        {
            "TieuDe": $("#TieuDeCustom").val(),
            "NoiDung": $("#NoiDung").val(),
            "DaKetThuc": DaKetThuc

        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_ThemBieuQuyetTuDo",
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
                    ClearControl();
                    this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, $("#DaKetThuc").prop('checked'), $("#TuNgay").val(), $("#DenNgay").val());
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



    $("#btnThucHien").click(function () {
        debugger
        var TuNgay, DenNgay, TieuDe, DaKetThuc;
        TieuDe = $("#TieuDe").val();
        TuNgay = $("#TuNgay").val();
        DenNgay = $("#DenNgay").val();
        DaKetThuc = $("#DaKetThuc").prop('checked');

        var TuNgayMoment = moment(TuNgay,'DD/MM/YYYY');
        var TuNgayObject = TuNgayMoment.toDate();
        var DenNgayMoment = moment(DenNgay, 'DD/MM/YYYY');
        var DenNgayObject = DenNgayMoment.toDate();


        if (TuNgayObject > DenNgayObject) {
            alert_error("Từ ngày phải nhỏ hơn đến ngày");
        }
        else {
            LoadDanhSachFirst(TieuDe, DaKetThuc, $("#TuNgay").val(), $("#DenNgay").val());
        }
    });


    function LoadDanhSachFirst(TieuDe, DaKetThuc, TuNgay, DenNgay, NoiDung) {
        document.getElementById('<%=NgayHopTuAsp.ClientID%>').value = TuNgay;
        document.getElementById('<%=NgayHopDenAsp.ClientID%>').value = DenNgay;
        document.getElementById('<%=TieuDeAsp.ClientID%>').value = TieuDe;
        document.getElementById('<%=NoiDungAsp.ClientID%>').value = NoiDung;
        document.getElementById('<%=DaKetThucAsp.ClientID%>').value = DaKetThuc;

        var dataGetSearch =
        {
            "objLichHop": {
                "TieuDe": TieuDe,
                "DaKetThuc": DaKetThuc,
                "TuNgay": TuNgay,
                "DenNgay": DenNgay
            },
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_GetDSBieuQuyetTuDo",
            data: JSON.stringify(dataGetSearch),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                debugger
                if (reponse.d === null) {
                    alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !");
                    return;
                }
                if (reponse.d) {
                    var dataListMeetingReport = JSON.parse(reponse.d);
                    if (dataListMeetingReport) {
                        $("#IDTableDanhSachBieuQuyetTuDo").bootstrapTable('refreshOptions', { data: dataListMeetingReport });
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


    function ClearControl() {
        bieuQuyetID = "";
        $("#TieuDeCustom").val("");
        $("#NoiDung").val("");
        $('#DaKetThucCustom').prop('checked', false);
    }



    $('#IDTableDanhSachBieuQuyetTuDo').on('click-row.bs.table', function (e, arg1, arg2, value) {

            var tieuDe = "";
            var noiDung = "";
            var daKetThuc = null;
            if (arg1 != null) {
                bieuQuyetID = arg1.BieuQuyetID;
                tieuDe = arg1.TieuDe;
                noiDung = arg1.NoiDung;
                daKetThuc = arg1.TinhTrang;
            }


        if (value == "ThaoTacSua") {
            $("#TieuDeCustom").val(tieuDe);
            $("#NoiDung").val(noiDung);
            if (daKetThuc == "Đã kết thúc") {
                $("#DaKetThucCustom").prop("checked", true);
            } else {
                $("#DaKetThucCustom").prop("checked", false);
            }
            $(".displayHidden").css({ "display": "block" });
            this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
            this._customAppointmentWindow.ejDialog({
                width: "60%",
                showOnInit: false,
                enableModal: true,
                title: "Chi tiết biểu quyết",
                enableResize: false,
                allowKeyboardNavigation: false,
                cssClass: "e-scheduledialog",
                close: "clearFields"
            });

            this._customAppointmentWindow.find("#customappointmentWindowBieuQuyetTuDo").css({ display: "block" });
            this._customAppointmentWindow.ejDialog("open");
        }
        else if (value == "ThaoTacXoa") {
            f_DeleteBieuQuyetTuDo();
        }
        
    });

    
    function UpdateBieuQuyet(tieuDe, noiDung, daKetThuc, bieuQuyetID) {
        debugger
        var obj =
        {
            "TieuDe": tieuDe,
            "NoiDung": noiDung,
            "DaKetThuc": daKetThuc,
            "BieuQuyetID": bieuQuyetID,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_UpdateBieuQuyetTuDo",
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
                    ClearControl();
                    this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, $("#DaKetThuc").prop('checked'), $("#TuNgay").val(), $("#DenNgay").val());
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


    function f_DeleteBieuQuyetTuDo(e) {
        debugger 
        alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
            function () {
                let ID = $(e).attr('data-bieuquyetid') || '';
                for (var i = 0; i < bieuQuyetID.length; i++) {
                    if (bieuQuyetID == ID) {
                        bieuQuyetID.IsDelete = true;
                    }
                }
                
                DeleteLHBieuQuyet(bieuQuyetID);
                
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');
        this._customAppointmentWindow = $("#customWindowBieuQuyetTuDo");
        this._customAppointmentWindow.ejDialog("close");
        return false;

    };


    function DeleteLHBieuQuyet(bieuQuyetID) {

        var obj =
        {
            "BieuQuyetID": bieuQuyetID
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_DeleteBieuQuyetTuDo",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (dataDanhSachSchedule[0].Result == "1") {
                    alert_success("Xóa thành công");
                    ClearControl();
                    LoadDanhSachFirst(null, $("#DaKetThuc").prop('checked'), $("#TuNgay").val(), $("#DenNgay").val());
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



    /*Formaterr for table*/
    function formatterDaKetThuc(value, row, index) {
        if (value == "Chưa kết thúc")
            return [
                '<div>',
                '<span class="label label-warning" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Chưa kết thúc</span>',
                '</div>'
            ].join('');
        if (value == "Đã kết thúc") {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Đã kết thúc</span>',
                '</div>'
            ].join('');
        }
    };

    function formatterXoa() {
        return [
            '<a  title="Remove">',
            '<i class="glyphicon glyphicon-trash" style="color:red"></i>',
            '</a>'
        ].join('');
    }

    function formatterSua() {
        return [
            '<a   title="Edit" >',
            '<i class="glyphicon glyphicon-pencil"></i>',
            '</a> '
        ].join('');
    }  
</script>

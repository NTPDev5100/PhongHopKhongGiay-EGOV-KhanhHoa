<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongKeCuocHop.ascx.cs" Inherits="PhongHopKhongGiay.BaoCao.ThongKeCuocHop" %>

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

    .thong-ke-cuoc-hop {
        background-color: #fff;
        padding: 37px;
        border-radius: 5px;
    }

        .thong-ke-cuoc-hop .mb-10 {
            margin-bottom: 10px !important;
        }

        .thong-ke-cuoc-hop [class^="col-md-"] {
            padding-left: 15px !important;
            padding-right: 15px !important;
        }

        .thong-ke-cuoc-hop .form-group label {
            display: inline-block;
            max-width: 100%;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .thong-ke-cuoc-hop .btn-custom {
            margin-left: 5px;
            background-color: #a1a1a1;
            border-color: #8c8c8c;
            color: #fff;
        }

            .thong-ke-cuoc-hop .btn-custom:hover {
                color: #fff;
                background-color: #d4d4d4;
                border-color: #8c8c8c;
            }

    .btn-icon {
        outline: 0;
        border: 1px solid #ddd;
        background-color: #fff;
        padding: 5px 7px;
        border-radius: 5px;
    }

    .grid-thong-ke-cuoc-hop {
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
    thead tr:hover td {background-color: none !important;}

    .bootstrap-table .fixed-table-pagination > .pagination-detail .page-list .btn-group .dropdown-menu {
        /*height: 115px !important;*/
    }
    .grid-thong-ke-cuoc-hop .bootstrap-table .fixed-table-pagination > .pagination-detail {
         display:none;
    }
    #appointmentWindowThongKeCuocHop  .bootstrap-table .fixed-table-pagination > .pagination-detail {
        display:none;
    }
</style>



<div class="content-container-fluid main-screen">
    <div class="row thong-ke-cuoc-hop">
        <div class="">
            <div class="col-md-12 mb-10">
                <div class="col-md-4">
                    <!-- Lịch họp từ ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Lịch họp từ ngày</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn lịch họp từ ngày" id="LichHopTuNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Lịch họp đến ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-5 col-xs-5 control-label">Lịch họp đến ngày</label>
                        <div class="col-sm-7 col-xs-7">
                            <input class="form-control" placeholder="Chọn lịch họp đến ngày" id="LichHopDenNgay" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Họp nội bộ -->
                    <!-- Có đơn vị bên ngoài -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <div class="col-md-5">
                            <input style="margin-top: -1px;" type="checkbox" id="HopNoiBo" name="HopNoiBo" value="true">
                            <label for="HopNoiBo" style="padding-right: 15px;">Họp nội bộ</label>
                        </div>
                        <div class="col-md-5">
                            <input style="margin-top: -1px;" type="checkbox" id="HopCoDonViNgoai" name="HopCoDonViNgoai" value="true">
                            <label for="HopCoDonViNgoai">Có đơn vị bên ngoài</label>
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs-block"></div>
            </div>
            <div class="col-md-12 mb-10">
                <div class="col-md-4">
                    <!-- Chọn chủ trì -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-4 col-xs-5 control-label">Chọn chủ trì</label>
                        <div class="col-sm-8 col-xs-7">
                            <input class="form-control" placeholder="Chọn chủ trì" id="ChuTriHopID" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Trạng thái -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-5 col-xs-5 control-label">Trạng thái</label>
                        <div class="col-sm-7 col-xs-7">
                            <input class="form-control" placeholder="Chọn trạng thái" id="TrangThaiID" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Địa điểm họp -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-5 col-xs-5 control-label">Địa điểm họp</label>
                        <div class="col-sm-7 col-xs-7">
                            <input class="form-control" placeholder="Chọn địa điểm" id="DiaDiemHopID" type="text" />
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs-block"></div>
            </div>
            <div class="col-md-12 mb-10">
                <div class="col-md-8">
                    <!--Thành phần tham dự-->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-2 col-xs-4 control-label">Thành phần tham dự</label>
                        <div class="col-sm-10 col-xs-8" style="padding-left: 8px">
                            <input type="text" placeholder="Chọn thành phần tham dự" id="ThanhPhanThamDuID" autocomplete="off" />
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs-block"></div>
                 <div class="col-md-4">
                    <!--Thành phần tham dự-->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-5 col-xs-4 control-label">Tên cuộc họp</label>
                        <div class="col-sm-7 col-xs-8" >
                            <input type="text" class="form-control" id="TenCuocHop" autocomplete="off" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 mb-10">
                <div class="col-md-3"></div>
                <button style="width: 136px; margin-right: 20px;" type="button" id="btnThucHien" class="btn btn-primary">&nbsp Thực hiện</button>
                <button style="width: 136px;" type="button" id="btnLamMoi" class="btn btn-custom">&nbsp Làm mới</button>
            </div>
        </div>
    </div>
    <div class="row grid-thong-ke-cuoc-hop">
        <div class="">
            <div class="row group-btn">
                <div class="pull-right" style="margin-right: 0;">
                    <asp:ImageButton ID="ImageButtonPDF" runat="server" OnClick="ImageButtonPDF_Click" CommandName="btnPDF" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-PDF.PNG" ToolTip="In dữ liệu ra file pdf" />
                    <asp:ImageButton ID="ImageButtonExcel" runat="server" OnClick="ImageButtonExcel_Click" CommandName="btnExcel" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-excel2.PNG" ToolTip="In dữ liệu ra file excel" />
                </div>
            </div>
            <div class="col-md-12">
                <div style="margin-top: 11px">
                    <table id="IDTableDanhSachThongKeCuocHop"
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
                                <th data-field="" data-checkbox="true"></th>
                                <th data-field="STT" data-sortable="false" data-align="center">STT</th>
                                <th data-field="TenCuocHop" data-sortable="false" data-align="left">Tên cuộc họp</th>
                                <th data-field="LichHop" data-sortable="false" data-align="center">Lịch họp</th>
                                <th data-field="DiaDiemHop" data-sortable="false" data-align="center">Địa điểm họp</th>
                                <th data-field="ChuTri" data-sortable="false" data-align="center">Chủ trì</th>
                                <th data-field="HopNoiBo"  data-sortable="false" data-align="center">Họp nội bộ/ có đơn vị bên ngoài</th>
                                <th data-field="ThanhPhan" data-sortable="false" data-align="center">Thành phần</th>
                                <th data-field="TinhTrang" data-formatter="formatterTinhTrang" data-sortable="false" data-align="center">Tình trạng</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="customWindowThongKeCuocHop" style="padding: 1em; display: none;">
        <div id="appointmentWindowThongKeCuocHop" class="appointmentWindow">
            <form id="customAppointmentWindowThongKeCuocHop">
                <div id="container">
                    <div class="row group-btn">
                        <div class="pull-right" style="margin-right: 0;">
                            <asp:ImageButton ID="ImagePopupbtnXuatPDF" runat="server" OnClick="ImagePopupbtnXuatPDF_Click" OnClientClick="myCustombtnXuatPDF();return false;" CommandName="btnPDFPopup" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-word.PNG" ToolTip="In dữ liệu ra file pdf" />
                            <asp:ImageButton ID="ImagePopupbtnXuatExcel" runat="server" OnClick="ImagePopupbtnXuatExcel_Click" OnClientClick="myCustombtnXuatExcel();return false;" CommandName="btnExcelPopup" ImageUrl="~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Content/Images/icon-excel2.PNG" ToolTip="In dữ liệu ra file excel" />
                            <%--<button type="button" id="btnXuatEx" class="btn-icon"><i class="btn-success fa fa-file-excel-o fa-lg" aria-hidden="true"></i></button>--%>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div style="margin-top: 11px">
                            <table id="IDTableChiTietDanhSachThongKeCuocHop" class="table table-striped table-hover"
                                data-classes="table table-striped jambo_table bulk_action vertical-align"
                                data-toggle="table"
                                data-page-size="10"
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
                                        <th data-field="STT" data-sortable="false" data-align="center">STT</th>
                                        <th data-field="HoTen" data-sortable="false" data-align="left">Họ tên</th>
                                        <th data-field="TenPhongBan" data-sortable="false" data-align="center">Phòng ban</th>
                                        <th data-field="CheckIn" data-sortable="false" data-align="center">Check in</th>
                                        <th data-field="CheckOut" data-sortable="false" data-align="center">Check out</th>
                                        <th data-field="DiTre" data-formatter="formatterTrangThaiDiemDanh"  data-sortable="false" data-align="center" >Đi trễ</th>
                                        <th data-field="Vang" data-formatter="formatterTrangThaiDiemDanh" data-sortable="false" data-align="center">Vắng</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <input type="hidden" id="ChuongTrinhHopID" value="0">
                </div>
                <br />
            </form>
            <div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                        <button type="button" id="btnTroVeChuongTrinhThongKeCuocHop" class="btn btn-info"><i class="fa fa-arrow-circle-left "></i>&nbsp Trở về</button>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </div>
</div>
<asp:Button ID="HiddenbtnXuatPopupExcel" OnClick="HiddenbtnXuatPopupExcel_Click" runat="server" Text="hidden export excel"
        style="display:none"/>
<asp:Button ID="HiddenbtnXuatPopupPDF" OnClick="HiddenbtnXuatPopupPDF_Click" runat="server" Text="hidden export pdf"
        style="display:none"/>

<asp:HiddenField ID="NgayHopTuAsp" runat="server" />
<asp:HiddenField ID="NgayHopDenAsp" runat="server" />
<asp:HiddenField ID="HopNoiBoCheckAsp" runat="server" />
<asp:HiddenField ID="CoDonViBenNgoaiAsp" runat="server" />
<asp:HiddenField ID="ChuTriIDAsp" runat="server" />
<asp:HiddenField ID="TinhTrangIDAsp" runat="server" />
<asp:HiddenField ID="DiaDiemIDAsp" runat="server" />
<asp:HiddenField ID="ThanhPhanIDAsp" runat="server" />
<asp:HiddenField ID="TenCuocHopAsp" runat="server" />

<asp:HiddenField ID="LichHopIDAsp" runat="server" />
<asp:HiddenField ID="TestValue" runat="server" />


<script type="text/javascript">
    $(function () {
        var comboTrangThaiID,
            comboThanhPhanThamDuID,
            comboDiaDiemHopID,//PhongHop
            comboChuTriHopID,
            SelectParentDistince,
            DataThanhPhanChuanBi,
            SelectParentChuTri,
            SelectParentTinhTrang,
            SelectParentPhongHop,
            SelectParentThamDu,
            TinhTrangColor,
            CheckNoiBo,
            CheckDonViBenNgoai

        $("#LichHopTuNgay").ejDatePicker({
            locale: "vi-VN",
            value: new Date(),
            dateFormat: "dd/MM/yyyy",
            width: "100%",
        });

        $("#LichHopDenNgay").ejDatePicker({
            locale: "vi-VN",
            value: new Date(),
            dateFormat: "dd/MM/yyyy",
            width: "100%",
        });
        LoadData();
        LoadDanhSachFirst($("#LichHopTuNgay").val(), $("#LichHopDenNgay").val(), false, false, null, null, null, null,null);
    });

    function myCustombtnXuatExcel() {
        debugger
        // first, close the dialog
        document.getElementById('<%= HiddenbtnXuatPopupExcel.ClientID %>').click();
    }
    function myCustombtnXuatPDF() {
        debugger
        // first, close the dialog
        document.getElementById('<%= HiddenbtnXuatPopupPDF.ClientID %>').click();
      }

    function ClearControl() {
        var today = new Date();
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        var yyyy = today.getFullYear();
        today = dd + '/' + mm + '/' + yyyy;

        $("#LichHopTuNgay").val(today);
        $("#LichHopDenNgay").val(today);
        $('#HopNoiBo').prop('checked', false);
        $('#HopCoDonViNgoai').prop('checked', false);
        comboChuTriHopID.clearSelection();
        comboTrangThaiID.clearSelection();
        comboDiaDiemHopID.clearSelection();
        comboThanhPhanThamDuID.clearSelection();
         $("#TenCuocHop").val("");
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
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; } if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);

                DataThanhPhanChuanBi = JSON.parse(data.ListThanhPhanChuanBi);
                var DataPhongHop = JSON.parse(data.ListPhongHop);
                var DataChuTri = JSON.parse(data.ListChuTri);
                var DataTinhTrang = JSON.parse(data.ListTinhTrang);

                if (DataChuTri.length > 0) {
                    SelectParentChuTri = DataChuTri.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataPhongHop.length > 0) {
                    SelectParentPhongHop = DataPhongHop.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }
                if (DataTinhTrang.length > 0) {
                    SelectParentTinhTrang = DataTinhTrang.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
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

                //Bỏ đi phòng ban
                if (DataThanhPhanChuanBi.length > 0) {
                    SelectParentThamDu = DataThanhPhanChuanBi.map(Parent => ({ id: Parent.UserID, title: Parent.FullName, subs: [] }));
                }

                comboChuTriHopID = $('#ChuTriHopID').comboTree({
                    source: SelectParentChuTri,
                    isMultiple: true,
                    cascadeSelect: false
                });
                comboTrangThaiID = $('#TrangThaiID').comboTree({
                    source: SelectParentTinhTrang,
                    isMultiple: true,
                    cascadeSelect: false
                });
                comboDiaDiemHopID = $('#DiaDiemHopID').comboTree({
                    source: SelectParentPhongHop,
                    isMultiple: true,
                    cascadeSelect: false
                });
                comboThanhPhanThamDuID = $('#ThanhPhanThamDuID').comboTree({
                    source: SelectParentThamDu,
                    isMultiple: true,
                    cascadeSelect: false
                });
            }
        });
    }
    $("#btnLamMoi").click(function () {
        ClearControl();
    });
    $("#btnThucHien").click(function () {
        debugger
        var LichHopTu = $("#LichHopTuNgay").val();
        var LichHopDen = $("#LichHopDenNgay").val();
        var HopNoiBoChecked = $('#HopNoiBo').prop('checked');
        var HopDonViBenNgoaiChecked = $('#HopCoDonViNgoai').prop('checked');
        var ChuTriIDsJoin = comboChuTriHopID != null && comboChuTriHopID.getSelectedIds() != null ? comboChuTriHopID.getSelectedIds().join() : null;
        var TinhTrangIDsJoin = comboTrangThaiID != null && comboTrangThaiID.getSelectedIds() != null ? comboTrangThaiID.getSelectedIds().join() : null;
        var DiaDiemHopIDsJoin = comboDiaDiemHopID != null && comboDiaDiemHopID.getSelectedIds() != null ? comboDiaDiemHopID.getSelectedIds().join() : null;
        var ThanhPhanThamDuIDsJoin = comboThanhPhanThamDuID != null && comboThanhPhanThamDuID.getSelectedIds() != null ? comboThanhPhanThamDuID.getSelectedIds().join() : null;
        var tenCuocHop = $("#TenCuocHop").val();

        LoadDanhSachFirst(LichHopTu, LichHopDen, HopNoiBoChecked, HopDonViBenNgoaiChecked, ChuTriIDsJoin, TinhTrangIDsJoin, DiaDiemHopIDsJoin, ThanhPhanThamDuIDsJoin,tenCuocHop);       
    });

    function LoadDanhSachFirst(LichHopTu, LichHopDen, HopNoiBoChecked, HopDonViBenNgoaiChecked, ChuTriIDsJoin, TinhTrangIDsJoin, DiaDiemHopIDsJoin, ThanhPhanThamDuIDsJoin,tenCuocHop) {
        document.getElementById('<%=NgayHopTuAsp.ClientID%>').value = LichHopTu;
        document.getElementById('<%=NgayHopDenAsp.ClientID%>').value = LichHopDen;
        document.getElementById('<%=HopNoiBoCheckAsp.ClientID%>').value = HopNoiBoChecked;
        document.getElementById('<%=CoDonViBenNgoaiAsp.ClientID%>').value = HopDonViBenNgoaiChecked;
        document.getElementById('<%=ChuTriIDAsp.ClientID%>').value = ChuTriIDsJoin;
        document.getElementById('<%=TinhTrangIDAsp.ClientID%>').value = TinhTrangIDsJoin;
        document.getElementById('<%=DiaDiemIDAsp.ClientID%>').value = DiaDiemHopIDsJoin;
        document.getElementById('<%=ThanhPhanIDAsp.ClientID%>').value = ThanhPhanThamDuIDsJoin;
        document.getElementById('<%=TenCuocHopAsp.ClientID%>').value = tenCuocHop;

        var dataGetSearch =
        {
            "objLichHop": {
                "LichHopTu": LichHopTu,
                "LichHopDen": LichHopDen,
                "IsHopNoiBo": HopNoiBoChecked,
                "IsHopDonViBenNgoai": HopDonViBenNgoaiChecked,
                "ChuTriIDs": ChuTriIDsJoin,
                "TinhTrangIDs": TinhTrangIDsJoin,
                "DiaDiemHopIDs": DiaDiemHopIDsJoin,
                "ThanhPhanThamDuIDs": ThanhPhanThamDuIDsJoin,
                "TenCuocHop": tenCuocHop
            },
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_GetDSThongKeCuocHop",
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
                        $("#IDTableDanhSachThongKeCuocHop").bootstrapTable('refreshOptions', { data: dataListMeetingReport });
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
    $("#btnTroVeChuongTrinhThongKeCuocHop").click(function () {
        this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
        this._customAppointmentWindow.ejDialog("close");
    })

    $('#IDTableDanhSachThongKeCuocHop').on('click-row.bs.table', function (e, arg1, arg2) {
        var lichHopID = null;
        if (arg1 != null) {
            lichHopID = arg1.LichHopID;
        }
        document.getElementById('<%=LichHopIDAsp.ClientID%>').value = lichHopID;
        var dataGetSearch =
        {
            "objLichHop": {
                "LichHopID": lichHopID,
            },
        };

        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID",
            data: JSON.stringify(dataGetSearch),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; } if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                if (reponse.d) {
                    var dataDanhSachChiTiet = JSON.parse(reponse.d);
                    if (dataDanhSachChiTiet) {
                        $("#IDTableChiTietDanhSachThongKeCuocHop").bootstrapTable('refreshOptions', { data: dataDanhSachChiTiet });
                        this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
                        this._customAppointmentWindow.ejDialog({
                            width: "80%",
                            showOnInit: false,
                            enableModal: true,
                            title: "Chi tiết danh sách thống kê cuộc họp",
                            enableResize: false,
                            allowKeyboardNavigation: false,
                            cssClass: "e-scheduledialog",
                            close: "clearFields"
                        });
                        this._customAppointmentWindow.find("#customAppointmentWindowThongKeCuocHop").css({ display: "block" });
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
    })
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
    function formatterTrangThaiDiemDanh(value, row, index) {
        if (value == "Có")
            return [
                '<div>',
                '<span class="label label-danger" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Có</span>',
                '</div>'
            ].join('');
        if (value == "Không") {
            return [
                '<div>',
                '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px";>Không</span>',
                '</div>'
            ].join('');
        }
    };
</script>


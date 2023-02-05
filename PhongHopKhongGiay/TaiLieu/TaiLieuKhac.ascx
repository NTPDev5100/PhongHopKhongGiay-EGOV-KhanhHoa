<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaiLieuKhac.ascx.cs" Inherits="PhongHopKhongGiay.TaiLieu.TaiLieuKhac" %>

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
            background-color: #f19f4a;
            border-color: #f19f4a;
            color: #fff;
        }

     .thong-ke-cuoc-hop .btn-custom:hover {
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

    .mt-20{
        margin-top:20px;
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

    .ajs-ok{
        color: #fff;
        background-color: #2c87d7;
        border-color: #2c87d7;
    }

    .ajs-cancel{
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
      <div class="row thong-ke-cuoc-hop">
        <div class="">
            <div class="col-md-12 mb-10">
                <div class="col-md-6">
                    <!-- Lịch họp từ ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-3 col-xs-5 control-label">Tên thư mục</label>
                        <div class="col-sm-9 col-xs-7">
                            <input class="form-control"  id="TenThuMuc" type="text" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <!-- Lịch họp đến ngày -->
                    <div class="form-group">
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                        <label class="col-sm-3 col-xs-5 control-label">Tên tài liệu</label>
                        <div class="col-sm-9 col-xs-7">
                            <input class="form-control" id="TenTaiLieu" type="text" />
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs-block"></div>
            </div>
         
            <div class="col-md-12 mb-10" style=" text-align: center;margin-top: 20px;">
             
                <button style="width: 136px; margin-right: 20px;" type="button" id="btnThucHien" class="btn btn-primary">&nbsp Tìm kiếm</button>
                <button style="width: 136px;" type="button" id="btnThemMoi" class="btn btn-custom">&nbsp Thêm mới</button>
            </div>

          
        </div>
    </div>
    <div class="row grid-thong-ke-cuoc-hop">
               <div style="margin-bottom:20px">Dánh sách tài liệu</div>
              <div  class="">
                 <div>
                        <ul name="ul-group" id="TaiLieuHop_CoQuanChuTriTreeView">
                        </ul>
                 </div>

                 <script id="dataCoQuanChuTri-Template" type="x-tmpl-mustache">   
                                    <li class="mg-b-5p" style=" margin-bottom: 5px;">
                                        <div class="parent-title" data-id="{{Index}}" data-name="{{TaiLieu_CoQuanChuTri}}" onclick="quanLyController.f_Close(this)">
                                            <i class="glyphicon glyphicon-plus"></i>
                                            <span class="bold">{{TaiLieu_CoQuanChuTri}} </span>
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
                                    <div class="chill-title" data-id-parent-tencoquanchutri="{{TaiLieu_CoQuanChuTri}}"  data-id-parent-coquanchutri="{{ParentID}}" data-id-chill="{{Index}}" data-name-chill="{{TaiLieu_NoiDung}}" onclick="quanLyController.f_CloseChill(this)">
                                            <i class="glyphicon glyphicon-plus"></i>
                                            <span class="bold">{{TaiLieu_NoiDung}}</span>
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
                                    class="Edit_FileCuocHop btn btn-info btn-xs" onclick="f_UpdTaiLieuCuocHop(this)">
                                        <i class=" fa fa-pencil"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>
                                    <button type="button" data-fileid={{FileID}} class=" btn btn-default btn-xs" onclick="quanLyController.f_DonwLoadFile(this)">
                                        <i class=" fa fa-download"><span style="font-family: Helvetica,Arial,sans-serif" ;=""></span></i>
                                    </button>
                                    <button type="button" data-fileid={{FileID}} class="btn btn-danger btn-xs" onclick="f_DeleteFile_TaiLieu(this)">
                                        <i class=" fa fa-trash-o"><span style="font-family: Helvetica,Arial,sans-serif";></span></i>
                                    </button>
                                </li>            
                            </script>
            </div>
    </div>
   
         <div id="customWindowThongKeCuocHop" style="padding: 1em; display: none;">
        <div id="appointmentWindowThongKeCuocHop" class="appointmentWindow">
            <form id="customAppointmentWindowThongKeCuocHop">
                <div id="container">
                    <div class="col-md-12 mb-10">
                        <div class="col-md-6">
                           <div class="form-group">
                               <div class="line line-dashed b-b line-lg pull-in"></div>
                               <label class="col-sm-4 col-xs-5 control-label">Thư mục</label>
                               <div class="col-sm-8 col-xs-7">
                                 <%--  <input class="form-control"  id="ThuMuc" type="text" />--%>


                                   <input list="ThuMuc" name="ThuMuc"  value="" class="col-sm-6 form-control custom-select custom-select-sm">
                                    <input type="hidden" id="TaiLieuID" value="0">
                                    <input type="hidden" id="TenFile" value="">
                                    <input type="hidden" id="FileID" value="">
                                   <datalist id="ThuMuc">
                                    </datalist>
                               </div>
                           </div>
                        </div>
                        <div class="col-md-6 displayHidden">
                           <div class="form-group">
                               <div class="line line-dashed b-b line-lg pull-in"></div>
                               <label class="col-sm-4 col-xs-5 control-label">Đối tượng xem</label>
                               <div class="col-sm-8 col-xs-7">
                                   <input class="form-control"  id="DoiTuongID" type="text" />
                               </div>
                           </div>
                        </div>
                    </div>
                     <div class="col-md-12 mb-10 mt-20">
                         <div class="col-md-12">
                           <div class="form-group">
                               <div class="line line-dashed b-b line-lg pull-in"></div>
                               <label class="col-sm-3 col-xs-5 control-label" style="width: 160px;">Nội dung</label>
                               <div class="col-sm-9 col-xs-7" style="width: 829px;">
                                    <textarea class="form-control" id="NoiDung" rows="8"></textarea>
                               </div>
                           </div>
                        </div>

                     </div>

                    <div class="col-md-12 mb-10 mt-20 displayHidden">
                        <div class="col-md-6">
                           <div class="form-group">
                               <div class="line line-dashed b-b line-lg pull-in"></div>
                               <label class="col-sm-4 col-xs-5 control-label">Thư mục</label>
                               <div class="col-sm-8 col-xs-7">
                                <input type="file"  id="fileSelect"  multiple onchange="checkfile(this)"  accept="xlsx, xls, doc, docx, pdf, pptx" />
                                <label id="file-name"></label>
                                <span style="color: red">xlsx, xls, doc, docx, pdf, pptx</span>
                               </div>
                           </div>
                        </div>
                    </div>
                     <div class="col-md-12 mb-10 mt-20" style="margin-bottom:20px">
                          <div class="col-md-6">
                              <div class="col-md-4">
                               
                             </div>
                               <div class="col-sm-8 col-xs-7">
                                    <button type="button" id="btnThem" class="btn btn-primary" style=" width: 100px;height: 30px;line-height: 0px;margin-right: 20px;"> Lưu</button>
                                    <button type="button" id="btnDong" class="btn btn-custom"style=" width: 100px;height: 30px;line-height: 0px;background-color: #a1a1a1; color:#fff"> Đóng</button>
                               </div>
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
<script src="<%=ResolveUrl("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Scripts/controllers/quanLyController.js") %>" type="text/javascript"></script>
<script  type="text/javascript">

    var comboDoiTuongXemID,SelectParentDoiTUong,SelectThuMuc,idThuMuc;
    var DataDanhSachTaiLieu = [];
    var DataDanhSachTaiLieuInsert = [];
    var Data_TaiLieuID = "";
    $("#btnThemMoi").click(function () {
        
         $(".displayHidden").css({"display":"block"});

        this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
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
        this._customAppointmentWindow.find("#customAppointmentWindowThongKeCuocHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

        ClearControl();
    });

     $("#btnDong").click(function () {
        this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
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
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; } if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var data = JSON.parse(obj);
                var DoiTuong = JSON.parse(data.ListDoiTuong);

                var ThuMuc = JSON.parse(data.ListThuMuc);

                if (DoiTuong.length > 0) {
                    SelectParentDoiTUong = DoiTuong.map(Parent => ({ id: Parent.Ma, title: Parent.Ten, subs: [] }));
                }

                if (ThuMuc.Table.length > 0) {
                    SelectThuMuc = ThuMuc.Table.map(p => ({ id: p.Ma, title: p.Ten }));

                    $.each(SelectThuMuc, function(i, item) {
                    $("#ThuMuc").append($("<option>").attr('data-value', item.id).text(item.title));
                    });
                }

               
                comboDoiTuongXemID = $('#DoiTuongID').comboTree({
                    source: SelectParentDoiTUong,
                    isMultiple: true,
                    cascadeSelect: true,
                });

             
            }
        });
    }

    $("input[name=ThuMuc]").focusout(function(){
     idThuMuc = $([].slice.call($(this)[0].list.children).filter((e) => {     
     
     return e.value === $(this).val();
     })).attr('data-value');
    });




    $("#btnThem").click(function () {
        
        
        var fileID = "";
        var notify = "Vui lòng không được để trống";
        var thuMuc = $("input[name=ThuMuc]").val();
        var TaiLieuID = $("#TaiLieuID").val();
        var NoiDung = $("#NoiDung").val();
        var FileID = $("#FileID").val();


        var comboDoiTuongXemIDValue = comboDoiTuongXemID.getSelectedIds();

        if (!thuMuc || !NoiDung || !comboDoiTuongXemIDValue) {
            alert_warning(notify);
            return;
        }
        if (Data_TaiLieuID && Data_TaiLieuID != "") {

            updateTaiLieu(thuMuc, NoiDung, Data_TaiLieuID);
            Data_TaiLieuID = "";
            return;
        }

        
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

        if (comboDoiTuongXemIDValue != null && comboDoiTuongXemIDValue != "") {
            comboDoiTuongXemIDValue = comboDoiTuongXemIDValue.join(",");
        }

        if (files.length > 0 && FileID =="") {
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
                                    "TaiLieuID": TaiLieuID,
                                    "ThuMuc": thuMuc,
                                    "TenFile": obj[i].TenFile,
                                    "FileID": obj[i].FileID,
                                    "NoiDung": NoiDung,
                                    "DoiTuongID": comboDoiTuongXemIDValue,
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
                                "ThuMuc": thuMuc,
                                "TenFile": obj.TenFile,
                                "FileID": obj.FileID,
                                "NoiDung": NoiDung,
                                "DoiTuongID": comboDoiTuongXemIDValue,
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
        }
        //ThemMoiThuMuc(comboDoiTuongXemIDValue, filename, fileID);
        //LoadDanhSachFirst(null, null);
        var obj =
        {
            "DataDanhSachTaiLieuInsert": DataDanhSachTaiLieuInsert
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/Them_LHThuMuc",
            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (reponse) {
                debugger
                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
                var obj = reponse.d;
                var dataDanhSachSchedule = JSON.parse(obj);
                if (dataDanhSachSchedule[0].Result == "1") {
                    alert_success("Thêm thành công");
                    ClearControl();
                    this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, null);
                }
                else {
                    alert_error("Lỗi trong quá trình xử lý");
                }



            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
            },
        });

    });

    
    //function ThemMoiThuMuc(comboDoiTuongXemIDValue,filename,fileID) {
    //    debugger
    //    var obj =
    //    {
    //        "ThuMuc": $("input[name='ThuMuc']").val(),
    //        "DoiTuongID": comboDoiTuongXemIDValue,
    //        "NoiDung":$("#NoiDung").val(),
    //        "TenFile": filename,
    //        "FileID":fileID
    //    };
    //    $.ajax({
    //        type: "POST",
    //        url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/Them_LHThuMuc",
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
    //                LoadDanhSachFirst(null, null);
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
        var TenThuMuc = $("#TenThuMuc").val();
        var TenTaiLieu = $("#TenTaiLieu").val();

        LoadDanhSachFirst(TenThuMuc,TenTaiLieu);       
    });


    function LoadDanhSachFirst(TenThuMuc, TenTaiLieu) {
     
        var dataGetSearch =
        {
            "objLichHop": {
                "ThuMuc": TenThuMuc,
                "TenFile": TenTaiLieu,
            },
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/LH_GetDSTaiLieuKhac",
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
                                "TaiLieuCuocHopID": item.TaiLieuID,
                                "TenTaiLieu": item.NoiDung,
                                "DuocCongKhai": true,
                                "TenFile": item.TenFile,
                                "FileID": item.FileID,
                                "VanBanLienQuan": null,
                                "TaiLieu_CoQuanChuTri": item.ThuMuc,
                                "IsDelete": false
                            };

                              DataDanhSachTaiLieu.push(itemdata);
                          
                           
                        });

                        for (let i = 0; i < DataDanhSachTaiLieu.filter(x => x.IsDelete == false).length; i++) {
                            DataDanhSachTaiLieu.filter(x => x.IsDelete == false)[i].STT = i + 1;
                        }
                        quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(null, DataDanhSachTaiLieu.filter(x => x.IsDelete == false));
                        quanLyController.common_ReloadTreeViewOpen();
                       
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
        $("input[name='ThuMuc']").val(that.attr('data-TaiLieu_CoQuanChuTri'));
        $("#NoiDung").val(that.attr('data-TenTaiLieu'));
        Data_TaiLieuID = that.attr('data-TaiLieuCuocHopID');
        $(".displayHidden").css({"display":"none"});

        this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
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
        this._customAppointmentWindow.find("#customAppointmentWindowThongKeCuocHop").css({ display: "block" });
        this._customAppointmentWindow.ejDialog("open");

    }

    function updateTaiLieu(thuMuc,noiDung,taiLieuID) {

        var obj =
        {
            "ThuMuc": thuMuc,
            "NoiDung":noiDung,
            "TaiLieuID": taiLieuID,
        };
        $.ajax({
            type: "POST",
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/Update_LHThuMuc",
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
                    this._customAppointmentWindow = $("#customWindowThongKeCuocHop");
                    this._customAppointmentWindow.ejDialog("close");
                    LoadDanhSachFirst(null, null);
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
            url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/BackEnd.aspx/Delete_LHThuMuc",
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
                    LoadDanhSachFirst(null, null);
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
        $("input[name='ThuMuc']").val("");
        $("#NoiDung").val("");
        taiLieuID = "";
        $("#TaiLieuID").val("0");
        $("#TenFile").val("");
        $("#FileID").val("");
        DataDanhSachTaiLieuInsert = [];
        comboDoiTuongXemID.clearSelection();
        $("#fileSelect").val("");
    }

    LoadData();
    LoadDanhSachFirst(null, null);
</script>
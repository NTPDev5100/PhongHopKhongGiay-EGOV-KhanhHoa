//Khai bao gia tri khoi tao 
var ListGiaTriHienTreeView = [];

var quanLyController = {
    init: function () {
        quanLyController.registerEvent();
    },
    registerEvent: function () {
        //let LichHopID = $('#LichHopID').val() || 0;
        //quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri();
    },

    //Load data
    f_loadDataTaiLieuHop_CoQuanChuTri: function (LichHopID, ListFileTaiLieu) {
        let listCoQuanChuTri = quanLyController.common_groupBy(ListFileTaiLieu, 'TaiLieu_CoQuanChuTri'); //TaiLieu_CoQuanChuTri la cot can group
        let stt = 0;
        let html = '';
        let template = $('#dataCoQuanChuTri-Template').html();
        $.each(listCoQuanChuTri, function (i, item) {
            //console.log(item);
            html += Mustache.render(template, {
                Index: stt,
                TaiLieu_CoQuanChuTri: i //i la ten co quan chu tri

            });
            stt++;
        });
        $('#TaiLieuHop_CoQuanChuTriTreeView').html(html);

        stt = 0;
        $.each(listCoQuanChuTri, function (i, item) {

            quanLyController.f_loadDataTaiLieuHop_NoiDung(LichHopID, i, stt, ListFileTaiLieu);
            stt++;
        });

        //let DataObject =
        //{
        //    "obj": {
        //        "LichHopID": LichHopID,
        //        "TuKhoa": "",
        //    },
        //};
        //$.ajax({
        //    type: "POST",
        //    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_TAILIEUCUOCHOP_COQUANCHUTRI_GetByLichHopID",
        //    data: JSON.stringify(DataObject),
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    type: "POST",
        //    async: false,
        //    success: function (reponse) {
        //        if (reponse) {
        //            if (reponse.d) {
        //                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
        //                let obj = JSON.parse(reponse.d)
        //                if (obj != '') {
        //                    DataDanhSachTaiLieuListInit = obj;
        //                    let listCoQuanChuTri = quanLyController.common_groupBy(DataDanhSachTaiLieuListInit, 'TaiLieu_CoQuanChuTri'); //TaiLieu_CoQuanChuTri la cot can group
        //                    let stt = 0
        //                    let html = '';
        //                    let template = $('#dataCoQuanChuTri-Template').html();
        //                    $.each(listCoQuanChuTri, function (i, item) {
        //                        console.log(item);
        //                        html += Mustache.render(template, {
        //                            Index: stt,
        //                            TaiLieu_CoQuanChuTri: i //i la ten co quan chu tri
        //                        });
        //                        stt++;
        //                    });
        //                    $('#TaiLieuHop_CoQuanChuTriTreeView').html(html);

        //                }
        //            }
        //        }

        //    },
        //    error: function (XMLHttpRequest, textStatus, errorThrown) {
        //        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
        //        return;
        //    },
        //});
    },
    f_loadDataTaiLieuHop_NoiDung: function (LichHopID, TenCoQuanChuTri, Index,ListFileTaiLieu) {
        let CoQuanChuTri_Filler = ListFileTaiLieu.filter(x => x.TaiLieu_CoQuanChuTri == TenCoQuanChuTri);
        let listNoiDung = quanLyController.common_groupBy(CoQuanChuTri_Filler, 'TenTaiLieu'); //TaiLieu_CoQuanChuTri la cot can group
        let stt = 0;
        let html = '';
        let template = $('#dataCoQuanChuTri-listNoiDung-Template').html();
        $.each(listNoiDung, function (i, item) {
            html += Mustache.render(template, {
                Index: stt,
                ParentID: Index,
                TaiLieu_CoQuanChuTri: item[0].TaiLieu_CoQuanChuTri, //Lay thang cha nen no trung nhau nen lay vi tri dau tien
                TaiLieu_NoiDung: i
            });
            stt++;

        });
        $('#TaiLieuHop_CoQuanChuTri_ListFile_' + Index).html(html);

        stt = 0;
        $.each(listNoiDung, function (i, item) {

            quanLyController.f_loadDataTaiLieuHop_ListFileNoiDung(LichHopID, item[0].TaiLieu_CoQuanChuTri, i, stt, Index, ListFileTaiLieu);
            stt++;
        });
        //let DataObject =
        //{
        //    "obj": {
        //        "LichHopID": LichHopID,
        //        "TuKhoa": TenCoQuanChuTri,
        //    },
        //};
        //$.ajax({
        //    type: "POST",
        //    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_TAILIEUCUOCHOP_NOIDUNG_GetByLichHopID",
        //    data: JSON.stringify(DataObject),
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    type: "POST",
        //    async: false,
        //    success: function (reponse) {
        //        if (reponse) {
        //            if (reponse.d) {
        //                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
        //                let obj = JSON.parse(reponse.d)
        //                if (obj != '') {
        //                    let CoQuanChuTri_Filler = DataDanhSachTaiLieuListInit.filter(x => x.TaiLieu_CoQuanChuTri == TenCoQuanChuTri);
        //                    let listNoiDung = quanLyController.common_groupBy(CoQuanChuTri_Filler, 'TaiLieu_NoiDung'); //TaiLieu_CoQuanChuTri la cot can group
        //                    let stt = 0
        //                    let html = '';
        //                    let template = $('#dataCoQuanChuTri-listNoiDung-Template').html();
        //                    $.each(listNoiDung, function (i, item) {
        //                        html += Mustache.render(template, {
        //                            Index: stt,
        //                            ParentID: Index,
        //                            TaiLieu_CoQuanChuTri: item[0].TaiLieu_CoQuanChuTri, //Lay thang cha nen no trung nhau nen lay vi tri dau tien
        //                            TaiLieu_NoiDung: i
        //                        });
        //                        stt++;
        //                    });
        //                    $('#TaiLieuHop_CoQuanChuTri_ListFile_' + Index).html(html);

        //                }
        //            }
        //        }

        //    },
        //    error: function (XMLHttpRequest, textStatus, errorThrown) {
        //        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
        //        return;
        //    },
        //});
    },
    f_loadDataTaiLieuHop_ListFileNoiDung: function (LichHopID, TenCoQuanChuTri, NoiDung, Index, ParentID_CoQuanChuTri, ListFileTaiLieu) {
        let CoQuanChuTri_Filler = ListFileTaiLieu.filter(x => x.TaiLieu_CoQuanChuTri == TenCoQuanChuTri);
        let listNoiDung_Filler = CoQuanChuTri_Filler.filter(x => x.TenTaiLieu == NoiDung); //TaiLieu_CoQuanChuTri la cot can group
        let stt = 0
        let html = '';
        let template = $('#dataCoQuanChuTri-listFile-Template').html();
        $.each(listNoiDung_Filler, function (i, item) {
            html += Mustache.render(template, {
                Index: i,
                TaiLieuCuocHopID: item.TaiLieuCuocHopID,
                LichHopID: item.LichHopID,
                TenFile: item.TenFile,
                FileID: item.FileID,
                IsCongKhai: item.DuocCongKhai == 1 ? '<span class="label label-success" style="font-family: Helvetica,Arial,sans-serif;font-size:12px" ;="">Công khai</span>' : '<span class="label label-warning" style="font-family: Helvetica,Arial,sans-serif;font-size:12px" ;="">Không công khai</span>',
                IsDelele: item.IsDelele,
                TenTaiLieu: item.TenTaiLieu,
                TaiLieu_CoQuanChuTri: item.TaiLieu_CoQuanChuTri,
                VanBanLienQuan: item.VanBanLienQuan || "",
                DuocCongKhai: item.DuocCongKhai ? true : false
            })
        });
        $('#TaiLieuHop_ListNoidung_' + ParentID_CoQuanChuTri + '_' + Index).html(html);
        //let DataObject =
        //{
        //    "obj": {
        //        "LichHopID": LichHopID,
        //        "TuKhoa": NoiDung,
        //    },
        //};
        //$.ajax({
        //    type: "POST",
        //    url: "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Backend.aspx/LH_TAILIEUCUOCHOP_FILETAILIEU_GetByLichHopID",
        //    data: JSON.stringify(DataObject),
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    type: "POST",
        //    async: false,
        //    success: function (reponse) {
        //        if (reponse) {
        //            if (reponse.d) {
        //                if (reponse.d === null) { alert_warning("Bạn đã hết thời gian đăng nhập, Vui lòng thoát ra đăng nhập lại hệ thống !"); return; }
        //                let obj = JSON.parse(reponse.d)
        //                if (obj != '') {
        //                    let CoQuanChuTri_Filler = DataDanhSachTaiLieuListInit.filter(x => x.TaiLieu_CoQuanChuTri == TenCoQuanChuTri);
        //                    let listNoiDung_Filler = CoQuanChuTri_Filler.filter(x => x.TaiLieu_NoiDung == NoiDung); //TaiLieu_CoQuanChuTri la cot can group
        //                    let stt = 0
        //                    let html = '';
        //                    let template = $('#dataCoQuanChuTri-listFile-Template').html();
        //                    $.each(listNoiDung_Filler, function (i, item) {
        //                        html += Mustache.render(template, {
        //                            Index: i,
        //                            TaiLieuCuocHopID: item.TaiLieuCuocHopID,
        //                            LichHopID: item.LichHopID,
        //                            TenFile: item.TenFile,
        //                            FileID: item.FileID
        //                        })
        //                    });
        //                    $('#TaiLieuHop_ListNoidung_' + ParentID_CoQuanChuTri + '_' + Index).html(html);

        //                }
        //            }
        //        }

        //    },
        //    error: function (XMLHttpRequest, textStatus, errorThrown) {
        //        alert_error("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
        //        return;
        //    },
        //});
    },

    //OpenClose Treeview
    f_Close: function (e) {
        let LichHopID = $('#LichHopID').val() || 0;
        let _id = $(e).attr('data-id');
        let _name = $(e).attr('data-name');
        let _titleI = $(e).find('i');
        if (_titleI.hasClass('glyphicon-minus')) {
            _titleI.removeClass('glyphicon-minus').addClass('glyphicon-plus');
            $('#ul-file-' + _id).slideUp();
        }
        else if (_titleI.hasClass('glyphicon-plus')) {
            //quanLyController.f_loadDataTaiLieuHop_NoiDung(LichHopID, _name, _id);//Load danh sach file dinh kem theo Co quan chu tri
            _titleI.removeClass('glyphicon-plus').addClass('glyphicon-minus');
            $('#ul-file-' + _id).slideDown();
        }
        quanLyController.common_layDanhSachTreeViewOpen();
        //return false;
    },
    f_CloseChill: function (e) {
        let LichHopID = $('#LichHopID').val() || 0;
        let _idParent = $(e).attr('data-id-parent-coquanchutri');
        let _tenParent = $(e).attr('data-id-parent-tencoquanchutri');
        let _id = $(e).attr('data-id-chill');
        let _name = $(e).attr('data-name-chill');
        let _titleI = $(e).find('i');
        if (_titleI.hasClass('glyphicon-minus')) {
            _titleI.removeClass('glyphicon-minus').addClass('glyphicon-plus');
            $('#ul-file-chill-' + _idParent + '-' + _id).slideUp();
        }
        else if (_titleI.hasClass('glyphicon-plus')) {
            //quanLyController.f_loadDataTaiLieuHop_ListFileNoiDung(LichHopID, _tenParent, _name, _id, _idParent);//Load danh sach file dinh kem theo Co quan chu tri
            _titleI.removeClass('glyphicon-plus').addClass('glyphicon-minus');
            $('#ul-file-chill-' + _idParent + '-' + _id).slideDown();
        }
        quanLyController.common_layDanhSachTreeViewOpen();
        //return false;
    },

    //File - Download,Delete
    f_DonwLoadFile: function (e) {
        let fileID = $(e).attr('data-fileid') || '';
        window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + fileID;
        return false;
    },
    f_DeleteFile: function (e) {
        alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
                function () {
                    let fileID = $(e).attr('data-fileid') || '';
                    for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                        if (DataDanhSachTaiLieu[i].FileID == fileID) {
                            DataDanhSachTaiLieu[i].IsDelete = true;
                        }
                    }
                    var GetDataAfterUpdateIsDelete = DataDanhSachTaiLieu.filter(x => x.IsDelete == false)
                    quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID,GetDataAfterUpdateIsDelete);
                    quanLyController.common_ReloadTreeViewOpen();

                    //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: GetDataAfterUpdateIsDelete });
                },
                function () {
                    //cancel
                }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        return false;
    },
    //Delete Cơ quan chủ trì
    f_DeleteCoQuanChuTri: function (e) {
        alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
            function () {
                let tenCoQuanChuTri = $(e).attr('data-TenCoQuanChuTri') || '';
                for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                    if (DataDanhSachTaiLieu[i].TaiLieu_CoQuanChuTri == tenCoQuanChuTri) {
                        DataDanhSachTaiLieu[i].IsDelete = true;
                    }
                }
                var GetDataAfterUpdateIsDelete = DataDanhSachTaiLieu.filter(x => x.IsDelete == false)
                quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, GetDataAfterUpdateIsDelete);
                quanLyController.common_ReloadTreeViewOpen();

                //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: GetDataAfterUpdateIsDelete });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        return false;
    },
    //Delete Tài Liệu nội dung
    f_DeleteTaiLieuNoiDung: function (e) {
        alertify.confirm("<h4>Bạn có muốn xóa dữ liệu không ? </h4>",
            function () {
                let tenNoiDungTaiLieu = $(e).attr('data-TenNoiDungTaiLieu') || '';
                for (var i = 0; i < DataDanhSachTaiLieu.length; i++) {
                    if (DataDanhSachTaiLieu[i].TenTaiLieu == tenNoiDungTaiLieu) {
                        DataDanhSachTaiLieu[i].IsDelete = true;
                    }
                }
                var GetDataAfterUpdateIsDelete = DataDanhSachTaiLieu.filter(x => x.IsDelete == false)
                quanLyController.f_loadDataTaiLieuHop_CoQuanChuTri(LichHopID, GetDataAfterUpdateIsDelete);
                quanLyController.common_ReloadTreeViewOpen();

                //$("#IDTableDanhSachTaiLieu").bootstrapTable('refreshOptions', { data: GetDataAfterUpdateIsDelete });
            },
            function () {
                //cancel
            }).set('labels', { ok: 'Đồng ý', cancel: 'Trở về' }).setHeader('Thông tin xác nhận');

        return false;
    },

    //Ins,Upd
    f_UpdTaiLieuCuocHop: function (e) {
        let that = $(e);
        $("#TaiLieuCuocHopID").val(that.attr('data-TaiLieuCuocHopID'));
        $("#TenTaiLieu").val(that.attr('data-TenTaiLieu'));
        $("#TaiLieu_CoQuanChuTri").val(that.attr('data-TaiLieu_CoQuanChuTri'));
        $("#fileSelect").val("");
        $("#TenFile").val(that.attr('data-TenFile'));
        $("#FileID").val(that.attr('data-FileID'));
        $('#TagVanBanLienQuan').tagsinput('removeAll');
        $('#TagVanBanLienQuan').tagsinput('add', that.attr('data-VanBanLienQuan'));
        if (that.attr('data-DuocCongKhai') == 'true') {
            $("#DuocCongKhai").prop('checked', true);
        }
        else {
            $("#DuocCongKhai").prop('checked', false);
        }
    },


    //Common
    common_groupBy: function (xs, key) {
        return xs.reduce(function (rv, x) {
            (rv[x[key]] = rv[x[key]] || []).push(x);
            return rv;
        }, {});
    },
    common_layDanhSachTreeViewOpen: function () {
        ListGiaTriHienTreeView = [];
        let listNode = document.querySelectorAll('.ul-tree-type');
        $.each(listNode, function (i, item) {
            if (item.style.display == '' || item.style.display == 'block') {
                let nodeValue = item.getAttribute('data-ulfileshow');
                ListGiaTriHienTreeView.push(nodeValue);
            }
        });
    },
    common_ReloadTreeViewOpen: function () {
        let listNode = document.querySelectorAll('.ul-tree-type');
        $.each(listNode, function (i, item) {
            let test = ListGiaTriHienTreeView.includes(item.dataset.ulfileshow); // output: true
            if (test) {
                item.style.display = 'block';
            }
            else {
                item.style.display = 'none';
            }
            //let _titleI = item.find('i');
            //if (_titleI.hasClass('glyphicon-minus')) {
            //    _titleI.removeClass('glyphicon-minus').addClass('glyphicon-plus');
            //    $('#ul-file-' + _id).slideUp();
            //}
            //else if (_titleI.hasClass('glyphicon-plus')) {
            //    //quanLyController.f_loadDataTaiLieuHop_NoiDung(LichHopID, _name, _id);//Load danh sach file dinh kem theo Co quan chu tri
            //    _titleI.removeClass('glyphicon-plus').addClass('glyphicon-minus');
            //    $('#ul-file-' + _id).slideDown();
            //}
        });
    },
}

quanLyController.init();
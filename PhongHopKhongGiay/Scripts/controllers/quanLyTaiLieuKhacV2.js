//Gia trị khởi tạo cho tree view
var ListGiaTriHienTreeView = [];

var quanLyTaiLieuKhacV2 = {
    init: function () {
        quanLyTaiLieuKhacV2.registerEvent();
    },
    registerEvent: function () {


    },



    f_LoadDataTaiLieuKhac: function (TaiLieuID, ListFileTaiLieu) {

        let listTaiLieuKhac = quanLyTaiLieuKhacV2.common_groupBy(ListFileTaiLieu, 'TenTaiLieu');
        let stt = 0;
        let html = '';
        let template = $('#dataTaiLieuKhac-Template').html();
        $.each(listTaiLieuKhac, function (i, item) {
            //console.log(item);
            html += Mustache.render(template, {
                Index: stt,
                TenTaiLieu: i //i la ten tai lieu khac

            });
            stt++;
        });
        $('#TaiLieuKhac_TreeView').html(html);

        stt = 0;
        $.each(listTaiLieuKhac, function (i, item) {

            quanLyTaiLieuKhacV2.f_loadDataTaiLieuKhac_ListFile(TaiLieuID,i, stt, ListFileTaiLieu);
            stt++;
        });

    },



    f_loadDataTaiLieuKhac_ListFile: function (TaiLieuID, TenTaiLieuKhac, Index, ListFileTaiLieu) {

        let ListFile_Filler = ListFileTaiLieu.filter(x => x.TenTaiLieu == TenTaiLieuKhac);
       // let listNoiDung = quanLyTaiLieuKhacV2.common_groupBy(ListFile_Filler, 'Ten_File'); //TaiLieu_CoQuanChuTri la cot can group
        let stt = 0;
        let html = '';
        let template = $('#dataTaiLieuKhac-listFile-Template').html();
        $.each(ListFile_Filler, function (i, item) {
            html += Mustache.render(template, {
                Index: i,
                TaiLieuID: item.TaiLieuID,
                TenFile: item.TenFile,
                FileID: item.FileID,
                IsDelele: item.IsDelele,
                TenTaiLieu: item.TenTaiLieu
            })
        });
        $('#TaiLieuKhac_ListFile_'+ Index).html(html);
    },

    //Download File
    f_DonwLoadFile: function (e) {
        let fileID = $(e).attr('data-fileid') || '';
        window.location = "/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/DownloadFile.aspx?TenFile=" + fileID;
        return false;
    },

    //OpenClose Treeview
    f_CloseChill: function (e) {
        let TaiLieuID = $('#TaiLieuID').val() || 0;
        let _id = $(e).attr('data-id');
        let _ten = $(e).attr('data-name');
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
        quanLyTaiLieuKhacV2.common_layDanhSachTreeViewOpen();
        //return false;
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

quanLyTaiLieuKhacV2.init();
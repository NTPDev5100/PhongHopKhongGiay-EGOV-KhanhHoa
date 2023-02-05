using System;
using System.Collections.Generic;
using System.Data;
using PhongHopKhongGiay.SRV.Data;
using PhongHopKhongGiay.SRV.Entities;
using PhongHopKhongGiay.SRV.Services.Contracts;

namespace PhongHopKhongGiay.SRV.Services
{
    public class PhongHopKhongGiayService : IPhongHopKhongGiayService
    {
        public List<DANHMUC> Load_DanhMuc(string Table)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_DanhMuc(Table);
        }

        public DataSet Load_USER_GetAllUsers(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_USER_GetAllUsers(objJson);
        }
        public List<THANHPHANCHUANBI> Load_ThanhPhanChuanBi(string Table)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_DanhMucThanhPhanChuanBi(Table);
        }

        public DataSet LH_Load_DanhSachTaiLieuCuocHopByLichHopID(long? LichHopID, string DoiTuongXemID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_DanhSachTaiLieuCuocHopByLichHopID(LichHopID, DoiTuongXemID);
        }

        public DataSet Load_DanhSachTaiLieuByTempID(string IDTemp)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_DanhSachTaiLieuByTempID(IDTemp);
        }
        public DataSet CN_TAILIEU_UpdateLichHopIDByIDTemp(long? LichHopID, string IDTemp)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.CN_TAILIEU_UpdateLichHopIDByIDTemp(LichHopID, IDTemp);
        }

        public DataSet CN_TAILIEU_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.CN_TAILIEU_InsUpDel(objJson);
        }
        public DataSet LH_TAILIEUCUOCHOP_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUCUOCHOP_InsUpDel(objJson);
        }

        public DataSet LH_LichHop_InsUpDel(string objJson, string DoiTuongNhacLichHopID, string JsonThanhPhan, string JsonChuanBi)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LichHop_InsUpDel(objJson, DoiTuongNhacLichHopID,  JsonThanhPhan,  JsonChuanBi);
        }

        public DataSet LH_ChuyenDuyet(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_ChuyenDuyet(objJson);
        }
        public DataSet CN_Load_DanhSachTaiLieuByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.CN_Load_DanhSachTaiLieuByLichHopID(objJson);
        }
        
        public DataSet LH_Load_Schedule_CaNhan(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_Schedule_CaNhan(objJson);
        }

        public DataSet LH_Load_Schedule(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_Schedule(objJson);
        }

        public DataSet LH_Load_DanhSach_Schedule(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_DanhSach_Schedule(objJson);
        }
        
        public DataSet LH_LoadLichHopByLichHopID(string LichHopID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadLichHopByLichHopID(LichHopID);
        }

        public DataSet LH_ChuongTrinhHop_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_ChuongTrinhHop_InsUpDel(objJson);
        }

        public DataSet LH_BieuQuyet_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_BieuQuyet_InsUpDel(objJson);
        }
        public DataSet DM_DANHMUC_InsUpDel(string objJson, string TenStore)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.DM_DANHMUC_InsUpDel(objJson, TenStore);
        }
        
        public DataSet LH_LoadBieuQuyetByLichHopID(string LichHopID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadBieuQuyetByLichHopID(LichHopID);
        }

        public DataSet LH_UpdateTinhTrangByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTinhTrangByLichHopID(objJson);
        }

        public DataSet LH_UpdateTinhTrangByChuoiLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTinhTrangByChuoiLichHopID(objJson);
        }
        public DataSet LH_UpdateTinhTrangBatDauHoacKetThucLichHop(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTinhTrangBatDauHoacKetThucLichHop(objJson);
        }
        public DataSet LH_UpdateTinhTrangPhatHanhByTaiLieuKetLuanID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTinhTrangPhatHanhByTaiLieuKetLuanID(objJson);
        }



        public DataSet LH_UpdateTimeDragAndDropSchedule(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTimeDragAndDropSchedule(objJson);
        }


        public DataSet LH_UpdateShowShowKiosk(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateShowShowKiosk(objJson);
        }

        public DataSet LH_LoadDataTable(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadDataTable(objJson);
        }

        public DataSet LH_CheckTrungLichHopByUserID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_CheckTrungLichHopByUserID(objJson);
        }

        public DataSet LH_GetPhongBanSuDung(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetPhongBanSuDung(objJson);
        }
        public DataSet LH_GetNguoiChuTriDangDieuHanhCuocHop(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetNguoiChuTriDangDieuHanhCuocHop(objJson);
        }

        public DataSet LH_LoadChuongTrinhHopByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadChuongTrinhHopByLichHopID(objJson);
        }

        public DataSet LH_LoadThaoLuanByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadThaoLuanByLichHopID(objJson);
        }

        public DataSet LH_THAOLUAN_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_THAOLUAN_InsUpDel(objJson);
        }

        public DataSet LH_GIAYMOIHOP_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GIAYMOIHOP_InsUpDel(objJson);
        }

        public DataSet LH_LoadGiayMoiHopByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadGiayMoiHopByLichHopID(objJson);
        }
        public DataSet LH_GetEmailThanhPhanThamDuTheoThoiGian(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetEmailThanhPhanThamDuTheoThoiGian(objJson);
        }

        public DataSet LH_PhatHanh_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_PhatHanh_InsUpDel(objJson);
        }

        public DataSet LH_LoadPhatHanhByThoiGian(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadPhatHanhByThoiGian(objJson);
        }
        public DataSet LH_LoadNoiDungInAnTheoThoiGian(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadNoiDungInAnTheoThoiGian(objJson);
        }

        
        public DataSet LH_GetLichHopIDTheoThoiGian(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetLichHopIDTheoThoiGian(objJson);
        }

        public DataSet LH_PhatHanhLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_PhatHanhLichHopID(objJson);
        }
        public DataSet LH_LoadPhatHanhLichSuTheoThoiGian(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadPhatHanhLichSuTheoThoiGian(objJson);
        }

        public DataSet LH_PhatHanhTrucTiep(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_PhatHanhTrucTiep(objJson);
        }
        public DataSet Mobile_LH_LICHHOP_BAOVANG_Upd(int LichHopID, int UserID, int LyDoID, string NoiDungLyDo)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_LICHHOP_BAOVANG_Upd( LichHopID,  UserID,  LyDoID, NoiDungLyDo);
        }

        public DataSet Mobile_LH_LICHHOP_XUNGDOT_Upd(int LichHopID, int UserID, int LyDoID, string NoiDungLyDo)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_LICHHOP_XUNGDOT_Upd(LichHopID,  UserID,  LyDoID, NoiDungLyDo);
        }

        public DataSet Mobile_LH_LICHHOP_CHAPNHAN_Upd(int LichHopID, int UserID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_LICHHOP_CHAPNHAN_Upd(LichHopID, UserID);
        }
        public DataSet Mobile_LH_LICHHOP_TUCHOIHOP_Upd(int LichHopID, int UserID, int LyDoID, string NoiDungLyDo)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_LICHHOP_TUCHOIHOP_Upd(LichHopID, UserID, LyDoID, NoiDungLyDo);
        }


        public DataSet Mobile_LH_BIEUQUYET_KETQUA_Ins(int UserID, int BieuQuyetID, bool DongY)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_BIEUQUYET_KETQUA_Ins(UserID, BieuQuyetID, DongY);
        }


        public DataSet LH_BIEUQUYET_GetByLichHopID(int LichHopID, int PageSize, int PageIndex, int UserID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_BIEUQUYET_GetByLichHopID(LichHopID, PageSize, PageIndex, UserID);
        }

        public DataSet CN_Load_DanhSachTaiLieuByUserID(int UserID, long LichHopID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.CN_Load_DanhSachTaiLieuByUserID(UserID, LichHopID);
        }
        public DataSet Mobile_CN_TAILIEU_Ins(int UserID, int TaiLieuCuocHopID, long LichHopID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_CN_TAILIEU_Ins( UserID,  TaiLieuCuocHopID,  LichHopID);
        }

        public DataSet Mobile_CN_TAILIEU_CHIASE_Ins(int NguoiChiaSeID, int NguoiNhanChiaSeID, long TaiLieuChiaSeID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_CN_TAILIEU_CHIASE_Ins(NguoiChiaSeID, NguoiNhanChiaSeID, TaiLieuChiaSeID);
        }

        public DataSet LH_UpdateTinhTrangCuocHop(int BieuQuyetID, bool TinhTrang, bool DaKetThuc, long UserID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTinhTrangCuocHop( BieuQuyetID, TinhTrang, DaKetThuc, UserID);
        }

        public DataSet LH_LoadDangKyPhatBieuTheoLichHopID(int LichHopID, long UserID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadDangKyPhatBieuTheoLichHopID(LichHopID, UserID);
        }
        public DataSet LH_DANGKYPHATBIEU_InsUpDel(string obj)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DANGKYPHATBIEU_InsUpDel(obj);
        }

        public DataSet LH_UpdateDoUuTienDangKyPhatBieu(string ChuoiDangKyPhatBieuID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateDoUuTienDangKyPhatBieu(ChuoiDangKyPhatBieuID);
        }

        public DataSet LH_UPDATE_THOIGIAN_DANGKYPHATBIEU(string obj)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UPDATE_THOIGIAN_DANGKYPHATBIEU(obj);
        }

        public DataSet LH_LoadBienBanHopByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadBienBanHopByLichHopID(objJson);
        }

        public DataSet LH_BIENBANHOP_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_BIENBANHOP_InsUpDel(objJson);
        }

        public DataSet LH_GiaoViec_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GiaoViec_InsUpDel(objJson);
        }

        public DataSet LH_GiaoViec_UpdateChiTietGiaoViec(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GiaoViec_UpdateChiTietGiaoViec(objJson);
        }

        public DataSet LH_LoadGiaoViecTheoLichHopID (string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadGiaoViecTheoLichHopID(objJson);
        }

        public DataSet LH_NOIDUNG_IN_AN_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_NOIDUNG_IN_AN_InsUpDel(objJson);
        }

        public DataSet LH_TRIGGER_SIGNALR(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TRIGGER_SIGNALR(objJson);
        }
        public DataSet LH_InLichHopTheoTuan(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_InLichHopTheoTuan(objJson);
        }
        public DataSet LH_LoadChiTietBieuQuyetKetQuaTheoBieuQuyetID(int BieuQuyetID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadChiTietBieuQuyetKetQuaTheoBieuQuyetID(BieuQuyetID);
        }

        public DataSet LH_InKetLuanTheoLichHopID(int LichHopID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_InKetLuanTheoLichHopID(LichHopID);
        }

        public DataSet Mobile_LH_LICHHOP_DUYETBAOVANG_Upd(int LichHopID, int UserID, bool DuyetBaoVang, string LyDoKhongDuyet)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Mobile_LH_LICHHOP_DUYETBAOVANG_Upd(LichHopID, UserID, DuyetBaoVang, LyDoKhongDuyet);
        }
        public DataSet LH_TAILIEUKETLUAN_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUKETLUAN_InsUpDel(objJson);
        }

        public DataSet LH_CheckRoleByUserID(int UserID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_CheckRoleByUserID(UserID);
        }

        public DataSet LH_TAILIEUCUOCHOP_COQUANCHUTRI_GetByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUCUOCHOP_COQUANCHUTRI_GetByLichHopID(objJson);
        }

        public DataSet LH_TAILIEUCUOCHOP_NOIDUNG_GetByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUCUOCHOP_NOIDUNG_GetByLichHopID(objJson);
        }

        public DataSet LH_TAILIEUCUOCHOP_FILETAILIEU_GetByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUCUOCHOP_FILETAILIEU_GetByLichHopID(objJson);
        }

        public DataSet LH_LoadYeuCauHoTroByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadYeuCauHoTroByLichHopID(objJson);
        }
        public DataSet LH_YeuCauHoTro_XuLyYeuCau_Upd(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_YeuCauHoTro_XuLyYeuCau_Upd(objJson);
        }
        public DataSet LH_YeuCauHoTro_Del(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_YeuCauHoTro_Del(objJson);
        }
        public DataSet LH_LoadLayYKienPhongHopByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_LoadLayYKienPhongHopByLichHopID(objJson);
        }


        public DataSet LH_DanhSachNguoiNhanThongBao_ByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DanhSachNguoiNhanThongBao_ByLichHopID(objJson);
        }

        public DataSet LH_GetDSThongKeCuocHop(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetDSThongKeCuocHop(objJson);
        }

        

        public DataSet LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID(objJson);
        }


        public DataSet LH_DanhSachNguoiNhanThongBaoPhatHanh_ByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DanhSachNguoiNhanThongBaoPhatHanh_ByLichHopID(objJson);
        }
        public DataSet LH_DanhSachNguoiNhanThongBaoSuaLichHop_ByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DanhSachNguoiNhanThongBaoSuaLichHop_ByLichHopID(objJson);
        }
        public DataSet LH_DanhSachNguoiNhanThongBaoPhatBieu_ByLichHopID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DanhSachNguoiNhanThongBaoPhatBieu_ByLichHopID(objJson);
        }

        public DataSet Them_LHThuMuc(string objJson, int userID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Them_LHThuMuc(objJson, userID);
        }

        public DataSet Update_LHThuMuc(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Update_LHThuMuc(objJson);
        }

        public DataSet Delete_LHThuMuc(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Delete_LHThuMuc(objJson);
        }

        
        public DataSet Load_ListThuMuc(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_ListThuMuc(objJson);
        }

        public DataSet LH_GetDSTaiLieuKhac(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetDSTaiLieuKhac(objJson);
        }
        public DataSet LH_GetDSTaiLieuKhacV2(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetDSTaiLieuKhacV2(objJson);
        }

        public DataSet Load_ListTenTaiLieu(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.Load_ListTenTaiLieu(objJson);
        }

        public DataSet LH_TAILIEUKHACV2_InsUpDel(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_TAILIEUKHACV2_InsUpDel(objJson);
        }
        
        public DataSet LH_ThemTaiLieuKhac(string objJson, int userID)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_ThemTaiLieuKhac(objJson,userID);
        }

        
        public DataSet LH_UpdateFileTaiLieuKhac(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateFileTaiLieuKhac(objJson);
        }
        public DataSet LH_UpdateTaiLieuKhac(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateTaiLieuKhac(objJson);
        }

        public DataSet LH_DeleteTaiLieuKhac(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DeleteTaiLieuKhac(objJson);
        }



        

        public DataSet LH_GetDSBieuQuyetTuDo(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_GetDSBieuQuyetTuDo(objJson);
        }

        public DataSet LH_Load_DanhSachChiTietBieuQuyetTuDo_ByBieuQuyetID(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_Load_DanhSachChiTietBieuQuyetTuDo_ByBieuQuyetID(objJson);
        }
        

        public DataSet LH_ThemBieuQuyetTuDo(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_ThemBieuQuyetTuDo(objJson);
        }
        
        public DataSet LH_UpdateBieuQuyetTuDo(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_UpdateBieuQuyetTuDo(objJson);
        }

        
        public DataSet LH_DeleteBieuQuyetTuDo(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_DeleteBieuQuyetTuDo(objJson);
        }
        

        public DataSet LH_CheckThoiGianChuongTrinhHop(string objJson)
        {
            PHONGHOPKHONGGIAYDAC Dac = new PHONGHOPKHONGGIAYDAC(new UnitOfWork(false));
            return Dac.LH_CheckThoiGianChuongTrinhHop(objJson);
        }
    }
}
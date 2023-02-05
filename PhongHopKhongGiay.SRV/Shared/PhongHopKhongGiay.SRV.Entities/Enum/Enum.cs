using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Entities
{
    public static class Enum
    {
        public static string[] FileTableString = new string[] { "CC_FileCaiTao|CaiTaoID", "CC_FileChungCu|ChungCuID"
                                                            , "CC_FileDiDoi|DiDoiID", "CC_FileTaiDinhCu|TaiDinhCuID" };
        public enum E_FileTable
        {
            CC_FileCaiTao = 0,
            CC_FileChungCu = 1,
            CC_FileDiDoi = 2,
            CC_FileTaiDinhCu = 3,
            NOC_FileNhaOCu = 4,
            NOC_FilePheDuyetGiaBan = 5,
            NOC_FileHopDongMuaBan = 6,
            NOC_FileDeNghiCapGiayCNSH = 7,
            NOXH_FileNhaOXaHoi = 8,
            NOXH_FileCanCuPhapLy = 9,
            NOXH_FilePheDuyetThueMuaNOXHSHNN = 10,
            NOXH_FileYKienThueMuaNOXHSHTN = 11,
            QLDauTu_File = 12,
            QLDauTu_TepDinhkemVanBan = 14
        }
    }
}

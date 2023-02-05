namespace PhongHopKhongGiay.Models
{
    public class NhacLich_NguoiNhac
    {
        public string TieuDeFirebase { get; set; }
        public string TenCuocHop { get; set; }
        public string NgayHop { get; set; }
        public string LichHopID { get; set; }
        public long UserID { get; set; }
        public string UserName { get; set; }
        public string OSKey { get; set; } // Key cua thiet bi dang ky voi firebase
        public int TypeDevice { get; set; } // 1: android, 2: IOS
        public string NoiDung { get; set; }
        public string HeaderFireBase { get; set; }
        public string UrlFireBase { get; set; }
        public string TitleNotify { get; set; }
    }
}
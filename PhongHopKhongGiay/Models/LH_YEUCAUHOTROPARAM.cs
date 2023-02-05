namespace PhongHopKhongGiay.Models
{
    public class LH_YEUCAUHOTROMAP
    {
        public string YeuCauHoTroJson { get; set; }
        public string LoaiYeuCauHoTroTroJson { get; set; }
        public string TinhTrangYeuCauHoTroTroJson { get; set; }
    }
    public class LH_YEUCAUHOTROPARAM: PagesParamModel
    {
        public string LichHopID { get; set; }
        public int UserID { get; set; }
    }
    public class LH_YEUCAUHOTRO_XULUYEUCAUHOTROADD
    {
        public int YeuCauHoTroID { get; set; }
        public int MaTinhTrangYeuCauID { get; set; }
        public int UserID { get; set; }
        public string NoiDungXuLyYeuCau { get; set; }

    }
}
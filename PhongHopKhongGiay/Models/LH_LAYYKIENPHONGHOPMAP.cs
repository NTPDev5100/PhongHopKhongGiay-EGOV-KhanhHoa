namespace PhongHopKhongGiay.Models
{
    public class LH_LAYYKIENPHONGHOPMAP
    {
        public string TenDonVi { get; set; }
        public string HoTen { get; set; }
        public string NoiDungYKienPhongHop { get; set; }
        public string ThoiGian { get; set; }
    }
    public class LH_LAYYKIENPHONGHOPPARAM: PagesParamModel
    {
        public string LichHopID { get; set; }
        public int UserID { get; set; }
    }
}
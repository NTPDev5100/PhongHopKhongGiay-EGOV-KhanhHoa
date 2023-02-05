using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

namespace PhongHopKhongGiay.SRV.Entities
{
    [DataContract]
    public partial class DMInAn
    {
        [DataMember]
        public int DanhMucInAnID { get; set; }
        [DataMember]
        public string Ten { get; set; }
        [DataMember]
        public string TenVietTat { get; set; }
        [DataMember]
        public string LoaiInAn { get; set; }
        [DataMember]
        public string MaChucNang { get; set; }
        [DataMember]
        public string MaLinhVuc { get; set; }
        [DataMember]
        public bool Used { get; set; }
        [DataMember]
        public DateTime CreatedDate { get; set; }
        [DataMember]
        public int? CreatedUserID { get; set; }
        [DataMember]
        public DateTime LastUpdDate { get; set; }
        [DataMember]
        public int? LastUpdUserID { get; set; }
        [DataMember]
        public int DonViID { get; set; }
    }
}

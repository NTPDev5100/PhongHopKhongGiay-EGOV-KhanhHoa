using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Xml.Serialization;

namespace PhongHopKhongGiay.SRV.Entities
{
    public partial class THANHPHANCHUANBI:DANHMUC
    {
        /// <summary>
        /// Gets or sets a long value for the CapBienHieuID column.
        /// </summary>
        /// 
        [DataMember]
        public int UserID { get; set; }

        [DataMember]
        public string FullName { get; set; }

        [DataMember]
        public string TenGoiTrongCoQuan { get; set; }

        [DataMember]
        public string TenVietTat { get; set; }

        [DataMember]
        public string TenVietTatDonVi { get; set; }

    }
 
}
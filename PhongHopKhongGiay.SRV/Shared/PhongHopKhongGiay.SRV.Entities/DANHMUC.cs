using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Xml.Serialization;

namespace PhongHopKhongGiay.SRV.Entities
{
    public partial class DANHMUC
    {
        /// <summary>
        /// Gets or sets a long value for the CapBienHieuID column.
        /// </summary>
        [DataMember]
        public string Ma { get; set; }

        [DataMember]
        public string Ten { get; set; }
    }
 
}
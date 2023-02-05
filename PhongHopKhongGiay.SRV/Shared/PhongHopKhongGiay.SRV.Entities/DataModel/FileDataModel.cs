using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Entities.DataModel
{
    [Serializable]
    [DataContract]
    public class FileDataModel
    {
        [DataMember]
        public string TenFileGoc { get; set; }
        [DataMember]
        public string TenFileEncode { get; set; }
        [DataMember]
        public string UrlFile { get; set; }
       
    }
}

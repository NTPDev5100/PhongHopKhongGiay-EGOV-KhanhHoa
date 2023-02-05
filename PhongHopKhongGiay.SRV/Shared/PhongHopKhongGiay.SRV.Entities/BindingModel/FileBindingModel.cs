using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Entities.BindingModel
{
    [DataContract]
    public class FileBindingModel
    {
        [DataMember]
        public string StrFileTable { get; set; }
        [DataMember]
        public string StrFile { get; set; }
    }
}

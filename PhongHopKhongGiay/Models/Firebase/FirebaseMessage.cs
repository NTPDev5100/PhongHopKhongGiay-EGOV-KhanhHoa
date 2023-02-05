namespace PhongHopKhongGiay.Models.Firebase
{
    public class InfoRequestFireBase : EntityBase
    {
        public string message;
        public string key;
        public string userid;
    }
    public class InfoFireBase : EntityBase
    {
        public long? UserID { get; set; }
        public string UserName { get; set; }
        public string OSKey { get; set; } // Key cua thiet bi dang ky voi firebase
        public int? TypeDevice { get; set; } // 1: android, 2: IOS

    }
    public class InfoOskeyFireBase
    {
        public string OSKey { get; set; } // Key cua thiet bi dang ky voi firebase

    }
    public class InfoSendFireBase : EntityBase
    {
        public string UserName { get; set; }
        public string OSKey { get; set; } // Key cua thiet bi dang ky voi firebase
    }
    public class FireBase
    {
        public string[] registration_ids { get; set; }
        public Notification notification { get; set; }
        public DataSend data { get; set; }
    }
    public class Notification
    {
        public string title { get; set; }
        public string body { get; set; }
        public string sound { get; set; }
        public string click_action { get; set; }
        public string icon { get; set; }
    }
    public class DataSend
    {
        public string title { get; set; }
        public string body { get; set; }
        public int notify_type { get; set; }
        public string id { get; set; }
    }
}
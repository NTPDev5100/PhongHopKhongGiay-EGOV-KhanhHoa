using log4net;
using Newtonsoft.Json;
using PhongHopKhongGiay.Models;
using PhongHopKhongGiay.Models.Firebase;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;

namespace PhongHopKhongGiay
{
    public class FirebaseMessage
    {
        protected static readonly ILog log = LogManager.GetLogger(typeof(FirebaseMessage));
        public long Mobile_SendInfoFireBase_ByUserIDAndType(int notify_type, List<NhacLich_NguoiNhac> lstNguoiNhac)
        {
            try
            {
                Mobile_SendInfoDeviceFireBase_ByUserIDAndType(notify_type, lstNguoiNhac);
                return 1;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return -1;
            }

        }
        public long Mobile_SendInfoDeviceFireBase_ByUserIDAndType(int notify_type, List<NhacLich_NguoiNhac> List)
        {
            try
            {
                string[] arr4 = new string[List.Count];
                int i = 0;
                foreach (var item in List)
                {
                    if (!string.IsNullOrEmpty(item.OSKey))
                    {
                        arr4[i] = item.OSKey;
                        i = i + 1;
                    }
                }
                FireBase data = new FireBase();
                //data.registration_ids = new string[1];
                data.registration_ids = arr4;

                Notification notification = new Notification();
                notification.title = List.FirstOrDefault().TieuDeFirebase;
                notification.body = List.FirstOrDefault().NoiDung;
                notification.sound = "default";
                notification.click_action = "FCM_PLUGIN_ACTIVITY";
                notification.icon = "fcm_push_icon";
                data.notification = notification;

                DataSend dataSend = new DataSend();
                dataSend.title = List.FirstOrDefault().TieuDeFirebase;
                dataSend.body = List.FirstOrDefault().NoiDung;
                dataSend.notify_type = notify_type;
                dataSend.id = List.FirstOrDefault().LichHopID;
                data.data = dataSend;

                bool result = Mobile_SendFireBase(data, List.FirstOrDefault().UrlFireBase, List.FirstOrDefault().HeaderFireBase);
                if (!result)

                    return -1;
                return 1;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return -1;
            }
        }
        public bool Mobile_SendFireBase(FireBase data, string UrlFireBase, string HeaderFireBase)
        {
            try
            {
                var settings = new JsonSerializerSettings { DateFormatHandling = DateFormatHandling.MicrosoftDateFormat };
                var json = JsonConvert.SerializeObject(data, settings);
                var client = new RestClient(UrlFireBase);
                var request = new RestRequest(Method.POST);
                request.Parameters.Clear();
                request.AddHeader("Content-Type", "application/json");
                request.AddHeader("Authorization", HeaderFireBase);

                request.AddParameter("application/json", json, ParameterType.RequestBody);
                var response = client.Execute(request);

                string DataRes = JsonConvert.SerializeObject(response);
                log.Info(DataRes);


                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return false;
            }
        }
    }
}
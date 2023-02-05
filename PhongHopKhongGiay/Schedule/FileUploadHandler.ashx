<%@ WebHandler Language="C#" Class="FileUploadHandler" %>
using System.Web;
using Newtonsoft.Json;
using System.Collections.Generic;
public class FileUploadHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.Files.Count > 0)
        {
            if (context.Request.Files.Count == 1)
            {
                bool result = false;
                HttpFileCollection files = context.Request.Files;
                // hiện tại logic code đang up 1 file ,nếu up nhiều file trả về phải là chuỗi name1,name2
                string _filename = string.Empty;
                for (int i = 0; i < files.Count; i++)
                {
                    HttpPostedFile file = files[i];
                    result = new PhongHopKhongGiay.AlfrescoHelper().UploadFileToAlfrescoServer(file, ref _filename, "");
                }
                context.Response.ContentType = "text/plain";
                if (result)
                {
                    var obj = new File();
                    obj.TenFile = files[0].FileName;
                    obj.FileID = _filename;
                    var json = JsonConvert.SerializeObject(obj);
                    //var resutl = "{'FileID':" +"'"+ _filename +"'"+
                    //              ",'TenFile':" +"'"+ files[0].FileName+"'"+"}";

                    context.Response.Write(json.ToString());
                }
                else
                {
                    context.Response.Write("Eror");
                }
            }
            else if (context.Request.Files.Count >= 2)
            {
                bool result = false;
                HttpFileCollection files = context.Request.Files;
                // hiện tại logic code đang up 1 file ,nếu up nhiều file trả về phải là chuỗi name1,name2
                string _filename = string.Empty;
                var listFile = new List<File>();
                for (int i = 0; i < files.Count; i++)
                {
                    HttpPostedFile file = files[i];
                    result = new PhongHopKhongGiay.AlfrescoHelper().UploadFileToAlfrescoServer(file, ref _filename, "");
                    var obj = new File();
                    obj.TenFile = files[i].FileName;
                    obj.FileID = _filename;
                    listFile.Add(obj);
                }
                context.Response.ContentType = "text/plain";
                if (result)
                {
                    //var obj = new File();
                    //obj.TenFile = files[0].FileName;
                    //obj.FileID = _filename;
                    var json = JsonConvert.SerializeObject(listFile);
                    //var resutl = "{'FileID':" +"'"+ _filename +"'"+
                    //              ",'TenFile':" +"'"+ files[0].FileName+"'"+"}";

                    context.Response.Write(json.ToString());
                }
                else
                {
                    context.Response.Write("Eror");
                }
            }

        }

    }

    public class File
    {
        public string FileID { get; set; }
        public string TenFile { get; set; }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}
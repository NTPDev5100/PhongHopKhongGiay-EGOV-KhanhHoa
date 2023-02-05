
using Afresco.Lib.Uti;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace PhongHopKhongGiay
{
    public class AlfrescoHelper
    {
        public string CPXDAlfrescoServerPath = WebConfigurationManager.AppSettings["AlfrescoServerPath"];
        public string AlfrescoServerPath = WebConfigurationManager.AppSettings["AlfrescoServerPath"];
        private string alfrescoHost = WebConfigurationManager.AppSettings["AlfrescoHost"];
        private string alfrescoPort = WebConfigurationManager.AppSettings["AlfrescoPort"];
        private string alfrescoHostFTP = WebConfigurationManager.AppSettings["AlfrescoHostFTP"];
        private string alfrescoUsername = "admin";
        private string alfrescoPassword = "admin";
        public bool UploadFileToAlfrescoServer(UploadedFile fileUpload, ref string fileName, string donViID)
        {
            try
            {
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                fileName = "HKG_" + DateTime.Now.ToString("yyyyMMddhhmmss") + "_" +
                           ConvertStringToASCII(fileUpload.FileName).Replace(" ", "");
                string remoteFile = AlfrescoServerPath + fileName;
                System.IO.Stream fileContentStream = fileUpload.InputStream;
                bool result = alfrescoFTP.upload(remoteFile, fileContentStream);
                return result;

            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public bool UploadFileToAlfrescoServer(HttpPostedFile file, ref string fileName, string donViID)
        {
            try
            {
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                fileName = "HKG_" + DateTime.Now.ToString("yyyyMMddhhmmss") + "_" +
                           ConvertStringToASCII(file.FileName).Replace(" ", "");
                string remoteFile = AlfrescoServerPath + fileName;
                System.IO.Stream fileContentStream = file.InputStream;
                bool result = alfrescoFTP.upload(remoteFile, fileContentStream);
                return result;

            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public Dictionary<string, bool> UploadFileToAlfrescoServer(RadUpload radUpload, string donViID)
        {
            Dictionary<string, bool> dicResult;
            try
            {
                dicResult = new Dictionary<string, bool>();
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                for (int i = 0; i < radUpload.UploadedFiles.Count; i++)
                {
                    string fileName = donViID + "_" + DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + ConvertStringToASCII(radUpload.UploadedFiles[i].FileName).Replace(" ", "");
                    string remoteFile = AlfrescoServerPath + fileName;
                    System.IO.Stream fileContentStream = radUpload.UploadedFiles[i].InputStream;
                    bool result = alfrescoFTP.upload(remoteFile, fileContentStream);
                    dicResult.Add(fileName + "@" + radUpload.UploadedFiles[i].FileName, result);
                }
            }
            catch (Exception ex)
            {
                dicResult = new Dictionary<string, bool>();
                dicResult.Add("lỗi upload: " + ex.Message, false);
            }
            return dicResult;
        }

        public bool UploadFileToAlfrescoServer(FileUpload fileUpload, ref string fileName, string donViID)
        {
            try
            {
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                fileName = "DuLich_" + DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + ConvertStringToASCII(fileUpload.FileName).Replace(" ", "");
                string remoteFile = AlfrescoServerPath + fileName;
                System.IO.Stream fileContentStream = fileUpload.PostedFile.InputStream;
                bool result = alfrescoFTP.upload(remoteFile, fileContentStream);
                return result;
            }
            catch (Exception ex)
            {
                //FIND TO [LOG4NET]
                return false;
            }
        }

        public bool DownloadFileFromAlfrescoServer(System.Web.HttpResponse respone, string fileName)
        {
            try
            {
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                Byte[] bytes = alfrescoFTP.DirectDownload(CPXDAlfrescoServerPath + fileName, fileName);
                string MimeType = System.Web.MimeMapping.GetMimeMapping(fileName);
                respone.ContentType = MimeType;
                respone.AddHeader("Content-Disposition", "attachment; filename=" + fileName);
                respone.BinaryWrite(bytes);
                //respone.End();
                HttpContext.Current.Response.Flush(); // Sends all currently buffered output to the client.
                HttpContext.Current.Response.SuppressContent = true;  // Gets or sets a value indicating whether to send HTTP content to the client.
                HttpContext.Current.ApplicationInstance.CompleteRequest(); // Causes ASP.NET to bypass all events and filtering in the HTTP pipeline chain of execution and directly execute the EndRequest event.
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        //public bool ChangUserPassord(string userNameChangepass,string newPass)
        //{
        //    string alfrecoServerHost = alfrescoHost+":"+alfrescoPort;
        //    UpdatePassword updaPass = new UpdatePassword(alfrecoServerHost, alfrescoUsername, alfrescoPassword);
        //    return updaPass.Update(userNameChangepass, newPass);
        //}

        private string ConvertStringToASCII(string text)
        {
            //for (int i = 32; i < 48; i++)
            //{
            //    text = text.Replace(((char)i).ToString(), " ");
            //}
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string strFormD = text.Normalize(System.Text.NormalizationForm.FormD);
            return regex.Replace(strFormD, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        }

        public bool DeleteFileFromAlfresco(string filename)
        {
            try
            {
                AlfrescoFTP alfrescoFTP = new AlfrescoFTP(alfrescoHostFTP, alfrescoUsername, alfrescoPassword);
                return alfrescoFTP.delete(AlfrescoServerPath + filename);
            }
            catch (Exception ex) { return false; }
        }

        public bool DownloadFile(System.Web.HttpResponse respone, byte[] bytes, string remoteFileName)
        {

            try
            {

                string MimeType = System.Web.MimeMapping.GetMimeMapping(remoteFileName);
                respone.ContentType = MimeType;

                respone.AddHeader("Content-Disposition", "attachment; filename=\"" + Path.GetFileName(remoteFileName) + "\""); // make browser ATTEMPT to open

                respone.BinaryWrite(bytes);
                try
                {
                    respone.Flush(); // Sends all currently buffered output to the client.
                    respone.SuppressContent = true;  // Gets or sets a value indicating whether to send HTTP content to the client.
                }
                catch (Exception) { }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}

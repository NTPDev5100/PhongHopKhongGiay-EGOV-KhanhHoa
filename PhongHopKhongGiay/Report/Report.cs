using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Xml;
using System.IO;
using log4net;
using Newtonsoft.Json;
using PhongHopKhongGiay.ReportService;

namespace PhongHopKhongGiay.Report
{
    
    public enum ReportType : int
    {
        MSWord = 0,
        MSExcel = 1,
        PDF = 2,
        CAD = 3,
        CrytalReport = 4,
        MSProject = 5
    }
    public partial class Report: DotNetNuke.Entities.Modules.PortalModuleBase
    {
        protected static readonly ILog log = LogManager.GetLogger(typeof(Report));
        private Common common;
        string[] REPORT_AREA_LIST = { "PHKG" };
        string[] REPORT_TYPE_LIST = { "Word", "Excel", "PDF", "CAD", "CrystalReport", "Project" };
        const string REPORT_TEMPLATE_FOLDER = "Template";
        const string REPORT_STORE_FOLDER = "Report Store";
        //------------
        string ReportFolder = "";
        private string PortalID = "";
        string ReportFolderName = "Reports";
        string HTTPAlias = "http:/localhost/qn";
        string DONVI = "";

        public Report()
        {
            common = new Common();
        }

        public Report(string ReportPath, string httpAlias, string DonViID)
        {
            common = new Common();
            int portalID = DotNetNuke.Entities.Portals.PortalController.Instance.GetCurrentPortalSettings().PortalId;
            PortalID = portalID.ToString();
            ReportFolder = ReportPath;
            HTTPAlias = httpAlias;
            DONVI = DonViID;
        }

        #region " Common "

        /// <summary>
        /// Lấy http link của file Report vừa tạo để trả về client!
        /// </summary>
        /// <param name="ReportName">Tên file report</param>
        /// <param name="Area">Nhóm report</param>
        /// <param name="ReportType">Laọi định dạng Report</param>
        /// <returns></returns>
        string GetReportLink(string ReportName, int Area, int ReportType)
        {
            if (common.CapDonViId == 0)
            {
                return HTTPAlias + "/" + "Portals" + "/" + PortalID + "/" + ReportFolderName + "/" + REPORT_AREA_LIST[Area] + "/"
                                  + REPORT_STORE_FOLDER + "/" + REPORT_TYPE_LIST[ReportType] + "/" + "Tinh" + "/" + ReportName;
            }
            else
            {
                return HTTPAlias + "/" + "Portals" + "/" + PortalID + "/" + ReportFolderName + "/" + REPORT_AREA_LIST[Area] + "/"
                                      + REPORT_STORE_FOLDER + "/" + REPORT_TYPE_LIST[ReportType] + "/" + DONVI + "/" + ReportName;
            }
        }

        string GetReportTemplate(string ReportName, int Area, int ReportType)
        {
            if (common.CapDonViId == 0)
            {
                return 
                    
                    
                    
                    ReportFolder + Path.DirectorySeparatorChar + "Portals" + Path.DirectorySeparatorChar + PortalID + Path.DirectorySeparatorChar + ReportFolderName + Path.DirectorySeparatorChar + REPORT_AREA_LIST[Area] + Path.DirectorySeparatorChar + REPORT_TEMPLATE_FOLDER
                                + Path.DirectorySeparatorChar + REPORT_TYPE_LIST[ReportType] + Path.DirectorySeparatorChar + "Tinh" + Path.DirectorySeparatorChar + ReportName;
            }
            else
            {
               return ReportFolder+Path.DirectorySeparatorChar +ReportName;
            }

        }

        /// <summary>
        /// Lấy đường dẫn local tới file Report vừa tạo trong thu mục Report Store!
        /// </summary>
        /// <param name="ReportNameWithDate">Tên file report(có kèm theo thời điểm tạo)</param>
        /// <param name="Area">Nhóm report</param>
        /// <param name="ReportType">Loại định dạng Report</param>
        /// <returns></returns>
        string GetNewReportFileName(string ReportNameWithDate, int Area, int ReportType)
        {
            if (common.CapDonViId == 0)
            {
                folderDownload = ReportFolder + Path.DirectorySeparatorChar + "Portals" + Path.DirectorySeparatorChar + PortalID + Path.DirectorySeparatorChar + ReportFolderName + Path.DirectorySeparatorChar + REPORT_AREA_LIST[Area] + Path.DirectorySeparatorChar + REPORT_STORE_FOLDER
                                + Path.DirectorySeparatorChar + REPORT_TYPE_LIST[ReportType] + Path.DirectorySeparatorChar + "Tinh" + Path.DirectorySeparatorChar + ReportNameWithDate;
                return ReportFolder + Path.DirectorySeparatorChar + "Portals" + Path.DirectorySeparatorChar + PortalID + Path.DirectorySeparatorChar + ReportFolderName + Path.DirectorySeparatorChar + REPORT_AREA_LIST[Area] + Path.DirectorySeparatorChar + REPORT_STORE_FOLDER
                                + Path.DirectorySeparatorChar + REPORT_TYPE_LIST[ReportType] + Path.DirectorySeparatorChar + "Tinh" + Path.DirectorySeparatorChar + ReportNameWithDate;
            }
            else
            {
                folderDownload = ReportFolder + Path.DirectorySeparatorChar + "Portals" + Path.DirectorySeparatorChar + PortalID + Path.DirectorySeparatorChar + ReportFolderName + Path.DirectorySeparatorChar + REPORT_AREA_LIST[Area] + Path.DirectorySeparatorChar + REPORT_STORE_FOLDER
                                + Path.DirectorySeparatorChar + REPORT_TYPE_LIST[ReportType] + Path.DirectorySeparatorChar + DONVI + Path.DirectorySeparatorChar + ReportNameWithDate;
                return ReportFolder + Path.DirectorySeparatorChar + "Portals" + Path.DirectorySeparatorChar + PortalID + Path.DirectorySeparatorChar + ReportFolderName + Path.DirectorySeparatorChar + REPORT_AREA_LIST[Area] + Path.DirectorySeparatorChar + REPORT_STORE_FOLDER
                                + Path.DirectorySeparatorChar + REPORT_TYPE_LIST[ReportType] + Path.DirectorySeparatorChar + DONVI + Path.DirectorySeparatorChar + ReportNameWithDate;
            }
        }

        string folderDownload = string.Empty;
        string oldFileName = string.Empty;
        string newFileName = string.Empty;

        /// <summary>
        /// Tạo và trả về đường dẫn cho client file Report mới tạo.
        /// Chú ý tên bảng tự động tạo trong DataSet: Table, Table1, Table2,...!!!
        /// </summary>
        /// <param name="ReportCode">Mã nhận dạng Report</param>
        /// <param name="Params">Tham số tạo Store dữ liệu đổ vào Report</param>
        /// <returns></returns>
        public string InReport(string ReportCode, object[] param)
        {
            //Connection conn = null;
            ReportServiceClient reportService = new ReportServiceClient();
            try
            {

                string Link = "";
                //Chua thong tin ve report nhu: ten file, kieu report
                string stable = "";
                //Dataset chua du lieu se gen ra report
                string sData = "";

                sData = reportService.Get_DataReport(ReportCode, common.DonViId, param, out stable);
                if (!string.IsNullOrEmpty(sData))
                {
                    DataSet Data = JsonConvert.DeserializeObject<DataSet>(sData);
                    DataTable table = JsonConvert.DeserializeObject<DataTable>(stable);
                    Link = GenReport(Data, table);
                }
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }
            finally
            {
                if (reportService != null && reportService.State != System.ServiceModel.CommunicationState.Closed) reportService.Close();
            }

        }

        /// <summary>
        /// Download khong dung javascript
        /// </summary>
        /// <param name="ReportCode"></param>
        /// <param name="param"></param>
        /// <param name="folderDownload"></param>
        /// <param name="oldFileName"></param>
        /// <param name="newFileName"></param>
        /// <returns></returns>
        public string InReport(string ReportCode, object[] param, out string folderDownload, out string oldFileName, out string newFileName)
        {
            //Connection conn = null;
            ReportServiceClient reportService = new ReportServiceClient();
            try
            {
                string Link = "";
                //Chua thong tin ve report nhu: ten file, kieu report
                string stable = "";
                //Dataset chua du lieu se gen ra report
                string sData = "";
                sData = reportService.Get_DataReport(ReportCode, 1, param, out stable );
                if (!string.IsNullOrEmpty(sData))
                {
                    DataSet Data = JsonConvert.DeserializeObject<DataSet>(sData);
                    DataTable table = JsonConvert.DeserializeObject<DataTable>(stable);
                    Link = GenReport(Data, table);
                }

                folderDownload = this.folderDownload;
                oldFileName = this.oldFileName;
                newFileName = this.newFileName;
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                folderDownload = oldFileName = newFileName = string.Empty;
                return "";
            }
            finally
            {
                if (reportService != null && reportService.State != System.ServiceModel.CommunicationState.Closed) reportService.Close();
            }

        }

        /// <summary>
        /// Tạo và trả về đường dẫn cho client file Report mới tạo.
        /// Chú ý tên bảng tự động tạo trong DataSet: Table, Table1, Table2,...!!!
        /// </summary>
        /// <param name="ReportCode">Mã nhận dạng Report</param>
        /// <param name="Params">Tham số tạo Store dữ liệu đổ vào Report</param>
        /// <returns></returns>
        public string GenReport(DataSet Data,DataTable table )
        {
            //Connection conn = null;
            try
            {                   
                string Link = "";
                //Get Store Procedure!
                Report rpt = new Report();

                if (table.Rows.Count == 1)
                {
                    string ReportName = table.Rows[0]["ReportName"].ToString();
                    oldFileName = ReportName;
                    int ReportGroup = int.Parse(table.Rows[0]["ReportGroup"].ToString());
                    int ReportType = int.Parse(table.Rows[0]["ReportType"].ToString());
                    string ReportMergeInfo = Convert.ToString(table.Rows[0]["MergeInfo"]);
                    switch (ReportType)
                    {
                        case 0: // word
                            {
                                //Kiểm tra xem có merge table ko?
                                if (string.IsNullOrEmpty(ReportMergeInfo))
                                    Link = CreateMSWordReportToLink(Data, ReportName, ReportGroup);
                                else
                                {
                                    string[] TablesMergeInfos = ReportMergeInfo.Split('#');
                                    if (TablesMergeInfos == null || TablesMergeInfos.Length <= 0)
                                        return null;
                                    Link = CreateMSWordReportWithMergeMultiTableToLink(Data, ReportName, ReportGroup, TablesMergeInfos);
                                }
                                break;
                            }
                        case 1: //excel
                            {
                                //Kiểm tra xem có merge table ko?
                                int startRow = int.Parse(table.Rows[0]["StartRow"].ToString());
                                byte startCol = byte.Parse(table.Rows[0]["StartCol"].ToString());
                                int numOfTableCol = int.Parse(table.Rows[0]["NumOfTableCol"].ToString());
                                bool UseDataSourceHeader = bool.Parse(table.Rows[0]["UseDataSourceHeader"].ToString());
                                bool InsertRow = bool.Parse(table.Rows[0]["InsertRow"].ToString());
                                string SumInfo = Convert.ToString(table.Rows[0]["SumInfo"]);
                                if (string.IsNullOrEmpty(ReportMergeInfo))
                                    Link = CreateMSExcelReLaceReportToLink(Data, ReportName, ReportGroup, ReportType,
                                        startRow, startCol, UseDataSourceHeader, InsertRow, SumInfo, numOfTableCol);
                                else
                                {
                                    string[] strMergeInfo = ReportMergeInfo.Split(new Char[] { '*' });
                                    Link = CreateMSExcelMergeFieldReportToLink(Data, ReportName, ReportGroup, ReportType,
                                        startRow, startCol, UseDataSourceHeader, InsertRow, strMergeInfo[0].ToString(),
                                        strMergeInfo[1].ToString(), Convert.ToInt32(strMergeInfo[2].ToString()), SumInfo,
                                        numOfTableCol);
                                }
                                break;
                            }
                        default:
                            break;
                    }
                   
                }
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }

        }

        private int[] TryParseTableToInts(DataTable Source)
        {
            try
            {
                int[] refOjb = new int[Source.Columns.Count];
                for (int i = 0; i < Source.Columns.Count; i++)
                    refOjb[i] = i;
                return refOjb;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return null;
            }
        }

        private int[] TryParseToInts(string Source, char Sprt)
        {
            try
            {
                string[] spls = Source.Split(Sprt);
                int[] refOjb = new int[spls.Length];
                for (int i = 0; i < spls.Length; i++)
                    refOjb[i] = int.Parse(spls[i]);
                return refOjb;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return null;
            }
        }

        /// <summary>
        /// Tạo nội dung file report theo dữ liệu đưa vào. Trả về link file Word đã được bind dữ liệu (With Merge)
        /// </summary>
        /// <param name="Data">Dữ liệu đầu vào</param>
        /// <param name="ReportName">Tên file Report</param>
        /// <param name="Area">Nhóm report</param>
        /// <param name="MergeTable">Vị trí bảng cần mergecell trong file word</param>
        /// <param name="MergeColumns">Tập vị trí các cột cần merge</param>
        /// <param name="StartAtRow">Vị trí dòng bắt đầu merge</param>
        /// <returns></returns>
        public string CreateMSWordReportWithMergeTableToLink(DataSet Data, string ReportName, int Area, int MergeTable, int[] MergeColumns, int StartAtRow)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);

                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    ws.ExecuteFull(Data);
                    ws.AutoMergeCellTable(MergeTable, MergeColumns, StartAtRow);
                    ws.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, 0);
                }
                return Link;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return "";
            }
        }

        public string CreateMSWordReportWithMergeMultiTableToLink(DataSet Data, string ReportName, int Area, string[] MergerTables)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);

                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    ws.ExecuteFull(Data);
                    for (int i = 0; i < MergerTables.Length; i++)
                    {
                        string[] MergeInfos = MergerTables[i].Split(';');
                        int MergeTable = int.Parse(MergeInfos[0]);
                        int StartAtRow = int.Parse(MergeInfos[2]);
                        int[] MergeColumns = null;
                        MergeColumns = TryParseToInts(MergeInfos[1], '-');
                        if (MergeColumns == null)
                            return null;

                        ws.AutoMergeCellTable(MergeTable, MergeColumns, StartAtRow);
                    }
                    ws.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, 0);
                }
                return Link;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return "";
            }
        }

        /// <summary>
        /// in report với định dạng Paragraph để in trang bổ sung
        /// </summary>
        /// <param name="ReportCode"></param>
        /// <param name="Params"></param>
        /// <param name="lenght"></param>
        /// <returns></returns>


        /// <summary>
        /// Tạo nội dung file report theo dữ liệu đưa vào. Trả về link file Word đã được bind dữ liệu
        /// </summary>
        /// <param name="Data">Dữ liệu đầu vào</param>
        /// <param name="ReportName">Tên file Report</param>
        /// <param name="Area">Nhóm report</param>
        /// <returns></returns>
        public string CreateMSWordReportToLink(DataSet Data, string ReportName, int Area)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    newFileName = TimeStr + ReportName;
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);

                    //WordStream ws = new WordStream();
                    //ws.Open(newReportFile);
                    //ws.ExecuteFull(Data);
                    //ws.SaveAndClose();
                    //Link = GetReportLink(TimeStr + ReportName, Area, 0);

                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    try
                    {
                        ws.ExecuteFull(Data);
                    }
                    catch (Exception ex)
                    {
                        //log4net.Config.XmlConfigurator.Configure();
                        log.Error(ex.Message + "Lỗi bind dữ liệu ");
                        return "";
                    }

                    ws.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, 0);
                }
                return Link;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return "";
            }
        }

        /// <summary>
        /// in report với định dạng Paragraph để in trang bổ sung
        /// </summary>
        /// <param name="Data"></param>
        /// <param name="ReportName"></param>
        /// <param name="Area"></param>
        /// <param name="lenght"></param>
        /// <returns></returns>
        public string CreateMSWordReportToLinkWithParagraph(DataTable Data, string ReportName, int Area, double lenght)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);

                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    ws.ExecuteWithParagraph(Data, lenght);
                    ws.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, 0);
                }
                return Link;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return "";
            }
        }

        #region " By byte "

        #endregion

        byte[] GetFileStream(string FileName)
        {
            byte[] ByteArray;
            try
            {
                FileStream fs = new FileStream(FileName, FileMode.Open, FileAccess.Read);
                ByteArray = new byte[fs.Length];

                fs.Read(ByteArray, 0, System.Convert.ToInt32(fs.Length));

                fs.Close();
                return ByteArray;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return null;
            }
        }

        public byte[] CreateMSWordReportToByte(DataTable Data, string ReportName, int Area)
        {
            try
            {
                byte[] Result = null;
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);
                    //Bind dữ liệu!
                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    ws.ExecuteFull(Data);
                    ws.SaveAndClose();
                    //Chuyển file mới sang kiểu byte[]!
                    Result = GetFileStream(newReportFile);
                }
                return Result;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return null;
            }
        }

        public byte[] CreateMSWordReportToByte(DataSet Data, string ReportName, int Area)
        {
            try
            {
                byte[] Result = null;
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);

                    WordStream ws = new WordStream();
                    ws.Open(newReportFile);
                    ws.ExecuteFull(Data);
                    ws.SaveAndClose();
                    //Chuyển file mới sang kiểu byte[]!
                    Result = GetFileStream(newReportFile);
                }
                return Result;
            }
            catch (Exception ex)
            {
                //LogHelper.WriteErrorToLogFile(ex, "");
                return null;
            }
        }


        #endregion
        #region excel 
        #region " Excel "
        /// <summary>
        /// xuất report excel không có merge
        /// </summary>
        /// <param name="Data">dữ liệu datatable</param>
        /// <param name="ReportName">tên report</param>
        /// <param name="Area">lĩnh vực</param>
        /// <param name="Type">loại báo cáo (word, excel, .....)</param>
        /// <param name="startRow">dòng bắt đầu đỗ dữ liệu</param>
        /// <param name="startCol">cột bắt đầu đỗ dữ liệu</param>
        /// <param name="UseDataSourceHeader">có dùng tên cột của bảng đễ làm header bảng ko?</param>
        /// <param name="InsertRow">có insert 1 dòng hay ko?</param>
        /// <returns></returns>
        public string CreateMSExcelReportToLink(DataSet Data, string ReportName, int Area, int Type,
                                                int startRow, byte startCol, bool UseDataSourceHeader, bool InsertRow, string SumsInfo)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, Type);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, Type);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);
                    ExcelStream ex = new ExcelStream();

                    ex.Open(newReportFile);
                    foreach (DataTable tbl in Data.Tables)
                    {

                        ex.ImportDataTable(tbl, startRow, startCol, UseDataSourceHeader, InsertRow);
                        ex.SetBorderData(tbl, startRow, startCol);

                        if (Convert.ToString(SumsInfo) != "")
                        {
                            string[] strSumInfo = SumsInfo.Split(new Char[] { '*' });

                            if (strSumInfo.Length > 1)
                            {
                                string DistanceFromLastRow = strSumInfo[1];
                                string[] strSumColumns = strSumInfo[0].Split(new Char[] { ',' });

                                foreach (string SumColumn in strSumColumns)
                                {
                                    ex.SumFinal(tbl, startRow, Convert.ToInt32(SumColumn), Convert.ToInt32(DistanceFromLastRow));
                                }
                            }
                        }
                    }
                    ex.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, Type);
                }
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }
        }
        /// <summary>
        /// xuất report excel có merge
        /// </summary>
        /// <param name="Data">dữ liệu datatable</param>
        /// <param name="ReportName">tên report</param>
        /// <param name="Area">lĩnh vực</param>
        /// <param name="Type">loại báo cáo (word, excel, .....)</param>
        /// <param name="startRow">dòng bắt đầu đỗ dữ liệu</param>
        /// <param name="startCol">cột bắt đầu đỗ dữ liệu</param>
        /// <param name="UseDataSourceHeader">có dùng tên cột của bảng đễ làm header bảng ko?</param>
        /// <param name="InsertRow">có insert 1 dòng hay ko?</param>
        /// <param name="MergeColumns">các cột nào được merge</param>
        /// <param name="SortFieldName">tên cột muốn sort</param>
        /// <param name="MergeRowStart">dòng bắt đầu được merge</param>
        /// <param name="SumsInfo">dòng muốn sum</param>
        /// <returns></returns>
        public string CreateMSExcelMergeFieldReportToLink(DataSet Data, string ReportName, int Area, int Type,
                                                int startRow, byte startCol, bool UseDataSourceHeader, bool InsertRow,
                                                string MergeColumns, string SortFieldName, int MergeRowStart,
                                                string SumsInfo, int numOfTableCol)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, 0);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, 0);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);
                    ExcelStream ex = new ExcelStream();
                    ex.Open(newReportFile);

                    foreach (DataTable tbl in Data.Tables)
                    {
                        ex.ImportDataTable(tbl, startRow, startCol, UseDataSourceHeader, InsertRow);
                        ex.SetBorderData(tbl, startRow, startCol);

                        string[] strMergeColumns = MergeColumns.Split(new Char[] { ',' });

                        foreach (string MergeColumn in strMergeColumns)
                        {
                            ex.MergeFieldByRow(tbl, SortFieldName, MergeRowStart, startRow, Convert.ToInt32(MergeColumn));
                        }

                        if (Convert.ToString(SumsInfo) != "")
                        {
                            string[] strSumInfo = SumsInfo.Split(new Char[] { '*' });

                            if (strSumInfo.Length > 1)
                            {
                                string DistanceFromLastRow = strSumInfo[1];
                                string[] strSumColumns = strSumInfo[0].Split(new Char[] { ',' });

                                foreach (string SumColumn in strSumColumns)
                                {
                                    ex.SumFinal(tbl, startRow, Convert.ToInt32(SumColumn), Convert.ToInt32(DistanceFromLastRow));
                                }
                            }
                        }
                    }

                    ex.SaveAndClose();

                    Link = GetReportLink(TimeStr + ReportName, Area, Type);
                }
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }
        }

        /// <summary>
        /// xuất report excel không có merge
        /// </summary>
        /// <param name="Data">dữ liệu datatable</param>
        /// <param name="ReportName">tên report</param>
        /// <param name="Area">lĩnh vực</param>
        /// <param name="Type">loại báo cáo (word, excel, .....)</param>
        /// <param name="startRow">dòng bắt đầu đỗ dữ liệu</param>
        /// <param name="startCol">cột bắt đầu đỗ dữ liệu</param>
        /// <param name="UseDataSourceHeader">có dùng tên cột của bảng đễ làm header bảng ko?</param>
        /// <param name="InsertRow">có insert 1 dòng hay ko?</param>
        /// <returns></returns>
        public string CreateMSExcelReLaceReportToLink(DataSet Data, string ReportName, int Area, int Type,
                                                int startRow, byte startCol, bool UseDataSourceHeader, bool InsertRow, string SumsInfo, int numOfTableCol)
        {
            try
            {
                string Link = "";
                string TimeStr = DateTime.Now.ToString("yyyyMMddhhmmss");
                string reportTemplateFile = GetReportTemplate(ReportName, Area, Type);
                if (File.Exists(reportTemplateFile))
                {
                    string newReportFile = GetNewReportFileName(TimeStr + ReportName, Area, Type);
                    string path = Directory.GetParent(newReportFile).FullName;
                    if (!Directory.Exists(path))
                        Directory.CreateDirectory(path);
                    File.Copy(reportTemplateFile, newReportFile);
                    ExcelStream ex = new ExcelStream();

                    ex.Open(newReportFile);
                    foreach (DataTable tbl in Data.Tables)
                    {
                        if(tbl.Columns.Count>= numOfTableCol)
                        {
                            ex.ImportDataTable(tbl, startRow, startCol, numOfTableCol, false);
                            ex.SetBorderData(tbl, startRow, startCol, numOfTableCol);

                            if (Convert.ToString(SumsInfo) != "")
                            {
                                string[] strSumInfo = SumsInfo.Split(new Char[] { '*' });

                                if (strSumInfo.Length > 1)
                                {
                                    string DistanceFromLastRow = strSumInfo[1];
                                    string[] strSumColumns = strSumInfo[0].Split(new Char[] { ',' });

                                    foreach (string SumColumn in strSumColumns)
                                    {
                                        ex.SumFinal(tbl, startRow, Convert.ToInt32(SumColumn), Convert.ToInt32(DistanceFromLastRow));
                                    }
                                }
                            }
                        }
                        
                    }
                    foreach (DataTable tbl in Data.Tables)
                    {
                        ex.PutValueToCellAndReplace(tbl);
                    }
                    ex.SaveAndClose();
                    Link = GetReportLink(TimeStr + ReportName, Area, Type);
                }
                return Link;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }
        }
        #endregion
        #endregion
    }
}
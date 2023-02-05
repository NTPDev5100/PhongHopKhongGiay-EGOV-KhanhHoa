<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadFile.aspx.cs" Inherits="PhongHopKhongGiay.Schedule.DownloadFile " %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
    <title>Tải file</title>

</head>
<body>
    <form id="form1" runat="server">   <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            </telerik:RadScriptManager>
    <telerik:RadWindowManager ID="rwmWindow" runat="server" Behaviors="Move,Close"
    Modal="True" ShowContentDuringLoad="False" VisibleStatusbar="false"
    AutoSize="false"/></form></body>
</html>

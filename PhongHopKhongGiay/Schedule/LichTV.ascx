<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichTV.ascx.cs" Inherits="PhongHopKhongGiay.Schedule.LichTV" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<input type="hidden" id="LichTVUrl" runat="server" />
<telerik:RadWindowManager ID="RadWindowManager1" ShowContentDuringLoad="false" VisibleStatusbar="false"
    ReloadOnShow="true" runat="server" EnableShadow="true">
    <Windows>
        <telerik:RadWindow ID="RadWindow2" runat="server" Behaviors="Close"
            NavigateUrl="LichTV.aspx">
        </telerik:RadWindow>
    </Windows>
</telerik:RadWindowManager>
<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function StartUp() {
            var url = document.all("<%=LichTVUrl.ClientID%>").value;
            var h = window.innerHeight;
            //url = url + "?h=" + h;
            var newWindow = window.open(url);
            newWindow.resizeTo(screen.availWidth, screen.availHeight);
            //var oWnd = radopen(url, "RadWindow2");
            //oWnd.setSize(w, h);
            //oWnd.moveTo(($(window).width() * 0.5) - (w / 2), ($(window).height() * 0.5) - (h / 2));
            //oWnd.show();
        }
    </script>
    <script type="text/javascript">
        StartUp();
    </script>
</telerik:RadCodeBlock>
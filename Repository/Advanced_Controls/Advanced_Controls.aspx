<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced_Controls.aspx.cs" Inherits="Advanced_Controls_Advanced_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="244px" NextPrevFormat="ShortMonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="328px">
			<DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
			<DayStyle BackColor="#CCCCCC" />
			<NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
			<OtherMonthDayStyle ForeColor="#999999" />
			<SelectedDayStyle BackColor="#333399" ForeColor="White" />
			<TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
			<TodayDayStyle BackColor="#999999" ForeColor="White" />
		</asp:Calendar>
		<asp:Label ID="SelectDatePnl" runat="server"></asp:Label>
		<br /><br /><br />
		<asp:FileUpload ID="Uploader" runat="server" OnDisposed="cmdUpload_Click" />
		<asp:Button ID="Button" runat="server" Text="Upload" OnClick="cmdUpload_Click" />
		<br />
		<asp:Label ID="lblInfo" runat="server"></asp:Label>
	    </div>
	</form>
</body>
</html>

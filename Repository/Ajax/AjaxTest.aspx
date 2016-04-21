<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxTest.aspx.cs" Inherits="Ajax_AjaxTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
		<asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
			<ContentTemplate>
				<p>Time Page was first loaded</p>
				<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
			</ContentTemplate>
		</asp:UpdatePanel>
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
				<p>Time Page was first loaded</p>
				<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
				<p>Time button was clicked</p>
				<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
				<br />
				<br />
				<br />
			</ContentTemplate>
			<Triggers>
				<asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
			</Triggers>
		</asp:UpdatePanel>
		<asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" />

		<asp:UpdateProgress ID="UpdateProgress1" runat="server">
			<ProgressTemplate>
				<p>Processing, please wait...</p>
			</ProgressTemplate>
		</asp:UpdateProgress>
    </div>
    </form>
</body>
</html>

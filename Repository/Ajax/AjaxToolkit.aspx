<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxToolkit.aspx.cs" Inherits="Ajax_AjaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
		<h1>This is the HtmlEditorExtender</h1>
		<h3>You can use this with a text box to allow you to use html markup</h3>
		<h5>This means you can format the text the way you want</h5>
		<h6>The timer plays with the curser</h6>
		<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="814px" Width="731px"></asp:TextBox>
		<ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="TextBox1"></ajaxToolkit:HtmlEditorExtender>
		<div>
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
				<ContentTemplate>
					<asp:label ID="title" runat="server" Text="<h1>This is an AlwaysVisibleControlExtender</h1><h3>As you can see it is always visible</h3><h5>Even when you scroll.</h5>"></asp:label>
					<ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender2" runat="server" TargetControlID="title"  HorizontalSide="Right" VerticalOffset="10"/>
					<asp:Label ID="Label1" runat="server" /><asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick" ></asp:Timer>
					<ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" TargetControlID="Label1" runat="server" HorizontalSide="Right" HorizontalOffset="368" VerticalOffset="185" />
				</ContentTemplate>
			</asp:UpdatePanel>
		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
    </div>
    </form>
</body>
</html>

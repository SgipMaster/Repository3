<%@ Page language="c#" Inherits="GreetingCardMaker.GreetingCardMaker" CodeFile="NewGreetingCardMaker.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Greeting Card Maker</title>
    </head>
	<body>
		<form runat="server">
		  <div>
			<div style="BORDER-RIGHT: thin ridge; PADDING-RIGHT: 20px; BORDER-TOP: thin ridge; PADDING-LEFT: 20px; FONT-SIZE: x-small; PADDING-BOTTOM: 20px; BORDER-LEFT: thin ridge; WIDTH: 293px; PADDING-TOP: 20px; BORDER-BOTTOM: thin ridge; FONT-FAMILY: Verdana; HEIGHT: 512px; BACKGROUND-COLOR: lightyellow">Choose 
				a background color:<br />
				<asp:dropdownlist ID="lstBackColor" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged">
                    <asp:ListItem Value="White"></asp:ListItem>
                    <asp:ListItem Value="Red"></asp:ListItem>
                    <asp:ListItem Value="Green"></asp:ListItem>
                    <asp:ListItem Value="Blue"></asp:ListItem>
                    <asp:ListItem Value="Yellow"></asp:ListItem>
				</asp:dropdownlist>
				<br /><br />
				Choose a font:<br />
				<asp:dropdownlist ID="lstFontName" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:dropdownlist>
				<br /><br />
				Specify a numeric font size:<br />
				<asp:textbox ID="txtFontSize" runat="server" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:textbox>
				<br /><br />
				Choose a border style:<br />
				<asp:radiobuttonlist ID="lstBorder" runat="server" Height="59px" Width="177px" Font-Size="X-Small" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:radiobuttonlist>
				<br /><br />
				<asp:CheckBoxList ID="picList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged">
					<asp:ListItem Value="birthday.png" >Birthday</asp:ListItem>
					<asp:ListItem Value="christmas.png">Christmas</asp:ListItem>
					<asp:ListItem Value="get_well.gif">Get Well</asp:ListItem>
					<asp:ListItem Value="graduation.jpg">Graduation</asp:ListItem>
					<asp:ListItem Value="valentine.jpg">Valentine</asp:ListItem>
				</asp:CheckBoxList>
                <br /><br />
				Enter the greeting text below:<br />
				<asp:textbox ID="txtGreeting" runat="server" Height="85px" Width="240px" TextMode="MultiLine" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:textbox>
				<br /><br />
				Who is this from: <br />
				<asp:TextBox ID="nameBox" runat="server" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:TextBox>
				<br /><br />
				<asp:button ID="cmdUpdate" runat="server" Height="24px" Width="71px" Text="Update" onclick="cmdUpdate_Click"></asp:button>
			</div>
			<asp:panel ID="pnlCard" style="Z-INDEX: 101; LEFT: 350px; POSITION: absolute; TOP: 16px" runat="server" 
			Width="339px"  HorizontalAlign="Center"><br />&nbsp; 
			    <asp:Label ID="lblGreeting" runat="server" Width="325px"></asp:Label>
			    <br /><br /><br />
				<asp:PlaceHolder ID="picHolder" runat="server"></asp:PlaceHolder>
				<br />
				<asp:Label ID="fromlabel" runat="server"></asp:Label>
		    </asp:panel>
	      </div>
		</form>
	</body>
</html>

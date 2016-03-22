<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="WebForm_CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div style="border-right: thin ridge; padding-right: 20px; border-top: thin ridge;
            padding-left: 20px; padding-bottom: 20px; border-left: thin ridge; width: 531px;
            padding-top: 20px; border-bottom: thin ridge; font-family: Verdana; height: 211px;
            background-color: #FFFFE8">
        Convert:&nbsp;
        <input type="text" id="US" runat="server"/>
        &nbsp; U.S. dollars to &nbsp;
		<select id="Currency" runat="server" />
        <br /><br />
        <input type="submit" value="OK" id="Convert" runat="server" onserverclick="Convert_ServerClick"/>
		<input type="submit" value="Show Graph" id="ShowGraph" runat="server" onserverclick="ShowGraph_ServerClick" />
		<br /><br />
		<img id="Graph" src="" alt="Currency Graph" runat="server" />
		<br /><br />
		<p style="font-weight: bold" id="Result" runat="server"></p>
		<br /><br />
		<a href="SecondPage.aspx">Link to SecondPage.aspx</a>
		<br /><br />
		<input type="submit" runat="server" id="RR" value="Response.Redirect to SecondPage.aspx" onserverclick="ResponseRedirect_ServerClick" />
		<br /><br />
		<input type="submit" runat="server" id="Text1" value="Server.Transfer to SecondPage.aspx" onserverclick="ServerTransfer_ServerClick" />
      </div>		
	</form>
</body>
</html>

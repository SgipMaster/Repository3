<%@ Page Language="C#" MasterPageFile="~/UCMP/MyMaster.master" AutoEventWireup="true" CodeFile="FooterHost.aspx.cs" Inherits="UCMP_FooterHost" %>
<%@ Register Src="~/UCMP/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div ><h1>A Page With a Footer</h1>
		<h4>Choose how you would like to see the current date/time</h4>
		<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true">
			<asp:ListItem>Long Date</asp:ListItem>
			<asp:ListItem>Short Time</asp:ListItem>
		</asp:RadioButtonList><hr />
		<br /><br />
		<uc1:Footer runat="server" ID="Footer" />
	</div>
</asp:Content>
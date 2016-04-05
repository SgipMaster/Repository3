<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleList.aspx.cs" Inherits="DataControls_TitleList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [price] FROM [titles]"></asp:SqlDataSource>
    </div>
    	<asp:ListView ID="ListView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1">
			<AlternatingItemTemplate>
				<span style="background-color: #FFF8DC;">title_id:
				<asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
				<br />
				title:
				<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				<br />
				price:
				<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				<br />
<br /></span>
			</AlternatingItemTemplate>
			<EditItemTemplate>
				<span style="background-color: #008A8C;color: #FFFFFF;">title_id:
				<asp:Label ID="title_idLabel1" runat="server" Text='<%# Eval("title_id") %>' />
				<br />
				title:
				<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
				<br />
				price:
				<asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
				<br />
				<asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
				<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
				<br /><br /></span>
			</EditItemTemplate>
			<EmptyDataTemplate>
				<span>No data was returned.</span>
			</EmptyDataTemplate>
			<InsertItemTemplate>
				<span style="">title_id:
				<asp:TextBox ID="title_idTextBox" runat="server" Text='<%# Bind("title_id") %>' />
				<br />title:
				<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
				<br />price:
				<asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
				<br />
				<asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
				<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
				<br /><br /></span>
			</InsertItemTemplate>
			<ItemTemplate>
				<span style="background-color: #DCDCDC;color: #000000;">title_id:
				<asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
				<br />
				title:
				<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				<br />
				price:
				<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				<br />
<br /></span>
			</ItemTemplate>
			<LayoutTemplate>
				<div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
					<span runat="server" id="itemPlaceholder" />
				</div>
				<div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
				</div>
			</LayoutTemplate>
			<SelectedItemTemplate>
				<span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">title_id:
				<asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
				<br />
				title:
				<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				<br />
				price:
				<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				<br />
<br /></span>
			</SelectedItemTemplate>
		</asp:ListView>
    </form>
</body>
</html>

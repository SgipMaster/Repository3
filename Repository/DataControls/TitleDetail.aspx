<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleDetail.aspx.cs" Inherits="DataControls_TitleDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [type], [pub_id], [royalty], [advance], [price], [ytd_sales], [pubdate], [notes] FROM [titles] WHERE ([title_id] = @title_id)">
			<SelectParameters>
				<asp:QueryStringParameter Name="title_id" QueryStringField="ID" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
		<asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="title_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
			<EditRowStyle BackColor="#999999" />
			<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<ItemTemplate>
				<table>
				<tr>
					<td>
						<asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("title_id", "Images/{0}.jpg" ) %>'/>
					</td>
					<td>
						Title:
						<asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
						<br />
						Type:
						<asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
						<br />
						Publisher ID:
						<asp:Label ID="pub_idLabel" runat="server" Text='<%# Bind("pub_id") %>' />
						<br />
						Royalty:
						<asp:Label ID="royaltyLabel" runat="server" Text='<%# Bind("royalty") %>' />
						<br />
						Advance:
						<asp:Label ID="advanceLabel" runat="server" Text='<%# Bind("advance", "{0:c}" ) %>' />
						<br />
						Price:
						<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price", "{0:c}" ) %>' />
						<br />
						Year To Date Sales:
						<asp:Label ID="ytd_salesLabel" runat="server" Text='<%# Bind("ytd_sales") %>' />
						<br />
						Published Date:
						<asp:Label ID="pubdateLabel" runat="server" Text='<%# Bind("pubdate", "{0:d}" ) %>' />
						<br />
						Notes:
						<asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
						<br />
						</td>
					</tr>
				</table>
			</ItemTemplate>
			<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
		</asp:FormView>
		<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DataControls/TitleList.aspx" Text="TitleList.aspx"/>
    </div>
    </form>
</body>
</html>

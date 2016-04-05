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
    	<asp:ListView ID="ListView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1" GroupItemCount="3">
			<LayoutTemplate>
				<table>
					<tr runat="server" id="GroupPlaceHolder"></tr>
				</table>
				<div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
					<asp:DataPager ID="DataPager1" runat="server" PageSize="9">
						<Fields>
							<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
						</Fields>
					</asp:DataPager>
				</div>
			</LayoutTemplate>
			<GroupTemplate>
				<tr>
					<td runat="server" id="itemPlaceHolder"></td>
				</tr>
			</GroupTemplate>
			<ItemTemplate>
				<td style="background-color: #DCDCDC;color: #000000;">
					<table>
						<tr>
							<td> 
								<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?ID={0}") %>'>
									<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "Images/t{0}.jpg") %>' />
									</asp:HyperLink>
							</td>
							<td>
								<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?ID={0}") %>'>
									Title:
									<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
									<br />
									Price:
									<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "{0:c}" ) %>' />
								</asp:HyperLink>
							</td>
						</tr>
					</table>
				</td>
			</ItemTemplate>
			<AlternatingItemTemplate>
				<td style="background-color: #FFF8DC;">
					<table>
						<tr>
							<td> 
								<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?ID={0}") %>'>
									<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("title_id", "Images/t{0}.jpg") %>' />
								</asp:HyperLink>
							</td>
							<td>
								<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("title_id", "TitleDetail.aspx?ID={0}") %>'>
									Title:
									<asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' />
									<br />
									Price:
									<asp:Label ID="Label2" runat="server" Text='<%# Eval("price", "{0:c}" ) %>' />
								</asp:HyperLink>
							</td>
						</tr>
					</table>
				</td>
			</AlternatingItemTemplate>
			<EmptyDataTemplate>
				<span>No data was returned.</span>
			</EmptyDataTemplate>
		</asp:ListView>
    </form>
</body>
</html>




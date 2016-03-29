<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorTitles.aspx.cs" Inherits="DataControls_AuthorTitles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" SelectCommand="SELECT authors.au_id, [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract], COUNT(title_id) as titlecount  FROM [authors] LEFT OUTER JOIN titleauthor ON authors.au_id = titleauthor.au_id GROUP BY authors.au_id, [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]" UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
			<DeleteParameters>
				<asp:Parameter Name="au_id" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="au_id" Type="String" />
				<asp:Parameter Name="au_lname" Type="String" />
				<asp:Parameter Name="au_fname" Type="String" />
				<asp:Parameter Name="phone" Type="String" />
				<asp:Parameter Name="address" Type="String" />
				<asp:Parameter Name="city" Type="String" />
				<asp:Parameter Name="state" Type="String" />
				<asp:Parameter Name="zip" Type="String" />
				<asp:Parameter Name="contract" Type="Boolean" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="au_lname" Type="String" />
				<asp:Parameter Name="au_fname" Type="String" />
				<asp:Parameter Name="phone" Type="String" />
				<asp:Parameter Name="address" Type="String" />
				<asp:Parameter Name="city" Type="String" />
				<asp:Parameter Name="state" Type="String" />
				<asp:Parameter Name="zip" Type="String" />
				<asp:Parameter Name="contract" Type="Boolean" />
				<asp:Parameter Name="au_id" Type="String" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<asp:LinkButton ID="btnAuthorInsert" runat="server" OnClick="LinkButton2_Click">Click Here to Insert New Author</asp:LinkButton>
		<asp:GridView ID="gvwAuthors" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="gvwAuthors_RowDataBound">
			<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			<Columns>
				<asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this author?')"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:BoundField DataField="au_id" HeaderText="Author ID" ReadOnly="True" SortExpression="au_id" />
				<asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
				<asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
				<asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
				<asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
				<asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
				<asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
				<asp:BoundField DataField="zip" HeaderText="Zipcode" SortExpression="zip" />
				<asp:CheckBoxField DataField="contract" HeaderText="On Contract" SortExpression="contract" />
			</Columns>
			<EditRowStyle BackColor="#999999" />
			<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
			<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
			<SortedAscendingCellStyle BackColor="#E9E7E2" />
			<SortedAscendingHeaderStyle BackColor="#506C8C" />
			<SortedDescendingCellStyle BackColor="#FFFDF8" />
			<SortedDescendingHeaderStyle BackColor="#6F8DAE" />
		</asp:GridView>
    </div>	
    	<asp:DetailsView ID="dvwInsertAuthor" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" HeaderText="Insert New Author Information Here:" Height="50px" OnItemCommand="dvwInsertAuthor_ItemCommand" OnItemInserted="dvwInsertAuthor_ItemInserted" Visible="False" Width="279px">
			<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			<CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
			<EditRowStyle BackColor="#999999" />
			<FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
			<Fields>
				<asp:BoundField DataField="au_id" HeaderText="Author ID" ReadOnly="True" SortExpression="au_id" />
				<asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
				<asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
				<asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
				<asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
				<asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
				<asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
				<asp:BoundField DataField="zip" HeaderText="Zipcode" SortExpression="zip" />
				<asp:CheckBoxField DataField="contract" HeaderText="On Contract" SortExpression="contract" />
				<asp:CommandField ShowInsertButton="True" />
			</Fields>
			<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
		</asp:DetailsView>
    </form>
</body>
</html>

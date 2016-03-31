<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorTitles.aspx.cs" Inherits="DataControls_AuthorTitles" MaintainScrollPositionOnPostBack="True"%>

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
		<asp:GridView ID="gvwAuthors" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="gvwAuthors_RowDataBound" OnSelectedIndexChanged="gvwAuthors_SelectedIndexChanged">
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
		<br />
    	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" InsertCommand="INSERT INTO [titles] ([title_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytd_sales], [pubdate], [notes]) VALUES (@title_id, @title, @type, @pub_id, @price, @advance, @royalty, @ytd_sales, @pubdate, @notes)" SelectCommand="SELECT titles.title_id, [title], [type], pub_name, titles.pub_id, [price], [advance], [royalty], [ytd_sales], [pubdate], [notes] FROM [titles] JOIN titleauthor ON titles.title_id = titleauthor.title_id JOIN publishers ON titles.pub_id = publishers.pub_id WHERE au_id = @au_id" UpdateCommand="UPDATE [titles] SET [title] = @title, [type] = @type, [pub_id] = @pub_id, [price] = @price, [advance] = @advance, [royalty] = @royalty, [ytd_sales] = @ytd_sales, [pubdate] = @pubdate, [notes] = @notes WHERE [title_id] = @title_id">
			<DeleteParameters>
				<asp:Parameter Name="title_id" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="title_id" Type="String" />
				<asp:Parameter Name="title" Type="String" />
				<asp:Parameter Name="type" Type="String" />
				<asp:Parameter Name="pub_id" Type="String" />
				<asp:Parameter Name="price" Type="Decimal" />
				<asp:Parameter Name="advance" Type="Decimal" />
				<asp:Parameter Name="royalty" Type="Int32" />
				<asp:Parameter Name="ytd_sales" Type="Int32" />
				<asp:Parameter Name="pubdate" Type="DateTime" />
				<asp:Parameter Name="notes" Type="String" />
			</InsertParameters>
			<SelectParameters>
				<asp:ControlParameter ControlID="gvwAuthors" Name="au_id" PropertyName="SelectedValue" />
			</SelectParameters>
			<UpdateParameters>
				<asp:Parameter Name="title" Type="String" />
				<asp:Parameter Name="type" Type="String" />
				<asp:Parameter Name="pub_id" Type="String" />
				<asp:Parameter Name="price" Type="Decimal" />
				<asp:Parameter Name="advance" Type="Decimal" />
				<asp:Parameter Name="royalty" Type="Int32" />
				<asp:Parameter Name="ytd_sales" Type="Int32" />
				<asp:Parameter Name="pubdate" Type="DateTime" />
				<asp:Parameter Name="notes" Type="String" />
				<asp:Parameter Name="title_id" Type="String" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<br />		
		<h1>
			<asp:Label ID="lblAuthorTitles" runat="server" ></asp:Label>
		</h1>

		<asp:GridView ID="gvwAuthorTitles" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="title_id" ForeColor="#333333" GridLines="None" style="margin-top: 9px">
			<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
				<asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
				<asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
				<asp:TemplateField HeaderText="Publisher" SortExpression="pub_name">
					<EditItemTemplate>
						<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="pub_name" DataValueField="pub_id" SelectedValue='<%# Bind("pub_id") %>'></asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [pub_id], [pub_name] FROM [publishers]"></asp:SqlDataSource>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# Bind("pub_name") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Price" SortExpression="price">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("price", "{0:f2}") %>'></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please enter a Positive Number." ControlToValidate="TextBox1" Display="Dynamic" Text="*" ForeColor="Red" ValueToCompare="0" Operator="GreaterThan" Type="Currency" ></asp:CompareValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# Bind("price", "{0:c}") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Advance" SortExpression="advance">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("advance", "{0:f2}") %>'></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Please enter a Positive Number." ControlToValidate="TextBox3" Display="Dynamic" Text="*" ForeColor="Red" ValueToCompare="0" Operator="GreaterThan" Type="Currency" ></asp:CompareValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label5" runat="server" Text='<%# Bind("advance", "{0:c}") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Royalty" SortExpression="royalty">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("royalty") %>'></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Please enter a Positive Number." ControlToValidate="TextBox4" Display="Dynamic" Text="*" ForeColor="Red" ValueToCompare="0" Operator="GreaterThan" Type="Integer"></asp:CompareValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label6" runat="server" Text='<%# Bind("royalty") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Year-to-Date Sales" SortExpression="ytd_sales">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Please enter a Positive Number." ControlToValidate="TextBox5" Display="Dynamic" Text="*" ForeColor="Red" ValueToCompare="0" Operator="GreaterThan" Type="Integer"></asp:CompareValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label7" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Notes" SortExpression="notes">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("notes") %>' TextMode="MultiLine"></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# Bind("notes") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Publication Date" SortExpression="pubdate">
					<EditItemTemplate>
						<asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("pubdate") %>' VisibleDate='<%# Eval("pubdate") %>'></asp:Calendar>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label4" runat="server" Text='<%# Bind("pubdate", "{0:d}") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
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
		<br />	
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>

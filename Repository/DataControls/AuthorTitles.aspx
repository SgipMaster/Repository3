<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorTitles.aspx.cs" Inherits="DataControls_AuthorTitles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract] FROM [authors]" UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
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
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
			<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
				<asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
				<asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
				<asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
				<asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
				<asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
				<asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
				<asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
				<asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
				<asp:CheckBoxField DataField="contract" HeaderText="contract" SortExpression="contract" />
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
    </form>
</body>
</html>

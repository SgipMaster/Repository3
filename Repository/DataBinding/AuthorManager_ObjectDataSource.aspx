<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorManager_ObjectDataSource.aspx.cs" Inherits="AuthorManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Author Manager Object Data Source</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="background-color: #FFE0C0; height: 100px; width: 601px; padding: 10px">
			<br />
			<asp:Label id="Label1" runat="server" Width="99px" Height="19px">Select Author:</asp:Label>
			<asp:DropDownList id="lstAuthor" runat="server" Width="187px" Height="21px" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="au_fullname" DataValueField="au_id"></asp:DropDownList>
			<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="NewGetAllAuthorNames" TypeName="AuthorAccess"></asp:ObjectDataSource>
		</div>
		<div style="background-color: #E0E0E0; height: 392px; width: 601px; padding: 10px">
			<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="DeleteAuthor" InsertMethod="InsertAuthor" SelectMethod="GetAuthorInfoByID" TypeName="AuthorAccess" UpdateMethod="UpdateAuthor">
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
				<SelectParameters>
					<asp:ControlParameter ControlID="lstAuthor" Name="au_id" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="au_id" Type="String" />
					<asp:Parameter Name="au_lname" Type="String" />
					<asp:Parameter Name="au_fname" Type="String" />
					<asp:Parameter Name="phone" Type="String" />
					<asp:Parameter Name="address" Type="String" />
					<asp:Parameter Name="city" Type="String" />
					<asp:Parameter Name="state" Type="String" />
					<asp:Parameter Name="zip" Type="String" />
					<asp:Parameter Name="contract" Type="Boolean" />
				</UpdateParameters>
			</asp:ObjectDataSource>
			<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="au_id" DataSourceID="ObjectDataSource2" GridLines="None" Height="50px" style="margin-right: 7px" Width="245px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
				<EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
				<Fields>
					<asp:BoundField DataField="au_id" HeaderText="Author ID" ReadOnly="True" SortExpression="au_id" />
					<asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
					<asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
					<asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
					<asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
					<asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
					<asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
					<asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
					<asp:CheckBoxField DataField="contract" HeaderText="Contract" SortExpression="contract" />
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
				</Fields>
				<FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
				<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
				<PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
				<RowStyle BackColor="#DEDFDE" ForeColor="Black" />
			</asp:DetailsView>
		</div>
	</div>
    	
    </form>
</body>
</html>

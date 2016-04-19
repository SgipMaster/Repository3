<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Membership_Admin" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       	<uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
		<h2>Application Users</h2>
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" DataKeyNames="UserName" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
			<Columns>
				<asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" SortExpression="username" />
				<asp:BoundField DataField="Email" HeaderText="Email Address" ReadOnly="True" SortExpression="email" />
				<asp:BoundField DataField="LastActivityDate" HeaderText="Last Activity" ReadOnly="True" SortExpression="LastActivityDate" />
				<asp:TemplateField HeaderText="Is Admin?">
					<EditItemTemplate>
						<asp:CheckBox ID="CheckBox1" runat="server" />
					</EditItemTemplate>
					<ItemTemplate>
						<asp:CheckBox ID="CheckBox1" Enabled="false" runat="server" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField ShowHeader="False">
					<EditItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Update" Text="Update"></asp:LinkButton>
						<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Edit" Text="Change Admin Role"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:ButtonField CommandName="Select" Text="View Profile" />
			</Columns>
		</asp:GridView>
		<h2>Selected User's Profile</h2>
		<table>
			<tr>
				<td>
					First Name:
				</td>
				<td>
					<asp:Label ID="TxtFirstName" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					Last Name:
				</td>
				<td>
					<asp:Label ID="TxtLastName" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					Birth Date:
				</td>
				<td>
					<asp:Label ID="TxtBirthDate" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					Street:
				</td>
				<td>
					<asp:Label ID="TxtStreet" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					City:
				</td>
				<td>
					<asp:Label ID="TxtCity" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					State
				</td>
				<td>
					<asp:Label ID="TxtState" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					Zip Code:
				</td>
				<td>
					<asp:Label ID="TxtZipCode" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
			<tr>
				<td>
					Country:
				</td>
				<td>
					<asp:Label ID="TxtCountry" runat="server" Width="300px"></asp:Label>
				</td>
			</tr>
		</table>
    </div>
    </form>
</body>
</html>

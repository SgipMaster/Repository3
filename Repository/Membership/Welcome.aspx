<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Membership_Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:LoginView ID="LoginView1" runat="server">
			<AnonymousTemplate>
				<h1>You are not logged in. Please log in <a href="Login.aspx">here</a></h1>
			</AnonymousTemplate>
			<RoleGroups>
				<asp:RoleGroup Roles="Admin">
					<ContentTemplate>
						<a href="User.aspx">User.aspx</a>
						<a href="Admin.aspx">Admin.aspx</a>
					</ContentTemplate>
				</asp:RoleGroup>	
				<asp:RoleGroup Roles="User">
					<ContentTemplate>
						<a href="User.aspx">User.aspx</a>
					</ContentTemplate>
				</asp:RoleGroup>
			</RoleGroups>
		</asp:LoginView>
		<asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
    </form>
</body>
</html>

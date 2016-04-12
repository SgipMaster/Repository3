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
				<asp:RoleGroup Roles="User">
					<ContentTemplate>
						<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="User.aspx">User.aspx</asp:HyperLink>
					</ContentTemplate>
				</asp:RoleGroup>
				<asp:RoleGroup Roles="Admin">
					<ContentTemplate>
						<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="User.aspx">HyperLink</asp:HyperLink>
						<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Admin.aspx">HyperLink</asp:HyperLink>
					</ContentTemplate>
				</asp:RoleGroup>
			</RoleGroups>
		</asp:LoginView>
    </div>
    </form>
</body>
</html>

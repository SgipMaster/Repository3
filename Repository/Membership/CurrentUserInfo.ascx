<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CurrentUserInfo.ascx.cs" Inherits="Membership_CurrentUserInfo" %>
<h1>Welcome <asp:LoginName ID="LoginName1" runat="server" />!</h1>
<a href="Welcome.aspx">Go Back to Welcome Page</a>
<h2>Change Your Password</h2>
<asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
	<CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
	<ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
	<ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
	<InstructionTextStyle Font-Italic="True" ForeColor="Black" />
	<PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
	<TextBoxStyle Font-Size="0.8em" />
	<TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:ChangePassword>
<h2>View or Update Your Profile</h2>
<table>
	<tr>
		<td>
			First Name:
		</td>
		<td>
			<asp:TextBox ID="TxtFirstName" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Last Name:
		</td>
		<td>
			<asp:TextBox ID="TxtLastName" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Birth Date:
		</td>
		<td>
			<asp:TextBox ID="TxtBirthDate" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Street:
		</td>
		<td>
			<asp:TextBox ID="TxtStreet" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			City:
		</td>
		<td>
			<asp:TextBox ID="TxtCity" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			State
		</td>
		<td>
			<asp:TextBox ID="TxtState" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Zip Code:
		</td>
		<td>
			<asp:TextBox ID="TxtZipCode" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Country:
		</td>
		<td>
			<asp:TextBox ID="TxtCountry" runat="server" Width="300px"></asp:TextBox>
		</td>
	</tr>
</table>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Profile" />

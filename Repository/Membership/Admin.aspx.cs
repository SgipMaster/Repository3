using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_Admin : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		GridView1.DataSource = Membership.GetAllUsers();

		if (!IsPostBack)
			GridView1.DataBind();
		
	}

	protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if(e.Row.RowType == DataControlRowType.DataRow)
		{
			string username = DataBinder.Eval(e.Row.DataItem, "UserName").ToString();
			CheckBox cbx = (CheckBox)e.Row.FindControl("CheckBox1");

			if (Roles.IsUserInRole(username, "Admin"))
				cbx.Checked = true;
			else
				cbx.Checked = false;
		}
	}

	protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
	{
		//set the edit index of te gridview to the index of the row that is clicked
		GridView1.EditIndex = e.NewEditIndex;
		GridView1.DataBind();
	}

	protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
	{
		//set edit index back to -1 and rebind
		GridView1.EditIndex = -1;
		GridView1.DataBind();
	}

	protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		//retrieve username from row being updated from the datakeys collection
		string username = GridView1.DataKeys[e.RowIndex].Value.ToString();
		CheckBox cbx = (CheckBox)GridView1.Rows[e.RowIndex].FindControl("CheckBox1");

		//use roles class to check whether user is in role
		if ( Roles.IsUserInRole(username, "Admin") && !cbx.Checked)
			Roles.RemoveUserFromRole(username, "Admin");
		else if (!Roles.IsUserInRole(username, "Admin") && cbx.Checked)
			Roles.AddUserToRole(username, "Admin");

		GridView1.EditIndex = -1;
		GridView1.DataBind();
	}

	protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
	{
		//retrieve profile of user that was selected and display profile values below
		string username = GridView1.SelectedDataKey.Value.ToString();

		//retrieve profile using get profile method
		ProfileCommon pc = Profile.GetProfile(username);

		//set values of the labels
		TxtFirstName.Text = pc.FirstName;
		TxtLastName.Text = pc.LastName;
		TxtBirthDate.Text = pc.Birthday.ToShortDateString();
		TxtStreet.Text = pc.Address.Street;
		TxtCity.Text = pc.Address.City;
		TxtState.Text = pc.Address.State;
		TxtZipCode.Text = pc.Address.Zip;
		TxtCountry.Text = pc.Address.Country;

		//if you want to change a profile calue for another userm be sure to call the save method
		//pc.FirstName = "bob";
		//pc.Save(); 

	}
}
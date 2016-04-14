using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_CurrentUserInfo : System.Web.UI.UserControl
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if(Page.User.Identity.IsAuthenticated && !IsPostBack)
		{
			TxtFirstName.Text = Profile.FirstName;
			TxtLastName.Text = Profile.LastName;
			TxtBirthDate.Text = Profile.Birthday.ToShortDateString();
			TxtStreet.Text = Profile.Address.Street;
			TxtCity.Text = Profile.Address.City;
			TxtState.Text = Profile.Address.State;
			TxtZipCode.Text = Profile.Address.Zip;
			TxtCountry.Text = Profile.Address.Country;
		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Profile.FirstName = TxtFirstName.Text;
		Profile.LastName = TxtLastName.Text;
		Profile.Birthday = Convert.ToDateTime(TxtBirthDate.Text);
		Profile.Address.Street = TxtStreet.Text;
		Profile.Address.City = TxtCity.Text;
		Profile.Address.State = TxtState.Text;
		Profile.Address.Zip = TxtZipCode.Text;
		Profile.Address.Country = TxtCountry.Text;
	}
}
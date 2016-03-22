using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebForm_CurrencyConverter : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (this.IsPostBack == false)
		{
			Currency.Items.Add(new ListItem("Euro", "0.85"));
			Currency.Items.Add(new ListItem("Japanese Yen", "110.33"));
			Currency.Items.Add(new ListItem("Canadian Dollar", "1.2"));

			Graph.Visible = false;
		}
	}

	protected void Convert_ServerClick(object sender, EventArgs e)
	{
		decimal oldAmount;
		bool success = Decimal.TryParse(US.Value, out oldAmount);

		//test if input is a number or not
		if ((oldAmount <= 0) || (success == false))
		{
			Result.Style["color"] = "Red";
			Result.InnerText = "Please enter a positive number!";
		}
		else
		{
			Result.Style["color"] = "Black";

			//Retreive selected ListItem object by its index number.
			ListItem item = Currency.Items[Currency.SelectedIndex];

			decimal newAmount = oldAmount * Decimal.Parse(item.Value);
			Result.InnerText = oldAmount.ToString() + " U.S. Dollars is " + newAmount.ToString() + " " + item.Text;
		}
			
	}

	protected void ShowGraph_ServerClick(object sender, EventArgs e)
	{
		Graph.Src = "pic" + Currency.SelectedIndex.ToString() + ".png";
		Graph.Visible = true;
	}

	protected void ResponseRedirect_ServerClick(object sender, EventArgs e)
	{
		Response.Redirect("SecondPage.aspx");
	}

	protected void ServerTransfer_ServerClick(object sender, EventArgs e)
	{
		Server.Transfer("SecondPage.aspx");
	}


}
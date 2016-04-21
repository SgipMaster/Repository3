using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GreetingCardMaker
{

	public partial class GreetingCardMaker : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (this.IsPostBack == false)
			{
				// Set font options.
				lstFontName.Items.Add("Times New Roman");
				lstFontName.Items.Add("Arial");
				lstFontName.Items.Add("Verdana");
				lstFontName.Items.Add("Tahoma");

				// Set border style options by adding a series of
				// ListItem objects.
				ListItem item = new ListItem();

				// The item text indicates the name of the option.
				item.Text = BorderStyle.None.ToString();

				// The item value records the corresponding integer
				// from the enumeration. To obtain this value, you
				// must cast the enumeration value to an integer,
				// and then convert the number to a string so it
				// can be placed in the HTML page.
				item.Value = ((int)BorderStyle.None).ToString();

				// Add the item.
				lstBorder.Items.Add(item);

				// Now repeat the process for two other border styles.
				item = new ListItem();
				item.Text = BorderStyle.Double.ToString();
				item.Value = ((int)BorderStyle.Double).ToString();
				lstBorder.Items.Add(item);

				item = new ListItem();
				item.Text = BorderStyle.Solid.ToString();
				item.Value = ((int)BorderStyle.Solid).ToString();
				lstBorder.Items.Add(item);

				// Select the first border option.
				lstBorder.SelectedIndex = 0;
			}
		}

		private void UpdateCard()
		{
			// Update the color.
			pnlCard.BackColor = Color.FromName(lstBackColor.SelectedItem.Text);

			// Update the font.
			lblGreeting.Font.Name = lstFontName.SelectedItem.Text;

			try
			{
				if (Int32.Parse(txtFontSize.Text) > 0)
				{
					lblGreeting.Font.Size =
						FontUnit.Point(Int32.Parse(txtFontSize.Text));
				}
			}
			catch
			{
				// Use error handling to ignore invalid value.
			}

			// Update the border style.
			pnlCard.BorderStyle = (BorderStyle)Int32.Parse(lstBorder.SelectedItem.Value);

			foreach (ListItem li in picList.Items)
			{
				//check is li is selected
				if (li.Selected)
				{
					//instatiate a new image control and add it to the placeholder
					System.Web.UI.WebControls.Image i = new System.Web.UI.WebControls.Image();
					i.ImageUrl = li.Value;
					i.Height = 125;
					picHolder.Controls.Add(i);
				}
			}
			// Set the text
			lblGreeting.Text = txtGreeting.Text;

			if (nameBox.Text != "")
				fromlabel.Text = "From: " + nameBox.Text;
			else
				fromlabel.Text = null;

		}

		protected void ControlChanged(object sender, EventArgs e)
		{
			UpdateCard();
		}
	
		protected void cmdUpdate_Click(object sender, EventArgs e)
		{
			UpdateCard();
		}
	}
}

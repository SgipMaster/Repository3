using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_Sharp_ProductCatalogTest : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		//create the new ProductCatalog object
		ProductCatalog catalog = new ProductCatalog();

		//adds the three products to the object
		catalog.AddProduct("The Scorcher", 1000, "microwave.jpg");
		catalog.AddProduct("Buns Burner", 700, "toaster.jpg");
		catalog.AddProduct("The Whirlpool", 500, "mixer.jpg");

		//displays the catalog
		Response.Write(catalog.GetCatalogHtml());

		//gets the highest priced item and shows it
		Product retreivedProdect = catalog.GetHighPricedProduct();
		TaxableProduct p = (TaxableProduct)retreivedProdect;
		Response.Write("The most expensive prodct is " + p.Name + " at a price of $" + p.TotalPrice);

	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TaxableProduct
/// </summary>
public class TaxableProduct : Product //means that the TaxableProduct inherits from Product
{
	//Private member variable for taxrate
	private decimal taxRate = 1.15M;

	//public propertythat provides access to the TotalPrice (price + tax)
	public decimal TotalPrice
	{
		get
		{ return taxRate * Price; }
	}

	//Overridden from Product 
	public override string GetHtml()
	{
		string htmlString;
		htmlString = "<h1>" + Name + "</h1><br>";
		htmlString += "<h3>Costs: " + TotalPrice.ToString() + "</h3><br>";
		htmlString += "<img src='" + ImageUrl + "' />";
		htmlString += "<hr />";
		return htmlString;
	}
	
	//Accept the 3 required parameters and pass them to the Product constructor (base)
	public TaxableProduct(string name, decimal price, string imageUrl) : base(name, price, imageUrl)
	{ }
}
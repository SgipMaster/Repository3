using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductCatalog
/// </summary>
public class ProductCatalog
{
	//Creates private generic list to put taxable products into
	private List<TaxableProduct> products = new List<TaxableProduct>();

	//adds product to the list
	public void AddProduct(string name, decimal price, string imageUrl)
	{
		TaxableProduct product = new TaxableProduct(name, price, imageUrl);
		products.Add(product);
	}

	//return the Highest Priced Item in the list
	public Product GetHighPricedProduct()
	{
		//placeholders
		decimal highPrice = 0;
		Product highPricedProduct = null;

		//loop through list
		foreach (Product p in products)
		{
			//check to see of price of product is higher than the current high price
			if (p.Price > highPrice)
			{
				highPrice = p.Price;
				highPricedProduct = p;
			}
		}

		//return the high priced product
		return highPricedProduct;
	}

	//invokes the getHtml function on all products in the list
	public string GetCatalogHtml()
	{
		//placeholder
		string cataloghtml = null;
		
		//loops through the list
		foreach (Product p in products)
		{
			//run the getGtml
			cataloghtml += p.GetHtml();
		}
		return cataloghtml;
	}

	public ProductCatalog()
	{
		//
		// TODO: Add constructor logic here asdf
		//
	}
}
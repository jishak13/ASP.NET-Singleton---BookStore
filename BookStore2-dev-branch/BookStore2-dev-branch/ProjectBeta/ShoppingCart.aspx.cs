using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBeta
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        List<Products> cart = new List<Products>();
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = (List<Products>)Session["cart"];
            foreach (Products p in cart)
            {
                lblCart.Text += p+"<br>";
            }
        }
       
    }
}
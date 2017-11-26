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
        Cart cart;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            //gvCart.DataSource = Cart.Instance.Items;
            //gvCart.DataBind();
            //lblCartCount.Text = Cart.Instance.Items.Count.ToString();
            cart = (Cart)Session["cart"];
            gvCart.DataSource = cart.Items;
            gvCart.DataBind();
            lblCartCount.Text = cart.Items.Count.ToString();
      
         }
       public void gvCart_RowCommand(object sender, EventArgs e)
        {

        }
        public void gvCart_RowDataBound(object sender,GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                //e.Row.Cells[4].Text = $"Total: {Cart.Instance.GetSubTotal():C}";
                e.Row.Cells[4].Text = $"Total: {cart.GetSubTotal():C}";
            }
        }
        public void UpdateQuantity(object sender,GridViewCommandEventArgs e)
        {

        }
    }
}
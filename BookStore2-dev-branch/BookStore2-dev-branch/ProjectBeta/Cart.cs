using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    public partial class Cart
    {
        public List<CartItem> Items { get; private set; }



        public static readonly Cart Instance;
       static Cart()
        {
            if (HttpContext.Current.Session["cart"] == null)
            {
                Instance = new Cart();
                Instance.Items = new List<CartItem>();
                HttpContext.Current.Session["cart"] = Instance;
            }
            else
            {
                Instance = (Cart)HttpContext.Current.Session["cart"];
            }
        }
        protected Cart() { }

        public void AddItem(Products product)
        {
            CartItem newItem = new CartItem(product);

            if (Items.Contains(newItem))
            {
                foreach(CartItem item in Items)
                {
                    if (item.Equals(newItem))
                    {
                        item.Quantity++;
                        return;
                    }
                }
            }
            else
            {
                newItem.Quantity = 1;
                Items.Add(newItem);
            }
        }

        public void SetItemQuantity(Products prod, int quantity)
        {
            if(quantity == 0)
            {
                RemoveItem(prod);
                return;
            }

            CartItem updatedItem = new CartItem(prod);
            foreach(CartItem item in Items)
            {
                if (Items.Equals(updatedItem))
                {
                    item.Quantity = quantity;
                    return;
                }
            }

            
        }

        public void RemoveItem(Products prod)
        {
            CartItem removedItem = new CartItem(prod);
            Items.Remove(removedItem);
        }
        public decimal GetSubTotal()
        {
            decimal subTotal = 0;
            foreach(CartItem item in Items)
                subTotal += Convert.ToDecimal(item.TotalPrice);

            return subTotal;
            
        }

    }
}
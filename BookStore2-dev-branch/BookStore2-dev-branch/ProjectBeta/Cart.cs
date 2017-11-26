using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    /// <summary>
    /// The Shopping Cart Object Class
    /// </summary>
    public partial class Cart
    {
        /// <summary>
        /// A List of all Cart Items in this shopping cart
        /// </summary>
        public List<CartItem> Items { get; private set; }


        /// <summary>
        /// The instance of a shopping cart
        /// </summary>
        //public static readonly Cart Instance;
        
        /// <summary>
        /// Static Constructor for a Shopping Cart. If the current Session
        /// already has a cart object, it is set to this Cart's instance object. 
        /// Else this creates a new instance of Shopping Cart, instantiates it Items objects
        /// And Creates a session and assigns it this instance.
        /// </summary>
       static Cart()
        {
            //if (HttpContext.Current.Session["cart"] == null)
            //{
            //    Instance = new Cart();
            //    Instance.Items = new List<CartItem>();
            //    HttpContext.Current.Session["cart"] = Instance;
            //}
            //else
            //{
            //    Instance = (Cart)HttpContext.Current.Session["cart"];
            //}
        }
        /// <summary>
        /// Protected Default Constructor
        /// </summary>
        public Cart() {
            Items = new List<CartItem>();

        }

        /// <summary>
        /// Takes a product and adds it to the Items list
        /// </summary>
        /// <param name="product">The Product that is to be added.</param>
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

        /// <summary>
        /// Sets the quantity for an item.
        /// </summary>
        /// <param name="prod">The product whose quantity is being set</param>
        /// <param name="quantity">The quantity of the product in the Shopping Cart</param>
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

        /// <summary>
        /// Removes an item from the Items list. 
        /// </summary>
        /// <param name="prod">The item to be removed from the list</param>
        public void RemoveItem(Products prod)
        {
            CartItem removedItem = new CartItem(prod);
            Items.Remove(removedItem);
        }

        /// <summary>
        /// Calculates the subtotal.
        /// </summary>
        /// <returns>And returns the subtotal</returns>
        public decimal GetSubTotal()
        {
            decimal subTotal = 0;
            foreach(CartItem item in Items)
                subTotal += Convert.ToDecimal(item.TotalPrice);

            return subTotal;
            
        }

        public decimal GetShipping()
        {
            return ((decimal).01 * GetSubTotal()) * 100;
        }

        public decimal GetTax()
        {
            return (GetSubTotal() * (decimal).0675);
        }

        public decimal GetTotal()
        {
            return GetSubTotal() + GetShipping() + GetTax();
        }

    }
}
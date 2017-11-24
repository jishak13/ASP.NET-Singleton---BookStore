using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    /// <summary>
    /// Public class for Cart Item Objects
    /// Uses IEquatable interface to compare different cart Items
    /// </summary>
    public class CartItem: IEquatable<CartItem>
    {
        /// <summary>
        /// Private instance variables
        /// </summary>
        Products product;
        int quantity;
        /// <summary>
        /// Public read and write Properties
        /// </summary>
        public Products Product { get => product; set => product = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        /// <summary>
        /// Public read only variables
        /// </summary>
        public string Title { get { return Product.Title; } }
        public string Author { get { return Product.Author; } }
        public decimal UnitPrice { get { return Convert.ToDecimal(Product.Price); } }
        public decimal TotalPrice { get { return Convert.ToDecimal(Product.Price) * Quantity; } }

        /// <summary>
        /// Default Contructor
        /// </summary>
        public CartItem() { }
        /// <summary>
        /// Contructor for Cart Item that creates a Cart Item.
        /// </summary>
        /// <param name="prod">The Product to be added to the Cart</param>
        public CartItem(Products prod)
        {
            Product = prod;
            
        }
        /// <summary>
        /// Override to string to print. Title       Author     PRice     Quantity
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return $"{Product.Title}\t\t\t {Product.Author}\t\t {Product.Price}\t{Quantity}";
        }
        /// <summary>
        ///Method that tests whether two Cart Items are equal
        /// </summary>
        /// <param name="item">The Item that is being compared</param>
        /// <returns>If the items are equal, return true. Else if they arent equal return false.</returns>
        public bool Equals(CartItem item)
        {
            return item.Product.Title == Product.Title;
        }
    }
}
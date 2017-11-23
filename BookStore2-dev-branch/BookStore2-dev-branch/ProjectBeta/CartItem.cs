using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    public class CartItem: IEquatable<CartItem>
    {
        Products product;
        int quantity;

        public Products Product { get => product; set => product = value; }
        public string Title { get { return Product.Title; } }
        public string Author { get { return Product.Author; } }
        public int Quantity { get => quantity; set => quantity = value; }
        public decimal UnitPrice { get { return Convert.ToDecimal(Product.Price); } }
        public decimal TotalPrice { get { return Convert.ToDecimal(Product.Price) * Quantity; } }
        public CartItem() { }
        public CartItem(Products prod)
        {
            Product = prod;
            
        }

        public override string ToString()
        {
            return $"{Product.Title}\t\t\t {Product.Author}\t\t {Product.Price}\t{Quantity}";
        }
        public bool Equals(CartItem item)
        {
            return item.Product.Title == Product.Title;
        }
    }
}
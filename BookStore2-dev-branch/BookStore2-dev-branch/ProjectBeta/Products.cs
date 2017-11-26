using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    /// <summary>
    /// Searlizable tag for setting products to a gridView
    /// </summary>
    [Serializable]
    
    ///Public Class for PRoducts Objects
    public class Products
    {
        /// <summary>
        /// Private variables
        /// </summary>
        private string isbn;
        private string author;
        private string title;
        private string course;
        private string code;
        private string price;

        /// <summary>
        /// Constructor for a product taking in all variables
        /// </summary>
        /// <param name="isbn">The ISBN of the product.</param>
        /// <param name="author">The Author of the product</param>
        /// <param name="title">The Title of the product</param>
        /// <param name="course">The  Course for this product</param>
        /// <param name="code">The Code for this product</param>
        /// <param name="price">The Price for this product</param>
        public Products(string isbn, string author, string title, string course, string code, string price)
        {
            this.Isbn = isbn;
            this.Author = author;
            this.Title = title;
            this.Course = course;
            this.Code = code;
            this.Price = price;
        }

        /// <summary>
        /// Public property for the ISBN
        /// </summary>
        public string Isbn { get => isbn; set => isbn = value; }
        /// <summary>
        /// Public property for the Author
        /// </summary>
        public string Author { get => author; set => author = value; }
        /// <summary>
        /// Public property for the Title
        /// </summary>
        public string Title { get => title; set => title = value; }
        /// <summary>
        /// Public property for the Course
        /// </summary>
        public string Course { get => course; set => course = value; }
        /// <summary>
        /// Public property for the Code
        /// </summary>
        public string Code { get => code; set => code = value; }
        /// <summary>
        /// Public property for the Price
        /// </summary>
        public string Price { get => price; set => price = value; }

        /// <summary>
        /// Override the ToString to Print all the properties of the book.
        /// </summary>
        /// <returns>Returns the String output</returns>
        public override string ToString()
        {
            return $"{Title}";
        }
    }
}
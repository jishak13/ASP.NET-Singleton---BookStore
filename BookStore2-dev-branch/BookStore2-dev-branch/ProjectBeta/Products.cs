using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectBeta
{
    [Serializable]
    public class Products
    {
        private string isbn;
        private string author;
        private string title;
        private string course;
        private string code;
        private string price;

        public Products(string isbn, string author, string title, string course, string code, string price)
        {
            this.Isbn = isbn;
            this.Author = author;
            this.Title = title;
            this.Course = course;
            this.Code = code;
            this.Price = price;
        }

        public string Isbn { get => isbn; set => isbn = value; }
        public string Author { get => author; set => author = value; }
        public string Title { get => title; set => title = value; }
        public string Course { get => course; set => course = value; }
        public string Code { get => code; set => code = value; }
        public string Price { get => price; set => price = value; }

        public override string ToString()
        {
            return $"{Title}\t{Author}\t{Isbn}\t{Course}\t{Code}\t{Price}<br>";
        }
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace FormsApp_CoctailsDB
{
    class BuilderCoctails
    {
        ArrayList parts = new ArrayList();//здесь хранятся продукты
        public void Add(string part)
        {
            string[] products = System.IO.File.ReadAllLines(@"F:\FormsApp_CoctailsDB\products.txt");
        }
        public void Show()//проходит по массиву
        {
            Console.WriteLine("Coctails parts - ");
            foreach(string part in parts)
            Console.WriteLine(part);
        }
        private BuilderCoctails coctail = new BuilderCoctails();
        public override void BuildCoctail()//создает коктейль
        {
            coctail.Add("wine, juice, spices, orange");
        }
        public override BuilderCoctails GetProduct()//возвраает готовый коктейль
        {
            return coctail;
        }
    }
}



using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FormsApp_CoctailsDB
{
    class Director//конструирует обьект
    {
        public void Construct(AbstrBuilder builder)
        {
            builder.BuildCoctail();
        }
    }
}

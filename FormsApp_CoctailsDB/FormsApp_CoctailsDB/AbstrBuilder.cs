using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace FormsApp_CoctailsDB
{
    abstract class AbstrBuilder//абстрактный класс строителя
    {
        public abstract void BuildCoctail();
        public abstract BuilderCoctails GetProduct();
    }
}

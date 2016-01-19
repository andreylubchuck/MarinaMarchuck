//Marchuk M/ gr/331
using namespace  FormsApp_CoctailsDB;


public static void Main()
{
    Director director = new Director();//создает обьект класса Director
    BuilderCoctails buildCoct = new BuildCoctail();//создает обьект класса BuilderCoctails
    director.Construct(buildCoct);//передаем в метод класса Director, чтобы сосздать обьект коктейль
    BuilderCoctails coct = buildCoct.GetProduct();//
    coct.Show();//показывает содержимое коктейля
    Console.Read();
}
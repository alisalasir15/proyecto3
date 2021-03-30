using System;
using System.Collections.Generic;

/* Crear una nueva carpeta
- Ejecuta el comando 
    dotnet new console
  esto creará un nuevo proyecto de CSharp
- Compila el proyecto
    dotnet build
- Ejecuta el proyecto
    dotnet run
*/

namespace Camiseta
{
    class Program
    {
	  static void Main(string[] args)
        {
            string secretString =   "TmF2" + "ZWdhIH" + "Bvci" + 
                                    "AgaH" + "R0cDov" + "L3d3" +
                                    "dy5taWNyb3NvZnQuY29tL1NwYW5pc2" +
                                    "gvTVNETi9Fc3R1ZGlhbnRlcyB5IGRl" + 
                                    "c2N1YnJlIHR1IHNpdGlvICE=";
            secretString        =   "TmF2ZWdhIHBv" + "ciAgaHR0cHM6L" +
                                    "y93d3cueW91d" + "HViZS5jb20vam" +
                                    "F2aXRlcmFuIH" + "kgZGVzY3VicmU" +
                                    "gbWlzIHbDrWR" + "lb3Mu";



            Console.WriteLine(secretString);
            byte[] theBytes = Convert.FromBase64String(secretString);
            char[] theChars = Encoding.ASCII.GetChars(theBytes);
            Console.WriteLine(new string(theChars));
            Console.ReadLine();
        }
    }
}

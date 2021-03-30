using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace CSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            string secretString =   "TmF2ZWdhIHBv" + "ciAgaHR0cHM6L" +
                                    "y93d3cueW91d" + "HViZS5jb20vam" +
                                    "F2aXRlcmFuIH" + "kgZGVzY3VicmU" +
                                    "gbWlzIHbDrWR" + "lb3Mu";

            Console.WriteLine(secretString);
            byte[] theBytes = Convert.FromBase64String(secretString);
            char[] theChars = Encoding.ASCII.GetChars(theBytes);
            Console.WriteLine(new String(theChars));
            Console.ReadLine();
        }
    }
}

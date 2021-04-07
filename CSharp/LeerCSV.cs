/**
 *
 * @author Javier Terán González 02/04/2021
 * Lectura de un archivo CSV

 * dotnet build
 * dotnet run
 */
using System;
namespace CSharp
{
    class LeerCSV
    {
        static void Main(string[] args)
        {
            // path to the csv file
            string path = "./01LeerCSV.csv";

            string[] lines = System.IO.File.ReadAllLines(path);
            foreach(string line in lines) {
                string[] columns = line.Split(';');
                Console.WriteLine (columns[0] + " - "  + columns[4] + " - " + columns[5]);
            }
        }
    }
}



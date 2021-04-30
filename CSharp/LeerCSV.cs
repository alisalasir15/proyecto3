/**
 *
 * @author Javier Terán González 02/04/2021
 * Lectura de un archivo CSV
 
 * Instalar C# en linux.
 *  sudo snap dotnet-sdk --classic
 * https://docs.microsoft.com/en-us/dotnet/core/install/linux-snap#:~:text=Snap%20packages%20for%20the.NET%20SDK%20are%20all%20published,corresponding%20runtime.%20The%20following%20table%20lists%20the%20channels%3A
 
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



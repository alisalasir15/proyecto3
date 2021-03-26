import csv

from os import listdir
for cosa in listdir("."):
    print (cosa)


with open('./Temp/01LeerCSV.csv') as File:
    misDatosReunion = csv.DictReader(File,delimiter=';')
    for asistente in misDatosReunion:
        print (asistente)
        print ("                 "   + asistente['Nombre'] + "                 "   + asistente['Correo'])
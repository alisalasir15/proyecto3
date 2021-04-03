# Javier Terán
# LEctura de fichero CSV
# 03/04/2021
import csv
with open ('./Python/01LeerCSV.csv') as File:
    misDatosReunion = csv.DictReader (File, delimiter=';')
    for asistente in misDatosReunion:
        print(asistente['Nombre'] + ' - ' + asistente['Correo'] + ' - ' + asistente['Rol'])
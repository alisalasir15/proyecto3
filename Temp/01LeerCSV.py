import csv
 
resultado = []
with open('01LeerCSV.csv') as File:
    misDatos = csv.DictReader(File,delimiter=',')
    for file in misDatos:
        results.append(fila)
    print resultado
# Código para leer un archivo .csv y mostrar los datos de determinadas columnas
# Javier Terán
# 28/03/2021 
#Esto funciona en ruta windows
$ArchivoReunion  = $env:USERPROFILE +"\documents\GitHub\Proyecto3\Powershell\01LeerCSV.csv"
#Esto funciona en ruta linux
#$ArchivoReunion  = "/home/javiteran/GitHub/proyecto3-1/Powershell/01LeerCSV.csv"
#Utilizando variables intermedias
$misDatosReunion = Import-Csv $ArchivoReunion -Delimiter ";"
foreach ($asistente in $misDatosReunion) {
    Write-Host ($asistente.Nombre + "---" + $asistente.Rol + "--- " + $asistente.Correo)
}


#Sin utilizar variables intermedias y utilizando pipes/tuberías
Import-Csv $ArchivoReunion -Delimiter ';' |ForEach-Object {Write-Host ($_.Nombre + " **** " + $_.Correo)}
## Leer fichero 

$RutaArchivos  = $env:USERPROFILE +"\documents\GitHub\Proyecto3\Temp\"
$ArchivoReunion = $RutaArchivos + "01LeerCSV.csv"

$misDatosReunion=Import-Csv $ArchivoReunion -Delimiter ';'
foreach ($asistente in $misDatosReunion){
    Write-Host ($asistente.Nombre + "      " + $asistente.Correo)
}

$TodosLosNombres = "" 
$TodosLosCorreos = ""
Import-Csv $ArchivoReunion -Delimiter ';' | 
    ForEach-Object {
        $TodosLosNombres += " +++ " + $_.Nombre
        $TodosLosCorreos += " +++ " + $_.Correo
    }
Write-Host($TodosLosNombres)
Write-Host($TodosLosCorreos)

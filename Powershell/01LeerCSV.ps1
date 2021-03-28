

$RutaArchivos  = $env:USERPROFILE +"\documents\GitHub\Proyecto3\Powershell\"
$ArchivoReunion = $RutaArchivos + "01LeerCSV.csv"

$misDatosReunion = Import-Csv $ArchivoReunion -Delimiter ";"
foreach ($asistente in $misDatosReunion) {
    Write-Host ($asistente.Nombre + "---" + $asistente.Rol + "--- " + $asistente.Correo)
}

$TodosLosNombres = "" 
$TodosLosCorreos = ""
Import-Csv $ArchivoReunion -Delimiter ';' | 
    ForEach-Object {
        $TodosLosNombres += " +++ " + $_.Nombre
        $TodosLosCorreos += " +++ " + $_.Correo
    }

    Write-Host ($TodosLosNombres)
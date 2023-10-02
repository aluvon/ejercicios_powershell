Clear-Host
$personas = import-CSV usuarios.csv
foreach($x in $personas) {
    Write-Host "Plantilla turno día: $($x.nombre) $($x.apellidos) $($x.grupo)"
}
Write-Host "`n"

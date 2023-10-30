Clear-Host
Write-Host "Crearemos el perfil móvil para cada usuario" 


# Verificando si el empleado pertenece al departamento Personal y le ponemos el perfil móvil.
$datos = Import-CSV C:\script4\empleados.csv -Delimiter ";"
foreach($x in $datos) {
    $nombre = "$($x.nombre).$($x.apellido)"
    $depto = "$($x.departamento)"

    if ($depto -ieq "PERSONAL"){
    Write-Host $nombre
    Set-ADUser -Identity $nombre -ProfilePath \\Empresa-dc1\Empresa_user$\$nombre  
    }
}

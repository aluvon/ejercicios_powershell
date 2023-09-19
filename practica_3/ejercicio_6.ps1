Clear-Host
Write-Host "Soy un buscador de archivos o directorios."
$busqueda = Read-Host "Ingresa el nombre "
$A = ($existe = Test-Path $busqueda) -and ($es_directorio = Test-Path $busqueda -PathType container)
$B = ($existe -eq $true) -and ($es_directorio -eq $true)
$listado = Get-ChildItem $busqueda -Recurse
If ($A -eq $B){
    Write-Host "`n"
    Write-Host "Los subdirectorios son:" $listado
}
Else{
    Write-Host "Fichero o Directorio no encontrado"
}
Write-Host "`n"
Write-Host "Fin del script."
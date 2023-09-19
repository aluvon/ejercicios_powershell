Clear-Host
Write-Host "Soy un buscador de archivos o directorios."
$busqueda = Read-Host "Ingresa el nombre "
$A = ($existe = Test-Path $busqueda) -and ($es_directorio = Test-Path $busqueda -PathType container)
$B = ($existe -eq $true) -and ($es_directorio -eq $true)
If ($A -eq $B){
    Write-Host "`n"
    Write-Host "El contenido es:" Get-Content "$busqueda"
    Write-Host "Los subdirectorios son:" Get-ChildItem $busqueda -Recurse
}
Else{
    Write-Host "Fichero o Directorio no encontrado"
}
Write-Host "`n"
Write-Host "Fin del script."
Clear-Host
Write-Host "Soy un buscador de archivos o directorios."
$busqueda = Read-Host "Ingresa el nombre "
$A = ($existe = Test-Path $busqueda) -and ($directorio = Test-Path $busqueda -PathType container)
$B = ($existe -eq $true) -and ($directorio -eq $true)
If ($A -eq $B){
    Write-Host "`n"
    Write-Host "Tus resultados de búsqueda son los siguientes" Get-ChildItem $busqueda -Recurse
}
Else{
    Write-Host "Fichero o Directorio no encontrado"
}
Write-Host "`n"
Write-Host "Fin del script."
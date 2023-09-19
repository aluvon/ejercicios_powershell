Clear-Host
Write-Host "Soy un buscador de archivos o directorios."
$busqueda = Read-Host "Ingresa el nombre y comprobare su existencia. En caso de ser un archivo, no olvides colocar su extensión"
Write-Host "`n"
$respuesta = Test-Path $busqueda
Write-Host "Resultado:" $respuesta
Write-Host "`n"
Write-Host "Fin del script."
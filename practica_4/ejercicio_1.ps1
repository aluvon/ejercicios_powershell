Clear-Host
Write-Host "En este script colocarás tu nombre y lo repetiré según el número que ingreses."
$nombre = Read-Host "Ingresa tu nombre"
[int]$numero = Read-Host "Ingresa un número entero"
[int]$a = $numero
Write-Host "`n"
while ($numero -gt 0) {
    Write-Host $nombre
    $numero = $numero - 1
}
Clear-Host
Write-Host "Hola, te mostrare cada uno de tus años por pantalla."
[int]$numero = Read-Host "Ingresa tu edad"
Write-Host "`n"

[int]$a = 1
do {
    Write-Host $a
    $a++
}
while ($a -le $numero)
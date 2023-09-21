Clear-Host
Write-Host "Hola, te pediré un número y realizaré una cuenta regresiva del mismo."
[int]$numero = Read-Host "Ingresa un numero entero y positivo"
Write-Host "`n"

for ($a = $numero; ($numero %2 -eq 0) -and ($a -ge 0); $a--)
{
     Write-Host $a","
}
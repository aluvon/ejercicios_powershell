Clear-Host
Write-Host "Hola, te pediré un número entero y positivo, luego te mostraré los números impares."
[int]$numero = Read-Host "Ingresa un numero entero y positivo"
Write-Host "`n"

for ($a = 1; $a -le $numero; $a=$a+2)
{
     Write-Host -NoNewline $a","
}
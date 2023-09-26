Clear-Host
Write-Host "Hola, te mostraré la tabla de multiplicar según el número que ingreses."
[int]$numero = Read-Host "Ingresa un numero"
Write-Host "`n"

for ($a = 0; ($a -le 10); $a++)
{
     $resultado = $numero * $a
     Write-Host $numero * $a "=" $resultado
}
Clear-Host
Write-Host "Te pediré un número para mostrarlo la cantidad de veces"
$numero = Read-Host "Ingresa un número"
Write-Host "`n"

for ($a = 1; ($a -le $numero); $a++)
{
    Write-Host "`n"
         for ($j = 1; ($j -le $a); $j++)
         {
                  Write-Host -NoNewline "*"
         }
}


<#
$fila = Read-Host "Ingresa un número"
for ($fila = 1; ($fila -le $altura); $a++)
{
    Write-Host "`n"
         for ($columna = 1; ($columna -le $fila); $columna++)
         {
                  Write-Host -NoNewline "*"
         }
         Write-Host "`n"
}
#>
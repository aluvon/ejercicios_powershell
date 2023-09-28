Clear-Host
Write-Host "Te pediré un número y te mostraré un triángulo rectángulo"
[int]$altura = Read-Host "Ingresa un número"
Write-Host "`n"

$total = $altura*2

for ($fila = 1; $fila -le $total; $fila += 2)
{
    Write-Host "`n"
         for ($j = $fila; $j -ge 1; $j -= 2)
         {
                  Write-Host -NoNewline "$j "
         }
}

<#
for ($fila = 1; $fila -le $altura; $fila++)
{
    Write-Host "`n"
         for ($j = ($fila * 2)-1; $j -ge 1; $j =$j-2)
         {
                  Write-Host -NoNewline "$j "
         }
}
#>
Clear-Host
Write-Host "Coloca tu renta anual y te mostraré el tipo impositivo que te corresponda."
[int]$num = Read-Host "Ingresa tu renta"
Write-Host "`n"
switch ($num) {
    {($_ -lt 10000)}  {Write-Host "Tu renta es del 5%."}
    {($_ -ge 10000) -and ($_ -le 20000)}  {Write-Host "Tu renta es del 15%."}
    {($_ -ge 20000) -and ($_ -le 35000)}  {Write-Host "Tu renta es del 20%."}
    {($_ -ge 35000) -and ($_ -le 60000)}  {Write-Host "Tu renta es del 30%."}
    {($_ -gt 60000)}  {Write-Host "Tu renta es del 45%."}
}
Write-Host "`n"
Write-Host "Fin del script."
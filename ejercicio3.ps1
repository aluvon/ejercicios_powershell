Clear-Host
Write-host "Hola, te pediré unos datos para calcular el salario a pagarte."
[double]$horas = Read-Host "Ingresa las horas trabajadas"
[double]$coste = Read-Host "Ingresa coste de horas"
Write-Host "Tu salirio es:"
[double]$resultado = $horas*$coste
Write-Host $resultado
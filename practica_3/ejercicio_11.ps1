Clear-Host
Write-Host "Bienvenido, calcularemos el valor de tu ingreso"
[int]$edad = Read-Host "Ingresa tu edad"

Write-Host "`n"

switch ($edad) {
        {$_ -lt 4} {Write-Host "Tu ingreso es gratis, a disfrutar."

    }
        {($_ -ge 4) -and ($_ -le 18)} {Write-Host "Debes pagar 5 euros, a disfrutar."

    }
        {$_ -gt 18} {Write-Host "Debes pagar 10 euros, a disfrutar."

    }
}
Write-Host "`n"
Write-Host "Fin del script."
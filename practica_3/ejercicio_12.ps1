Clear-Host
Write-Host "¡¡¡¡Benvenuto a la pizzería Bella Napoli!!!"
$eleccion = Read-Host "Decea usted una pizza vegetariana: SI o NO"
Write-Host "`n"
switch ($eleccion) {
        SI {$ingrediente_v = Read-Host "Usted puede agregar 1 ingrediente a más:(Pimiento o Tofu). ¿Cual decea?"
            Write-Host "Su pizza Vegetariana contiene: $ingrediente_v, mozzarella y tomate. En unos minútos sera servida."
        }
        NO {$ingrediente = Read-Host "Usted puede agregar 1 ingrediente a más:(Peperoni, Jamon y Salmon). ¿Cual decea?"
            Write-Host "Su pizza Vegetariana contiene: $ingrediente, mozzarella y tomate. En unos minútos sera servida."
        }
}
Write-Host "`n"
Write-Host "Fin del script."
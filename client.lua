--pas de coup de cross
CreateThread(function()
    while true do
        local goSleep = 100;                      -- on déclare le temps d'actualisation de la boucle a 100 millisecondes
        for i = 1, 6 do
            if IsPedArmed(PlayerPedId(), i) then  -- on vérifie si le joueur est armée de n'importe quel arme
                goSleep = 1;                      -- actualisation de la boucle toute les 1 milliseconde pour quel applique les changement ci-dessous
                DisableControlAction(0, 25, true) -- Touche a désactiver temporairement
                DisableControlAction(0, 45, true) -- Deuxième Touche a désactiver temporairement
                break                             -- on casse la boucle for
            end
        end
        Wait(goSleep)
    end
end)

-- densiter moldus

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        SetVehicleDensityMultiplierThisFrame(0.03)
        SetPedDensityMultiplierThisFrame(0.5)
        SetRandomVehicleDensityMultiplierThisFrame(0.04)
        SetParkedVehicleDensityMultiplierThisFrame(0.25)
        SetScenarioPedDensityMultiplierThisFrame(0.15, 0.15)
    end
end)

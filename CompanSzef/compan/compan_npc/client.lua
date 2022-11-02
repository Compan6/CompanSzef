Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        SetVehicleDensityMultiplierThisFrame(0.2)
        SetPedDensityMultiplierThisFrame(0.3)
        SetRandomVehicleDensityMultiplierThisFrame(0.3)
        SetParkedVehicleDensityMultiplierThisFrame(0.3)
        SetScenarioPedDensityMultiplierThisFrame(0.3)
  end
end)
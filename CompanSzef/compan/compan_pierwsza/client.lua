local shot = false
local check = false
local check2 = false
local count = 0

local forceTo = 4
Citizen.CreateThread(function()
    local check = nil
	while true do
		if GetFollowPedCamViewMode() ~= forceTo then DisableControlAction(0, 140, true) DisablePlayerFiring(PlayerPedId(), true) else end --- Zablokowanie Ataku z 3 osoby
        if IsPlayerFreeAiming(PlayerId()) or IsControlPressed(1, 25) then
            if GetFollowPedCamViewMode() == forceTo and check == false then
                check = false
            else
                SetFollowPedCamViewMode(forceTo)
                check = true
            end
        else
            if check == true then
                SetFollowPedCamViewMode(1)
                check = false
            end
        end
        Citizen.Wait(5)
    end
end)
--RegisterCommand('pierwsza', function(source, args, rawCommand)
--forceTo = 4
--end, false)
--RegisterCommand('trzecia', function(source, args, rawCommand)
--forceTo = 1
--end, false)

Citizen.CreateThread(function()
	while true do
		SetBlackout(false)
		Citizen.Wait(5)
	   
		--- Zablokowanie DriveBy. ---
		playerPed = GetPlayerPed(-1)
		pid = PlayerId()
        weapon = GetSelectedPedWeapon(PlayerPedId())		
        car = GetVehiclePedIsIn(playerPed, false)
		if weapon == `WEAPON_STUNGUN` then
			SetPlayerCanDoDriveBy(pid, true)
		else
			SetPlayerCanDoDriveBy(pid, false)
        end

		end	    
end)

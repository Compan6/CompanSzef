local Keys = {
	["~"] = 243,
}

local canHandsUp = true
local handsup = false

AddEventHandler('handsup:toggle', function(param)
	canHandsUp = param
end)

Citizen.CreateThread(function()


	while true do
		Citizen.Wait(5)

		if canHandsUp then
			if IsControlJustReleased(0, Keys['~']) then
				local playerPed = PlayerPedId()

				RequestAnimDict('random@mugging3')
				while not HasAnimDictLoaded('random@mugging3') do
					Citizen.Wait(25)
				end

				if not handsup then
					handsup = true
					TaskPlayAnim(playerPed, 'random@mugging3', 'handsup_standing_base', 3.0, -3.0, -1, 49, 0, 0, 0, 0)
					blokada()
				else
					handsup = false
					ClearPedSecondaryTask(playerPed)
				end
			end
		end
	end
end)

function blokada()
	Citizen.CreateThread(function()
		while handsup do
			Citizen.Wait(5)
           
		end
	end)
end
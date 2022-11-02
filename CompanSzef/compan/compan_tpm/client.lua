ESX               = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(25)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterCommand("tpm", function(source)
  tepajdomarkera()
end, false)

function tepajdomarkera()
  
  ESX.TriggerServerCallback('esx_marker:getUsergroup', function(group)
    playergroup = group
    
    if playergroup == 'admin' or playergroup == 'superadmin' or playergroup == 'mod' or playergroup == '_dev' then
      local playerPed = GetPlayerPed(-1)
      local WaypointHandle = GetFirstBlipInfoId(8)
      if DoesBlipExist(WaypointHandle) then
        local coord = Citizen.InvokeNative(0xFA7C7F0AADF25D09, WaypointHandle, Citizen.ResultAsVector())
        SetEntityCoordsNoOffset(playerPed, coord.x, coord.y, -199.5, false, false, false, true)
        ESX.ShowNotification('Teleport do znacznika')
      else
        ESX.ShowNotification('Nie ustawiono znacznika!')
      end
    end
    
  end)
end
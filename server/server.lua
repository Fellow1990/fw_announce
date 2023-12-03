RegisterNetEvent('fw_announce:Notification')
AddEventHandler('fw_announce:Notification', function(data)
    for _, xPlayer in ipairs(ESX.GetExtendedPlayers()) do
        lib.notify(xPlayer.source, data)
    end
end)

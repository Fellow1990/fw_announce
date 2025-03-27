RegisterNetEvent('fw_announce:Notification')
AddEventHandler('fw_announce:Notification', function(data, custom)
	local xPlayers = ESX.GetExtendedPlayers()
	for _, xPlayer in pairs(xPlayers) do
		if custom then
			lib.notify(xPlayer.source, {
				id = xPlayer.source,
				title = data[1],
				description = data[2],
				duration = Config.Duration,
				position = data[3],
				style = {
					backgroundColor = data[4],
					color = data[5],
					['.description'] = {
						color = data[6]
					}
				},
				icon = data[7],
				iconColor = data[8]
			})
		else
			lib.notify(xPlayer.source, data)
		end
	end
end)
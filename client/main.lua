

local function Announce()
	if Config.Announce[ESX.PlayerData.job.name] then
		local data = {}
		for k,v in pairs (Config.Announce[ESX.PlayerData.job.name]) do
			if Config.Context then
				data[#data+1] = {
					title = k,
					onSelect = function()
						TriggerServerEvent('fw_announce:Notification', v, nil)
					end
				}
			else
				data[#data+1] = {
					label = k,
					args = {event = v}
				}
			end
		end
		if Config.Context then
			local list = {}
			for k,v in pairs(Config.Icon) do
                list[#list+1] = {
                    label = k,
                    value = v
                }
            end
			local pos = {}
			for k,v in pairs(Config.Pos) do
                pos[#pos+1] = {
                    label = k,
                    value = v
                }
            end
			data[#data+1] = {
				title = Config.Translation.boutton_tittle,
				onSelect = function()
					local input = lib.inputDialog(ESX.PlayerData.job.label, {
						{type = 'input', label = Config.Translation.title, description = Config.Translation.desc_title, required = true},
						{type = 'input', label = Config.Translation.message, description = Config.Translation.desc_message, required = true},
						{type = 'select', label = Config.Translation.position, options = pos, required = true},
						{type = 'color', label = Config.Translation.c_bakcground, default = '#eb4034'},
						{type = 'color', label = Config.Translation.c_title, default = '#eb4034'},
						{type = 'color', label = Config.Translation.c_desc, default = '#eb4034'},
						{type = 'select', label = Config.Translation.c_select, options = list, required = true},
						{type = 'color', label = Config.Translation.c_icon, default = '#eb4034'}
					})
					if not input then return end
					TriggerServerEvent('fw_announce:Notification', input, true)
				end
			}
			lib.registerContext({
				id = 'menu_announce',
				title = Config.Translation.announce..ESX.PlayerData.job.label,
				options = data
			})
			lib.showContext('menu_announce')
		else
			local list = {}
			for k,v in pairs(Config.Icon) do
                list[#list+1] = {
                    label = k,
                    value = v
                }
            end
			local pos = {}
			for k,v in pairs(Config.Pos) do
                pos[#pos+1] = {
                    label = k,
                    value = v
                }
            end
			data[#data+1] = {
				label = Config.Translation.boutton_tittle,
				args = {event = true}
			}
			lib.registerMenu({
				id = 'menu_announce',
				title = Config.Translation.announce..ESX.PlayerData.job.label,
				position = Config.Position,
				options = data
			}, function(selected, scrollIndex, args)
				if args.event == true then 
					local input = lib.inputDialog(ESX.PlayerData.job.label, {
						{type = 'input', label = Config.Translation.title, description = Config.Translation.desc_title, required = true},
						{type = 'input', label = Config.Translation.message, description = Config.Translation.desc_message, required = true},
						{type = 'select', label = Config.Translation.position, options = pos, required = true},
						{type = 'color', label = Config.Translation.c_bakcground, default = '#eb4034'},
						{type = 'color', label = Config.Translation.c_title, default = '#eb4034'},
						{type = 'color', label = Config.Translation.c_desc, default = '#eb4034'},
						{type = 'select', label = Config.Translation.c_select, options = list, required = true},
						{type = 'color', label = Config.Translation.c_icon, default = '#eb4034'}
					})
					if not input then return end
					TriggerServerEvent('fw_announce:Notification', input, true)
				else
					TriggerServerEvent('fw_announce:Notification', args.event, nil)
				end
			end)
			lib.showMenu('menu_announce')
		end
	end
end

RegisterCommand('announce', Announce, false)

RegisterKeyMapping('announce', 'Open Announce Menu', 'keyboard', 'f6')

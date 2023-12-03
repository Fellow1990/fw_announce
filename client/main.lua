local function Announce()
    local jobData, announceConfig = ESX.PlayerData.job, Config.Announce[ESX.PlayerData.job.name]

    if announceConfig then
        local menuOptions = {
            id = 'menu_announce',
            title = 'Annonces: ' .. jobData.label,
            position = Config.Position,
            options = {}
        }

        for k, v in pairs(announceConfig) do
            table.insert(menuOptions.options, Config.Context and { title = k, onSelect = function() TriggerServerEvent('fw_announce:Notification', v) end }
                                                          or { label = k, args = { event = v } })
        end

        if Config.Context then
            lib.registerContext(menuOptions)
            lib.showContext('menu_announce')
        else
            lib.registerMenu(menuOptions, function(selected, scrollIndex, args)
                TriggerServerEvent('fw_announce:Notification', args.event)
            end)
            lib.showMenu('menu_announce')
        end
    end
end

RegisterCommand('announce', Announce, false)
RegisterKeyMapping('announce', 'Ouvrir le menu des annonces', 'keyboard', 'f6')

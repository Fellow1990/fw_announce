Config                            = {}

Config.Context = false
Config.Position = 'top-right' -- 'top-left' or 'top-right' or 'bottom-left' or 'bottom-right'
Config.Duration = 15000

Config.Translation = {
    announce = 'Annonces: ',
    boutton_tittle = 'Nouvelle annonce',
    title = 'Titre de l\'annonce',
    desc_title = 'Votre titre',
    message = 'Message',
    desc_message = 'Votre message',
    position = 'Position de la notification',
    c_bakcground = 'Couleur du fond',
    c_title = 'Couleur du titre',
    c_desc = 'Couleur de la description',
    c_select = 'Choisir un icon',
    c_icon = 'Couleur de l\'icon'
}

Config.Icon = {
    ['Ban'] = 'ban',
    ['Check'] = 'check'
}

Config.Pos = {
    ['Top'] = 'top',
    ['Top right'] = 'top-right',
    ['Top Left'] = 'top-left',
    ['Bottom'] = 'bottom',
    ['Bottom right'] = 'bottom-right',
    ['Bottom left'] = 'bottom-left',
    ['Center right'] = 'center-right',
    ['Center left'] = 'center-left'
}

Config.Announce = {
    ['mechanic'] = {
        ['Open'] = {
            id                              = 'mechanic_open',
            title                           = "Informations",
            description                     = "Ouvert",
            duration                        = 15000,
            position                        = 'top',
            style = {
                backgroundColor             = '#000000',
                color                       = '#ffffff'
            },
            icon                            = 'box',
            type                            = 'error',
            iconColor                       = '#FFFFFF'
        },
        ['Close'] = {
            id                              = 'mechanic_close',
            title                           = "Informations",
            description                     = "Fermer",
            duration                        = 15000,
            position                        = 'top',
            style = {
                backgroundColor             = '#000000',
                color                       = '#ffffff'
            },
            icon                            = 'car',
            type                            = 'error',
            iconColor                       = '#FFFFFF'
        },
    },
    ['cardealer'] = {
        ['Open'] = {
            id                              = 'cardealer_open',
            title                           = "Informations",
            description                     = "Ouvert",
            duration                        = 15000,
            position                        = 'top',
            style = {
                backgroundColor             = '#000000',
                color                       = '#ffffff'
            },
            icon                            = 'box',
            type                            = 'error',
            iconColor                       = '#FFFFFF'
        },
        ['Close'] = {
            id                              = 'cardealer_close',
            title                           = "Informations",
            description                     = "Fermer",
            duration                        = 15000,
            position                        = 'top',
            style = {
                backgroundColor             = '#000000',
                color                       = '#ffffff'
            },
            icon                            = 'car',
            type                            = 'error',
            iconColor                       = '#FFFFFF'
        },
    }
}

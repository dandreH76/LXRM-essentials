local LXFramework = exports['LXRM-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['anticheat'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['levels'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['playermoney'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['joinleave'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['banking'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['occ'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['robbing'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['stash'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['drop'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['dealers'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['shops'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['bans'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['fishing'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['goldpanning'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['loot'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['hotel'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
    ['beekeeper'] = 'https://discord.com/api/webhooks/1082254792241463386/BYCzAeFPzd5hY-OdAg_n--RCzagp92nyXP61lRSV98pIpW-QZJKuMnVZ6ho8Y1N2y5ZI',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('LXRM-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = Config.DiscordWHAuthorName,
                ['icon_url'] = Config.DiscordWHImage,
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

LXFramework.Commands.Add('testwebhook', Lang:t('log.test_your_discord_webhook'), {}, false, function()
    TriggerEvent('LXRM-log:server:CreateLog', 'testwebhook', Lang:t('log.test_webhook'), 'default', Lang:t('log.webhook_setup_successfully'))
end, 'god')

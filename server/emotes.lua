local LXFramework = exports['LXRM-core']:GetCoreObject()

LXFramework.Commands.Add('emotemenu', Lang:t('commands.emoteMenu'), {}, false, function(source)
    local src = source
    TriggerClientEvent('emotes:client:EmoteMenu', src)
end)

LXFramework.Commands.Add('em', Lang:t('commands.emoteMenu'), {}, false, function(source)
    local src = source
    TriggerClientEvent('emotes:client:EmoteMenu', src)
end)

CreateThread(function()
    for k, v in pairs(Config.Emotes.Actions) do
        LXFramework.Commands.Add(k, v.desc, {}, false, function(source)
            local src = source
            TriggerClientEvent('emotes:client:doemote', src, v.anim)
        end)        
    end
    for k, v in pairs(Config.Emotes.Greeting) do
        LXFramework.Commands.Add(k, v.desc, {}, false, function(source)
            local src = source
            TriggerClientEvent('emotes:client:doemote', src, v.anim)
        end)        
    end
    for k, v in pairs(Config.Emotes.Reactions) do
        LXFramework.Commands.Add(k, v.desc, {}, false, function(source)
            local src = source
            TriggerClientEvent('emotes:client:doemote', src, v.anim)
        end)        
    end
    for k, v in pairs(Config.Emotes.Taunting) do
        LXFramework.Commands.Add(k, v.desc, {}, false, function(source)
            local src = source
            TriggerClientEvent('emotes:client:doemote', src, v.anim)
        end)        
    end
    for k, v in pairs(Config.Emotes.Dancing) do
        LXFramework.Commands.Add(k, v.desc, {}, false, function(source)
            local src = source
            TriggerClientEvent('emotes:client:dodictemote', src, v.dict, v.anim, v.duration)
        end)        
    end
end)
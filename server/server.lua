
    RegisterServerEvent('um-taco:givetacobread')
    AddEventHandler('um-taco:givetacobread', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        item = QBCore.Shared.Items['tacobread']
        Player.Functions.AddItem('tacobread', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
    end)


    RegisterServerEvent('um-taco:givetacomeat')
    AddEventHandler('um-taco:givetacomeat', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        item = QBCore.Shared.Items['tacomeat']
        Player.Functions.AddItem('tacomeat', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
    end)


    RegisterServerEvent('um-taco:givetacosalad')
    AddEventHandler('um-taco:givetacosalad', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        item = QBCore.Shared.Items['tacosalad']
        Player.Functions.AddItem('tacosalad', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
    end)

    RegisterServerEvent('um-taco:givetaco')
    AddEventHandler('um-taco:givetaco', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        item = QBCore.Shared.Items['taco']
        Player.Functions.AddItem('taco', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
    end)

    RegisterServerEvent('um-taco:givepackedtaco')
    AddEventHandler('um-taco:givepackedtaco', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        item = QBCore.Shared.Items['packedtaco']
        Player.Functions.AddItem('packedtaco', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
    end)

    RegisterServerEvent('um-taco:givemoney')
    AddEventHandler('um-taco:givemoney', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local tiprandom = math.random(1,50)
        local tacomoney = math.random(Config.TacoMoneyMin,Config.TacoMoneyMax)
        Player.Functions.AddMoney("cash", tacomoney, "taco-money")
        TriggerClientEvent('QBCore:Notify', src, "Taco delivered! Go back to the taco shop for a new delivery", "success")
        TriggerClientEvent('QBCore:Notify', src, "You have earned in money $"..tacomoney)
        if tiprandom >= 25 then
        Player.Functions.AddMoney("cash", Config.TacoTip, "taco-tip")
        TriggerClientEvent('QBCore:Notify', src, "You have earned in tips $"..Config.TacoTip)
        end

    end)

    QBCore.Functions.CreateCallback('um-taco:tacocontrol', function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local tacobread = Player.Functions.GetItemByName("tacobread")
        local tacomeat = Player.Functions.GetItemByName("tacomeat")
        local tacosalad = Player.Functions.GetItemByName("tacosalad")
        if tacobread ~= nil and tacomeat ~= nil  and tacosalad ~= nil then
            cb(true)
        else
            cb(false)
        end
    end)
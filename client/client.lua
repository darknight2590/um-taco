local sellstart = false
local sellcontrol = false
Citizen.CreateThread(function()
    while true do
        local InRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        local coords = GetBlipInfoIdCoord(sellblip)
        local dist = #(PlayerPos - vector3(Config.TacoMarker["tacobread"]["x"],Config.TacoMarker["tacobread"]["y"],Config.TacoMarker["tacobread"]["z"]))
        local dist2 = #(PlayerPos - vector3(Config.TacoMarker["tacomeat"]["x"],Config.TacoMarker["tacomeat"]["y"],Config.TacoMarker["tacomeat"]["z"]))
        local dist3 = #(PlayerPos - vector3(Config.TacoMarker["tacosalad"]["x"],Config.TacoMarker["tacosalad"]["y"],Config.TacoMarker["tacosalad"]["z"]))
        local dist4 = #(PlayerPos - vector3(Config.TacoMarker["taco"]["x"],Config.TacoMarker["taco"]["y"],Config.TacoMarker["taco"]["z"]))
        local dist5 = #(PlayerPos - vector3(Config.TacoMarker["packedtaco"]["x"],Config.TacoMarker["packedtaco"]["y"],Config.TacoMarker["packedtaco"]["z"]))
        local dist6 = #(PlayerPos - vector3(Config.TacoMarker["selltaco"]["x"],Config.TacoMarker["selltaco"]["y"],Config.TacoMarker["selltaco"]["z"]))
        local dist7 = #(PlayerPos - vector3(coords[1], coords[2], coords[3]))

        if dist < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["tacobread"]["x"],Config.TacoMarker["tacobread"]["y"],Config.TacoMarker["tacobread"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist < 1 then
                DrawText3Ds(Config.TacoMarker["tacobread"]["x"],Config.TacoMarker["tacobread"]["y"],Config.TacoMarker["tacobread"]["z"] + 0.15, '~g~E~w~ - Taco Bread')
                if IsControlJustPressed(0, 38) then -- E
                    TacoBread() 
                end
            end
        end
        if dist2 < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["tacomeat"]["x"],Config.TacoMarker["tacomeat"]["y"],Config.TacoMarker["tacomeat"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist2 < 1 then
                DrawText3Ds(Config.TacoMarker["tacomeat"]["x"],Config.TacoMarker["tacomeat"]["y"],Config.TacoMarker["tacomeat"]["z"] + 0.15, '~g~E~w~ - Taco Meat')
                if IsControlJustPressed(0, 38) then -- E
                    TacoMeat() 
                end
            end
        end
        if dist3 < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["tacosalad"]["x"],Config.TacoMarker["tacosalad"]["y"],Config.TacoMarker["tacosalad"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist3 < 1 then
                DrawText3Ds(Config.TacoMarker["tacosalad"]["x"],Config.TacoMarker["tacosalad"]["y"],Config.TacoMarker["tacosalad"]["z"] + 0.15, '~g~E~w~ - Taco Salad')
                if IsControlJustPressed(0, 38) then -- E
                    TacoSalad() 
                end
            end
        end
        if dist4 < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["taco"]["x"],Config.TacoMarker["taco"]["y"],Config.TacoMarker["taco"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist4 < 1 then
                DrawText3Ds(Config.TacoMarker["taco"]["x"],Config.TacoMarker["taco"]["y"],Config.TacoMarker["taco"]["z"] + 0.15, '~g~E~w~ - Taco')
                if IsControlJustPressed(0, 38) then -- E
                    Taco()
                end
            end
        end
        if dist5 < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["packedtaco"]["x"],Config.TacoMarker["packedtaco"]["y"],Config.TacoMarker["packedtaco"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist5 < 1 then
                DrawText3Ds(Config.TacoMarker["packedtaco"]["x"],Config.TacoMarker["packedtaco"]["y"],Config.TacoMarker["packedtaco"]["z"] + 0.15, '~g~E~w~ - Packed Taco')
                if IsControlJustPressed(0, 38) then -- E
                    InRange = false
                    PackedTaco()
                end
            end
        end
        if dist6 < 2 then
            InRange = true
            DrawMarker(2, Config.TacoMarker["selltaco"]["x"],Config.TacoMarker["selltaco"]["y"],Config.TacoMarker["selltaco"]["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist6 < 1 then
                DrawText3Ds(Config.TacoMarker["selltaco"]["x"],Config.TacoMarker["selltaco"]["y"],Config.TacoMarker["selltaco"]["z"] + 0.15, '~g~E~w~ - Sell Taco')
                if IsControlJustPressed(0, 38) then -- E
                    SellTaco()
                end
            end
        end        
        if sellstart == true and dist7 < 2 then
            InRange = true
            DrawMarker(2, coords[1], coords[2], coords[3], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 225, 138, 21, 200, 0, 0, 0, 1, 0, 0, 0)
            if dist7 < 1 then
                DrawText3Ds(coords[1], coords[2], coords[3] + 0.15, '~g~E~s~ - Taco Delivery')
                if IsControlJustReleased(0, 38) then
                    RemoveBlip(sellblip)
                   SellTacoCustomer()
                   sellcontrol = false
                end 
            end
        end
        if not InRange then
            Citizen.Wait(2000)
        end
        Citizen.Wait(5)
    end
end)



function TacoBread() 
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("taco_bread", Config.ProgressBar["tacobread"]["text"], Config.ProgressBar["tacobread"]["time"], false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_arresting",
        anim = "a_uncuff",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        TriggerServerEvent('um-taco:givetacobread')
    end, function() -- Cancel
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end


function TacoMeat() 
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("taco_meat", Config.ProgressBar["tacomeat"]["text"], Config.ProgressBar["tacomeat"]["time"], false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_arresting",
        anim = "a_uncuff",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        TriggerServerEvent('um-taco:givetacomeat')
    end, function() -- Cancel
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end


function TacoSalad() 
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("taco_salad", Config.ProgressBar["tacosalad"]["text"], Config.ProgressBar["tacosalad"]["time"], false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_arresting",
        anim = "a_uncuff",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        TriggerServerEvent('um-taco:givetacosalad')
    end, function() -- Cancel
        StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end

function Taco() 
    QBCore.Functions.TriggerCallback('um-taco:tacocontrol', function(Items)  
        if Items then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("taco", Config.ProgressBar["taco"]["text"], Config.ProgressBar["taco"]["time"], false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_arresting",
                anim = "a_uncuff",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
                TriggerServerEvent("QBCore:Server:RemoveItem", "tacobread", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tacobread"], "remove")
                TriggerServerEvent("QBCore:Server:RemoveItem", "tacomeat", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tacomeat"], "remove")
                TriggerServerEvent("QBCore:Server:RemoveItem", "tacosalad", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tacosalad"], "remove")
                TriggerServerEvent('um-taco:givetaco')
            end, function() -- Cancel
                StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
            end)
        else
            QBCore.Functions.Notify("You don\'t have all the ingredients yet..", "error")
        end
    end)
end


function PackedTaco()
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(item)
        if item then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("packedtaco", Config.ProgressBar["packedtaco"]["text"], Config.ProgressBar["packedtaco"]["time"], false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_arresting",
                anim = "a_uncuff",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
                TriggerServerEvent("QBCore:Server:RemoveItem", "taco", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["taco"], "remove")
                TriggerServerEvent('um-taco:givepackedtaco')
            end, function() -- Cancel
                StopAnimTask(ped, "mp_arresting", "a_uncuff", 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
            end)
        else
        QBCore.Functions.Notify("You don't have a taco", "error")
    end
    end, "taco")
end   



function SellTaco()
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(item)
        if item then
         if sellcontrol == false then
            sellcontrol = true
            RandomLocation()
            QBCore.Functions.Notify("New address gps marked", "success")  
         else
            QBCore.Functions.Notify("You already have an order", "error")  
         end
        else
        QBCore.Functions.Notify("You don't have a packedtaco", "error")
    end
    end, "packedtaco")
end   

function SellTacoCustomer()
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(item)
        if item then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("selltacocustomer", Config.ProgressBar["selltacocustomer"]["text"], Config.ProgressBar["selltacocustomer"]["time"], false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "mp_common", "givetake1_a", 1.0)
                TriggerServerEvent("QBCore:Server:RemoveItem", "packedtaco", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["packedtaco"], "remove")
                TriggerServerEvent('um-taco:givemoney')
            end, function() -- Cancel
                StopAnimTask(ped, "mp_common", "givetake1_a", 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
            end)
        else
        QBCore.Functions.Notify("You don't have a packedtaco", "error")
    end
    end, "packedtaco")
end   


function RandomLocation()
    local random = math.random(1,#Config.Locations)
    sellblip = true
    sellcoords = {
        x = Config.Locations[random][1],
        y = Config.Locations[random][2],
        z = Config.Locations[random][3],
        h = Config.Locations[random][4]
    }
    sellblip = CreateSellBlip(sellcoords.x, sellcoords.y, sellcoords.z)
    SetNewWaypoint(sellcoords.x, sellcoords.y)
    sellstart = true
end

function CreateSellBlip(x,y,z)
	local blip = AddBlipForCoord(x,y,z)
	SetBlipSprite(blip, 489)
	SetBlipColour(blip, 1)
	AddTextEntry('MYBLIP', "Customer")
	BeginTextCommandSetBlipName('MYBLIP')
	AddTextComponentSubstringPlayerName(name)
	EndTextCommandSetBlipName(blip)
	return blip
end

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(12.92127, -1602.86, 29.374)
    SetBlipSprite(blip, 208)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, 0.6)
    SetBlipColour(blip, 44)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Taco")
    EndTextCommandSetBlipName(blip)
end)


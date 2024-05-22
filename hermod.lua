local API = require("api")


function Find_ObjectinCoord(viirsx, seocondy)
    local kititere = viirsx
    local kittipww = seocondy
    local xAw = {}
    xAw.x = math.floor(kititere / 512)
    xAw.y = math.floor(kittipww / 512)
    xAw.z = 1
    return xAw
end

local taketimeee = 0
local taketimeeex = API.SystemTime()
local redrinkoverloadpotions = os.time() + 15
local waitforindextorwritee = API.SystemTime()
local waitforindextorwriteea = API.SystemTime()
local waitforindextorwriteeaa = API.SystemTime()
local waitforindextorwriteeaaa = API.SystemTime()
local redrinkprayerpotionsss = API.SystemTime()
local hermoddiseappraerrr = API.SystemTime()
local hermodverylongtimeee = API.SystemTime()
local whendorunningway = math.random(100, 1750)
local goonetimee = false
local hermodwass = false
local hermodwass2 = false
local registertilesatcomong = false
local whendrinkprayer = math.random(70,160)
local checkiventnroyopenedd = 0
MAX_IDLE_TIME_MINUTES = 10
local afk = os.time()

function isthereattackhermod()
    local yourpointaa = API.PlayerCoord()
    local kkokiazaidejoxaa = yourpointaa.x
    local kkokiazaidejoyaa = yourpointaa.y
    local objs = API.ReadAllObjectsArray({4,1,3,0}, {-1}, {})
    local playercomeatentranceregistertiles = false
    local foundhitspot = false
    local foundanyzombie = false
    local foundanyhermod = false
    local retrievecoordinateesx = -1
    local retrievecoordinateesy = -1
    local ishermoddplatee = false
    for _, obj in ipairs(objs) do
        if obj.Type == 4 then
            if obj.Id == 7836 then
                if(foundhitspot == false) then
                    local retrivecoordinates = Find_ObjectinCoord(obj.TileX,obj.TileY)
                    if(math.abs(kkokiazaidejoxaa - retrivecoordinates.x) <=2 and math.abs(kkokiazaidejoyaa - retrivecoordinates.y) <=2) then
                        foundhitspot = true
                        retrievecoordinateesx = retrivecoordinates.x
                        retrievecoordinateesy = retrivecoordinates.y
                    end
                end
            end
        elseif obj.Type == 1 then
            if obj.Id == 30164 then -- armoured zombie
                if(obj.Life > 0 and obj.Anim ~= 35191) then -- more than 1 HP, and anim not death animation
                    if(foundanyzombie == false) then
                        foundanyzombie = true
                    end
                end
            elseif obj.Id == 30163 then -- hermod
                if(obj.Life > 0 and obj.Anim ~= 21654) then
                    if(foundanyhermod == false) then
                        foundanyhermod = true
                    end
                end
            end
        elseif obj.Type == 3 then
            if obj.Id == 55191 or obj.Id == 55216 then -- armoured zombie
                ishermoddplatee = true
            end
        elseif obj.Type == 0 then
            if obj.Id == 127143 then -- gates to exit
                if(obj.Action == "Exit") then
                    local retrivecoordinatesa = Find_ObjectinCoord(obj.TileX,obj.TileY)
                    if(kkokiazaidejoyaa - retrivecoordinatesa.y == 7) then
                        playercomeatentranceregistertiles = true
                    end
                end
            end
        end
    end
    if(foundhitspot == true or foundanyzombie == true or foundanyhermod == true or playercomeatentranceregistertiles == true) then
        return foundhitspot, foundanyzombie, foundanyhermod, ishermoddplatee,playercomeatentranceregistertiles, retrievecoordinateesx, retrievecoordinateesy
    end
    return false, false,false,false,false,-1, -1
end
local storearenacoordiantes = {}

function IsCoordinateValidForArena(whatcoordx,whatcoordy)
    if(#storearenacoordiantes > 0) then
        for _, arenainfo in ipairs(storearenacoordiantes) do
            if arenainfo.x == whatcoordx and arenainfo.y == whatcoordy then
                return true
            end
        end
    end
    return false
end
function getRandomCoordinate(x, y)
    local directions = {1, 2, 3, 4, 5, 6, 7, 8}
    local newX = -9999
    local newY = -9999
    local valid = false
    while not valid and #directions > 0 do
        local index = math.random(1, #directions)
        local direction = directions[index]
        
        if direction == 1 then
            -- Move up
            newX, newY = x, y + 2
        elseif direction == 2 then
            -- Move down
            newX, newY = x, y - 2
        elseif direction == 3 then
            -- Move left
            newX, newY = x - 2, y
        elseif direction == 4 then
            -- Move right
            newX, newY = x + 2, y
        elseif direction == 5 then
            -- Move up-left
            newX, newY = x - 2, y + 2
        elseif direction == 6 then
            -- Move up-right
            newX, newY = x + 2, y + 2
        elseif direction == 7 then
            -- Move down-left
            newX, newY = x - 2, y - 2
        elseif direction == 8 then
            -- Move down-right
            newX, newY = x + 2, y - 2
        end
        if IsCoordinateValidForArena(newX, newY) then
            valid = true
        else
            table.remove(directions, index)
        end
    end
    if valid then
        return newX, newY
    else
        return nil, nil
    end
end
local function writerunningandwaitstopandanimation()

    local isreallyfunctionworking = 0
    local fixwhenstartandendrun = false
    local waitforanimationforseconda = 30

    while true do

        if(fixwhenstartandendrun == false) then
            if(API.ReadPlayerMovin2() == true) then
                isreallyfunctionworking = isreallyfunctionworking + 1
                if(isreallyfunctionworking >=3) then
                    isreallyfunctionworking = 0
                    waitforanimationforseconda = 100
                    fixwhenstartandendrun = true
                end
            else
                isreallyfunctionworking = 0
            end
        else
            
            
            if(API.ReadPlayerMovin2() == false) then
                isreallyfunctionworking = isreallyfunctionworking + 1
                if(isreallyfunctionworking >=3) then
                    isreallyfunctionworking = 0
                    waitforanimationforseconda = 30
                    fixwhenstartandendrun = false
                    break
                end
            else
                isreallyfunctionworking = 0
            end
        end

        if(fixwhenstartandendrun == false) then
            waitforanimationforseconda = waitforanimationforseconda - 1

            if(waitforanimationforseconda <= 0) then
                isreallyfunctionworking = 0
                waitforanimationforseconda = 30
                fixwhenstartandendrun = false
                break
            end
        else
            waitforanimationforseconda = waitforanimationforseconda - 1

            if(waitforanimationforseconda <= 0) then
                isreallyfunctionworking = 0
                waitforanimationforseconda = 30
                fixwhenstartandendrun = false
                break
            end
        end
        API.RandomSleep2(40,10,10)
    end
end
function Isinventorycontainingitem(itemids)
    local reiksmeesss = API.Container_Get_all(93)
    for _, barbaaa in ipairs(reiksmeesss) do
        for _, itemid in ipairs(itemids) do
            if barbaaa.item_id == itemid then
                return true, barbaaa.item_stack, barbaaa.item_slot, barbaaa.item_id
            end
        end
    end
    return false, -1, -1, -1
end

API.GetPray_()
local function idleCheck()
    local timeDiff = os.difftime(os.time(), afk)
    local randomTime = math.random((MAX_IDLE_TIME_MINUTES * 60) * 0.6, (MAX_IDLE_TIME_MINUTES * 60) * 0.9)

    if timeDiff > randomTime then
        API.RandomSleep2(100,1000, 2000)
        API.PIdle2()
        afk = os.time()
        API.RandomSleep2(300, 800, 1200)
    end
end
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    if(API.GetGameState2() == 3) then
        local retrieveinforeturn,isanyzombiefound,isanyhermofound,ishermodplatee,iscomejsutantrance, xkoordinate,ykoordinate = isthereattackhermod()
        if(retrieveinforeturn == true) then
            taketimeeex = API.SystemTime() + 1500
            if(taketimeee == 0) then
                taketimeee = API.SystemTime()
            else
                if(API.SystemTime() - taketimeee > whendorunningway) then
                    if(goonetimee == false) then
                        goonetimee = true
                        local playerX, playerY = xkoordinate, ykoordinate
                        local newX, newY = getRandomCoordinate(playerX, playerY)
                        if(newX ~= nil) then
                            API.DoAction_Tile(WPOINT.new(newX,newY,1 ))
                            writerunningandwaitstopandanimation()
                            API.RandomSleep2(100, 500, 1000)
                        end
                    end
                end
            end
        else
            if(isanyzombiefound == true) then
                if(API.Local_PlayerInterActingWith_Id() ~= 30164) then
                    if(API.SystemTime() > waitforindextorwritee and API.SystemTime() > waitforindextorwriteeaa and API.SystemTime() > waitforindextorwriteeaaa) then
                        waitforindextorwritee = API.SystemTime() + (1000 + API.Math_RandomNumber(1000))
                        API.DoAction_NPC(0x42,API.OFF_ACT_AttackNPC_route,{ 30164 },50)
                    end
                else
                    waitforindextorwriteeaa = API.SystemTime() + (500 + API.Math_RandomNumber(500))
                end
            else
                if(iscomejsutantrance == true) then
                    if(registertilesatcomong == false) then
                        local yourpointaazz = API.PlayerCoord()
                        local kkokiazaidejoxaazz = yourpointaazz.x
                        local kkokiazaidejoyaazz = yourpointaazz.y
                        storearenacoordiantes = {}
                        local mainpointx = kkokiazaidejoxaazz + 9
                        local mainpointy = kkokiazaidejoyaazz - 5
                        for xxx = 0, 17 do
                            for yyy = 0, 22 do
                                table.insert(storearenacoordiantes, {x = mainpointx - xxx, y = mainpointy + yyy})
                            end
                        end
                        registertilesatcomong = true
                    end
                end
                if(isanyhermofound == true) then
                    hermodverylongtimeee = API.SystemTime() + (60000*3)
                    hermodwass2 = true
                    hermodwass = true
                    hermoddiseappraerrr = API.SystemTime() + 1500
                    if(API.Local_PlayerInterActingWith_Id() ~= 30163) then -- hermod     
                        if(API.SystemTime() > waitforindextorwriteea and API.SystemTime() > waitforindextorwriteeaaa and API.SystemTime() > waitforindextorwriteeaa) then
                            waitforindextorwriteea = API.SystemTime() + (1000 + API.Math_RandomNumber(1000))
                            if(math.random(1,16) <=9) then
                                API.DoAction_NPC(0x42,API.OFF_ACT_AttackNPC_route,{ 30163 },50)
                            end
                        end
                    else
                        waitforindextorwriteeaaa = API.SystemTime() + (500 + API.Math_RandomNumber(500))
                    end
                    if(os.time() > redrinkoverloadpotions) then
                        API.RandomSleep2(200, 500, 1000)
                        local item_ids_to_check = {49039,49037,49035,49033,49031,49029} -- Example item IDs to check
                        local a,b,c,ditemid = Isinventorycontainingitem(item_ids_to_check)
                        if(a == true) then
                  
                            API.DoAction_Interface(0x48,ditemid,1,1473,5,c,API.OFF_ACT_GeneralInterface_route)
                        end
                        if(math.random(1,10) <=5) then
                            redrinkoverloadpotions = os.time() + 60*6
                            redrinkoverloadpotions = redrinkoverloadpotions + math.random(1,15)
                        else
                            redrinkoverloadpotions = os.time() + 60*5
                            redrinkoverloadpotions = redrinkoverloadpotions + math.random(40,55)
                        end
                        API.RandomSleep2(200, 500, 1000)
                    end
                else
                    if(hermodwass2 == true) then
                        if(API.SystemTime() > hermodverylongtimeee) then
                            API.Write_LoopyLoop(false)
                        end
                    end
                    if(hermodwass == true) then
                        if(API.SystemTime() > hermoddiseappraerrr) then
                            hermodwass = false
                            registertilesatcomong = false
                        end
                    end
                    if(API.LootWindowOpen_2() == true) then
                        local kinterfaceabbs = API.LootWindow_GetData()
                        if(#kinterfaceabbs > 0) then
                            if kinterfaceabbs then
                                for iSSS52, foundfSSS52 in pairs(kinterfaceabbs) do
                                    if foundfSSS52 and foundfSSS52.memloc then
                                        if(foundfSSS52.itemid1 == 55191 or foundfSSS52.itemid1 == 55216) then
                                            API.RandomSleep2(1000, 1000, 1000)
                                            API.DoAction_Interface(0xffffffff,foundfSSS52.itemid1,1,1622,11,iSSS52-1,API.OFF_ACT_GeneralInterface_route)
                                            API.RandomSleep2(1000, 1000, 1000)
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if(API.SystemTime() > taketimeeex) then
                goonetimee = false
                taketimeee = 0
            end
        end
        if(checkiventnroyopenedd < 2) then
            if(API.InventoryInterfaceCheckvarbit() == false) then
                API.RandomSleep2(200, 500, 1000)
                API.DoAction_Interface(0xc2,0xffffffff,1,1431,0,9,API.OFF_ACT_GeneralInterface_route)      
                checkiventnroyopenedd = checkiventnroyopenedd + 1
                API.RandomSleep2(200, 500, 1000)
            end
        end
        if(API.GetPray_() < whendrinkprayer) then
            if(API.SystemTime() > redrinkprayerpotionsss) then
                local item_ids_to_check = {33186,33184,33182,33180,33178,33176} -- Example item IDs to check
                local a,b,c,ditemid = Isinventorycontainingitem(item_ids_to_check)
                if(a == true) then
                    API.RandomSleep2(200, 500, 1000)
                    whendrinkprayer = math.random(70,160)
                    redrinkprayerpotionsss = API.SystemTime() + 1500 

                    API.DoAction_Interface(0x48,ditemid,1,1473,5,c,API.OFF_ACT_GeneralInterface_route)
                    API.RandomSleep2(200, 500, 1000)
                end
            end
        end
        idleCheck()
    else
        API.Write_LoopyLoop(false)
    end
    API.RandomSleep2(200, 100, 100)
end

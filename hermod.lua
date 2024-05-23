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
local redrinkhealthpotionsss = API.SystemTime()
local hermoddiseappraerrr = API.SystemTime()
local hermodverylongtimeee = API.SystemTime()
local hermodverylongtimeees = API.SystemTime()
local checkplayerinvinerteals = API.SystemTime()


local waitforpalyerinzone = 0

local whendorunningway = math.random(150, 1650)
local goonetimee = false
local hermodwass = false
local hermodwass2 = false
local registertilesatcomong = false
local isPrestwasloaded = false
local whendrinkprayer = math.random(70,160)
local isalreadyfullafterlastpreset = false
local wheneatfood = math.random(1500,2500)
local randomwwaitforteleportoutoldinstance = math.random(90000,120000)
local checkiventnroyopenedd = 0
local whenneedgotobank = false
local therewasfoodnowno = false
MAX_IDLE_TIME_MINUTES = 10
local afk = os.time()
function calculateDistanceBetweenPoints(firstpoint0, secondpoint0, firstpoint1, secondpoint1)
    local saknisAAB = (firstpoint0 - firstpoint1)^2
    local saknis2AAB = (secondpoint0 - secondpoint1)^2
    local kokiaksanisAAB = math.sqrt(saknisAAB + saknis2AAB)
    return math.floor(kokiaksanisAAB + 0.5)
end

function Isiventoryfull()
    local isinvfull = 0
    local reiksmeesss = API.Container_Get_all(93)
    for ibaaa, barbaaa in ipairs(reiksmeesss) do
        if(barbaaa.item_id ~= -1) then
            isinvfull = isinvfull + 1
        end
    end
    if(isinvfull == 28) then
        return true
    end
    return false
end


function isthereattackhermod()
    local yourpointaa = API.PlayerCoord()
    local kkokiazaidejoxaa = yourpointaa.x
    local kkokiazaidejoyaa = yourpointaa.y
    local objs = API.ReadAllObjectsArray({4,1,3,0,12}, {-1}, {})
    local playercomeatentranceregistertiles = false
    local foundhitspot = false
    local foundanyzombie = false
    local foundanyhermod = false
    local retrievecoordinateesx = -1
    local retrievecoordinateesy = -1
    local ishermoddplatee = false
    local entergatewayy = false
    local saveattuneiddd = -1
    local canenterattuneportal = false
    local needarreattuneportal = false
    local playeratinstancee = false
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
                    if(obj.Name == "Chamber doorway") then
                        local retrivecoordinatesa = Find_ObjectinCoord(obj.TileX,obj.TileY)
                        if(kkokiazaidejoyaa - retrivecoordinatesa.y == 7) then
                            playercomeatentranceregistertiles = true
                        end
                        playeratinstancee = true
                    end
                end
            end
            local retrivecoorsdinatesa = Find_ObjectinCoord(obj.TileX,obj.TileY)
            if(retrivecoorsdinatesa.x == 3298 and retrivecoorsdinatesa.y == 10154) then
                if(obj.Action == "Enter") then
                    local match = obj.Name:match("Rasial's Citadel")
                    if(match) then
                        canenterattuneportal = true
                    else
                        saveattuneiddd = obj.Id
                        needarreattuneportal = true
                    end
                end
            end
        elseif obj.Type == 12 then
            if obj.Id == 127142 then -- gates to exit
                if(kkokiazaidejoxaa >= 840 and kkokiazaidejoxaa <= 890 and kkokiazaidejoyaa >=1720 and kkokiazaidejoyaa <= 1744) then
                    if(obj.Action == "Enter") then
                        if(obj.Name == "Chamber doorway") then
                            entergatewayy = true
                        end
                    end
                end
            end
        end
    end
    if(foundhitspot == true or foundanyzombie == true or foundanyhermod == true or playercomeatentranceregistertiles == true or entergatewayy == true or canenterattuneportal == true or needarreattuneportal == true or playeratinstancee == true) then
        return foundhitspot, foundanyzombie, foundanyhermod, ishermoddplatee,playercomeatentranceregistertiles,entergatewayy,canenterattuneportal,needarreattuneportal,saveattuneiddd, playeratinstancee, retrievecoordinateesx, retrievecoordinateesy
    end
    return false,false,false,false,false,false,false,false,-1,false,-1,-1
end
local storeacoordiantes = {}

function IsCoordinateValidForArena(whatcoordx,whatcoordy,offset)
    if(#storearenacoordiantes > 0) then
        for _, arenainfo in ipairs(storearenacoordiantes) do
            if(math.abs(arenainfo.x - whatcoordx) <= offset and math.abs(arenainfo.y - whatcoordy) <= offset) then
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
        if IsCoordinateValidForArena(newX, newY,0) == true then
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
API.GetHP_()
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
local firsttimeteleporttobank = true
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    if(API.GetGameState2() == 3) then
        local retrieveinforeturn,isanyzombiefound,isanyhermofound,ishermodplatee,iscomejsutantrance,nearentrancetohermod,canenterportal,needreaatuneportal,attuneportalid,playerathermod, xkoordinate,ykoordinate = isthereattackhermod()
        if(retrieveinforeturn == true) then

            hermodverylongtimeee = API.SystemTime() + (60000*3)
            hermodverylongtimeees = API.SystemTime() + randomwwaitforteleportoutoldinstance

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
                            whendorunningway = math.random(150, 1650)
                            API.DoAction_Tile(WPOINT.new(newX,newY,1 ))
                            writerunningandwaitstopandanimation()
                            API.RandomSleep2(100, 500, 1000)
                        end
                    end
                end
            end
        else

            local item_ids_to_checka = {1971,2309,14665,13433,315,325,347,355,333,339,329,361,365,379,373,40293,7946,385,34729,15272,42258,42267,42254} -- foods
            local aa,ba,ca,ditemida = Isinventorycontainingitem(item_ids_to_checka)
            if(aa == true) then
                therewasfoodnowno = true
                if(API.SystemTime() > redrinkhealthpotionsss) then
                    if(API.GetHP_() < wheneatfood) then
                        wheneatfood = math.random(1500,2500)
                        API.RandomSleep2(200, 500, 1000)
                        redrinkhealthpotionsss = API.SystemTime() + 1500 
                        API.DoAction_Interface(0x47,ditemida,1,1473,5,ca,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(200, 500, 1000)
                    end
                end
            else
                if(therewasfoodnowno == true) then
                    therewasfoodnowno = false
                    whenneedgotobank = true
                    print('Not food left teleport out to bank!')
                end
            end


            if(whenneedgotobank == true or firsttimeteleporttobank == true) then

                            
                local yourpointaazzz = API.PlayerCoord()
                local kkokiazaidejoxaazzz = yourpointaazzz.x
                local kkokiazaidejoyaazzz = yourpointaazzz.y

                local distancefromkharen = calculateDistanceBetweenPoints(kkokiazaidejoxaazzz,kkokiazaidejoyaazzz,3294,10142)

                if(nearentrancetohermod == false) then
                    if(distancefromkharen > 30) then -- Teleport to war retreat
                        if( API.VB_FindPSettinOrder(3130, -1).state == 1) then
                            API.DoAction_Interface(0xffffffff,0xffffffff,1,1461,1,205,API.OFF_ACT_GeneralInterface_route)
                            API.RandomSleep2(5000, 2000, 3000)
                        else
                            print('Magic book not opened impossible war reteat!')
                        end
                    else
                        
                        if(isPrestwasloaded == false) then
                            print('Clicking to load last preset...')
                            API.RandomSleep2(1000, 2000, 3000)
                            API.DoAction_Object_r(0x33,API.OFF_ACT_GeneralObject_route3,{ 114750 },50,WPOINT.new(3299,10132,0),5) -- click load last preset...
                            writerunningandwaitstopandanimation()
                            API.RandomSleep2(1000, 1350, 1900)

                            if(Isiventoryfull() == true) then
                                isalreadyfullafterlastpreset = true
                            else
                                isalreadyfullafterlastpreset = false
                            end

                            isPrestwasloaded = true
                        else

                            if(kkokiazaidejoyaazzz <= 10140) then
                                local randomcoordinatetile = API.Math_RandomNumber(7)
                                if(randomcoordinatetile == 1) then
                                    API.DoAction_Tile(WPOINT.new(3292,10143,0 ))
                                elseif(randomcoordinatetile == 2) then
                                    API.DoAction_Tile(WPOINT.new(3292,10144,0 ))
                                elseif(randomcoordinatetile == 3) then
                                    API.DoAction_Tile(WPOINT.new(3293,10145,0 ))
                                elseif(randomcoordinatetile == 4) then
                                    API.DoAction_Tile(WPOINT.new(3294,10144,0 ))
                                elseif(randomcoordinatetile == 5) then
                                    API.DoAction_Tile(WPOINT.new(3294,10143,0 ))
                                elseif(randomcoordinatetile == 6) then
                                    API.DoAction_Tile(WPOINT.new(3295,10144,0 ))
                                elseif(randomcoordinatetile == 7) then
                                    API.DoAction_Tile(WPOINT.new(3295,10145,0 ))
                                else
                                    API.DoAction_Tile(WPOINT.new(3292,10143,0 ))
                                end
                                API.RandomSleep2(2500, 2500, 5000)
                            end

                            if(canenterportal == true) then
                                print('Clicking on attune portal to teleport to hermod instance...')
                                API.DoAction_Object_r(0x39,API.OFF_ACT_GeneralObject_route0,{ 127138 },50,WPOINT.new(3298,10154,0),5)
                                writerunningandwaitstopandanimation()
                                API.RandomSleep2(2000, 1000, 1000)
                            elseif(needreaatuneportal == true) then
                                print('Clicking on attune portal to reattune portal to teleport to hermod instance...')
                                API.DoAction_Object_r(0x29,API.OFF_ACT_GeneralObject_route1,{ attuneportalid },50,WPOINT.new(3298,10154,0),5)
                                writerunningandwaitstopandanimation()
                                API.RandomSleep2(1500, 1000, 1000)
                                if(API.Compare2874Status(18,false) == true) then
                                
                                    API.DoAction_Interface(0xffffffff,0xffffffff,0,645,9,36,API.OFF_ACT_GeneralInterface_Choose_option)
                                    API.RandomSleep2(1500, 1000, 1000)
                                end
                            end
                        end
                    end
                end
            end
           


            if(isanyzombiefound == true) then
                hermodverylongtimeee = API.SystemTime() + (60000*3)
                hermodverylongtimeees = API.SystemTime() + randomwwaitforteleportoutoldinstance
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
                        firsttimeteleporttobank = false
                        isPrestwasloaded = false
                        whenneedgotobank = false
                        registertilesatcomong = true

                        hermodverylongtimeee = API.SystemTime() + (60000*4)
                        hermodverylongtimeees = API.SystemTime() + randomwwaitforteleportoutoldinstance

                        print('Player at instance arena succefully registered!')
                    end
                end



                if(playerathermod == true) then
                    if(registertilesatcomong == false) then
                        if(waitforpalyerinzone == 0) then
                            waitforpalyerinzone = API.SystemTime() + 1500
                        else
                            if(API.SystemTime() > waitforpalyerinzone) then
                                print('Please launch script not in encounter!')
                                API.Write_LoopyLoop(false)
                            end
                        end
                    else
                        waitforpalyerinzone = 0
                    end
                else
                    if(registertilesatcomong == true) then
                        registertilesatcomong = false
                    
                    end
                end


                

                if(waitforpalyerinzone == 0) then

                    if(isanyhermofound == true) then

                        hermodverylongtimeee = API.SystemTime() + (60000*3)
                        hermodverylongtimeees = API.SystemTime() + randomwwaitforteleportoutoldinstance
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

                        if(API.SystemTime() > checkplayerinvinerteals) then
                            if(isalreadyfullafterlastpreset == false) then
                                if(Isiventoryfull() == true) then
                                    checkplayerinvinerteals = API.SystemTime() + (500 + API.Math_RandomNumber(1000))
                                    whenneedgotobank = true
                                end
                            else
                                if(Isiventoryfull() == false) then
                                    isalreadyfullafterlastpreset = false
                                end
                            end
                        end
                        if(API.SystemTime() > hermodverylongtimeees) then
                    
                            local yourpointaazzvv = API.PlayerCoord()
                            local kkokiazaidejoxaazzvv = yourpointaazzvv.x
                            local kkokiazaidejoyaazzvv = yourpointaazzvv.y
                            if IsCoordinateValidForArena(kkokiazaidejoxaazzvv, kkokiazaidejoyaazzvv,5) == true then
                                hermodverylongtimeee = API.SystemTime() + (60000*4)
                                randomwwaitforteleportoutoldinstance = math.random(90000,120000)
                                whenneedgotobank = true
                                print('Hermod long time not spawing teleport out rebank reenter instance...')
                            end
                        end

                        if(nearentrancetohermod == true) then
                            firsttimeteleporttobank = false
                            isPrestwasloaded = false
                            whenneedgotobank = false
                            print('Click on Chamber doorway enter Hermod instance...')
                            API.DoAction_Object_r(0x39,API.OFF_ACT_GeneralObject_route0,{ 127142 },50,WPOINT.new(861,1745,0),5)
                            writerunningandwaitstopandanimation()
                            API.RandomSleep2(1500, 1000, 1000)
                            if(API.Compare2874Status(18,false) == true) then
                                API.DoAction_Interface(0x36,0xffffffff,1,1591,60,-1,API.OFF_ACT_GeneralInterface_route)
                                API.RandomSleep2(2000, 1000, 1000)
                            end
                        end
                        

                    
                        if(hermodwass2 == true) then
                            if(API.SystemTime() > hermodverylongtimeee) then
                                print('Not finding hermod long time stopping script...')
                                API.Write_LoopyLoop(false)
                            end
                        end
                        if(hermodwass == true) then
                            if(API.SystemTime() > hermoddiseappraerrr) then
                                hermodwass = false
                                
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

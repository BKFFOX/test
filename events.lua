softRequire("settings_butt")
local command1 = "sv_cheats 1" -- Команда, которую необходимо выполнить
local command2 = "sv_cheats 0" -- Команда, которую необходимо выполнить
local isadmin = {}
isadmin[1240907382] = "Donater #"
isadmin[433382331] = "Оверплюс спасибо"
isadmin[312552256] = "Boykisser"
isadmin[335864707] = "Tiktoker"
isadmin[171386224] = "Dima"
isadmin[1677836440] = "Donater 1"
isadmin[241265143] = "Donater 3"
isadmin[260124293] = "Donater 3"
isadmin[1599371951] = "Donater 4"
isadmin[1285659915] = "Donater 5"
isadmin[240740433] = "Donater 6"
isadmin[175649008] = "Donater 7"
isadmin[1484030436] = "Donater 8"
isadmin[446040543] = "Donater 9"
isadmin[1077390712] = "Donater 10"
isadmin[1352699171] = "Donater 11"
isadmin[916228968] = "Donater 13"
isadmin[172779505] = "Donater 13"
isadmin[69170453] = "Donater 14" -- *
isadmin[1739525166] = "Donater 15"
isadmin[867319475] = "Donater 16"
isadmin[1256701837] = "Donater 17"
isadmin[1250310935] = "Donater 18" -- test do 17/6
isadmin[1516542127] = "Donater 19"
isadmin[141440712] = "Donater 20"
isadmin[1130914120] = "Donater 21"
isadmin[1066858357] = "Donater 23" -- n
isadmin[1283520806] = "Donater 23"
isadmin[902179296] = "Donater 24"
isadmin[1130396963] = "Donater 25"
isadmin[363925704] = "Donater 26"
isadmin[363925704] = "Donater 27"
isadmin[174005013] = "Donater 28"
isadmin[1261367857] = "Donater 29"
isadmin[251751400] = "Donater 30"
isadmin[841148012] = "Donater 31"
isadmin[142694532] = "Donater 31"
local Lowadmin = {}
Lowadmin[1240907382] = "yayayaa"
local Mediumadmin = {}
Mediumadmin[1130914120] = "Donater 21"
Mediumadmin[1261367857] = "Donater 29"
Mediumadmin[363925704] = "Donater 26"
Mediumadmin[1130396963] = "Donater 25"
Mediumadmin[1066858357] = "Donater 23"
Mediumadmin[902179296] = "Donater 24"
Mediumadmin[1677836440] = "Donater 1"
Mediumadmin[241265143] = "Donater 3"
Mediumadmin[260124293] = "Donater 3"
Mediumadmin[1599371951] = "Donater 4"
Mediumadmin[1285659915] = "Donater 5"
Mediumadmin[175649008] = "Donater 7"
Mediumadmin[1484030436] = "Donater 8"
Mediumadmin[446040543] = "Donater 9"
Mediumadmin[1077390712] = "Donater 10"
Mediumadmin[1352699171] = "Donater 11"
Mediumadmin[916228968] = "Donater 13"
Mediumadmin[172779505] = "Donater 13"
Mediumadmin[1739525166] = "Donater 15"
Mediumadmin[867319475] = "Donater 16"
Mediumadmin[1250310935] = "Donater 18" -- test do 17/6
Mediumadmin[1516542127] = "Donater 19"
Mediumadmin[141440712] = "Donater 20"
Mediumadmin[174005013] = "Donater 28"
Mediumadmin[251751400] = "Donater 30"
Mediumadmin[841148012] = "Donater 31"
Mediumadmin[123] = "Donater #"
local Highadmin = {}
Highadmin[1283520806] = "Donater 23"
Highadmin[841148012] = "Donater 31"
Highadmin[841148012] = "Donater 31"
Highadmin[841148012] = "Donater 31"
Highadmin[433382331] = "Оверплюс спасибо"
Highadmin[312552256] = "Boykisser"
Highadmin[335864707] = "Tiktoker"
Highadmin[171386224] = "Dima"
Highadmin[841148012] = "Donater 31"
Highadmin[1256701837] = "Donater 17"
Highadmin[69170453] = "Donater 14"
Highadmin[240740433] = "Donater 6"
Highadmin[142694532] = "Donater"
--Highadmin[1240907382] = "yayayaa"

local ActiveSteamAccountID = {}
ActiveSteamAccountID[1250310935] = "ds"

local lasttMessageCommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage(keys)
    local message = keys.text
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 5
if Mediumadmin[steamAccountID] then
cooldownTime = 2
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end

if isadmin[steamAccountID] then
    if message == "^-sv1" then
    if not lasttMessageCommandTime[iPlayerID] or (GameRules:GetGameTime() - lasttMessageCommandTime[iPlayerID] >= cooldownTime) then
        GameRules:GetGameModeEntity():SetContextThink(DoUniqueString("sv_cheats 1"), function()
            SendToServerConsole(command1)
            return nil
        end, 0)
        lasttMessageCommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end

end
ListenToGameEvent("player_chat", OnChatMessage, nil)

local lastMessage2CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage2(keys)
    local message = keys.text
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 5
if Mediumadmin[steamAccountID] then
cooldownTime = 2
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if isadmin[steamAccountID] then
    if message == "^-sv0" then
if not lastMessage2CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage2CommandTime[iPlayerID] >= cooldownTime) then

        GameRules:GetGameModeEntity():SetContextThink(DoUniqueString("sv_cheats 0"), function()
            SendToServerConsole(command2)
            return nil
        end, 0)
        lastMessage2CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end

end
ListenToGameEvent("player_chat", OnChatMessage2, nil)

local lastMessage3CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage3(keys)
    local message = keys.text
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 120
if Mediumadmin[steamAccountID] then
cooldownTime = 60
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end

    if isadmin[steamAccountID] then
        if message == "^-gold" then
        if not lastMessage3CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage3CommandTime[iPlayerID] >= cooldownTime) then
                PlayerResource:ModifyGold(iPlayerID, 99999, true, DOTA_ModifyGold_Unspecified)
                lastMessage3CommandTime[iPlayerID] = GameRules:GetGameTime()
                -- Add a message to inform the player that the command is on cooldown
            end
    end
end
end

ListenToGameEvent("player_chat", OnChatMessage3, nil)


local lastMessage4CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage4(keys)
    local message = keys.text
local playerID2 = keys.playerid
local player = PlayerResource:GetPlayer(playerID2)
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 60
if Mediumadmin[steamAccountID] then
cooldownTime = 30
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end

LinkLuaModifier("modifier_minor_ability_upgrades", "modifiers/modifier_minor_ability_upgrades.lua", LUA_MODIFIER_MOTION_NONE)

if isadmin[steamAccountID] then
    if message == "^-reload" then
    if not lastMessage4CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage4CommandTime[iPlayerID] >= cooldownTime) then
    local hero = player:GetAssignedHero()
      if hero then
        hero:RemoveModifierByName("modifier_minor_ability_upgrades")
        hero:AddNewModifier(hero, nil, "modifier_minor_ability_upgrades", {})
      end
      		lastMessage4CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage4, nil)

local lastMessage5CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage5(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 50
if Mediumadmin[steamAccountID] then
cooldownTime = 25
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if isadmin[steamAccountID] then
    if string.sub(message, 1, 6) == "^-item" then
        if not lastMessage5CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage5CommandTime[iPlayerID] >= cooldownTime) then
        local itemName = string.sub(message, 8)
		print("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. itemName)
        local player = PlayerResource:GetPlayer(iPlayerID)
        local hero = player:GetAssignedHero()
    local item = CreateItem("item_"..itemName, hero, hero)
    hero:AddItem(item)
    end
    lastMessage5CommandTime[iPlayerID] = GameRules:GetGameTime()
end
end
end
ListenToGameEvent("player_chat", OnChatMessage5, nil)

local lastMessage6CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage6(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 100
if Mediumadmin[steamAccountID] then
cooldownTime = 50
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if isadmin[steamAccountID] then
    if string.sub(message, 1, 6) == "^-it10" then
        if not lastMessage6CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage6CommandTime[iPlayerID] >= cooldownTime) then
        local itemName = string.sub(message, 8)
		print("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. itemName)
local player = PlayerResource:GetPlayer(iPlayerID)
local hero = player:GetAssignedHero()
local items = {itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName} -- список предметов для выдачи

for _, itemName in pairs(items) do
    local item = CreateItem("item_"..itemName, hero, hero)
    hero:AddItem(item)
end
lastMessage6CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage6, nil)

local lastMessage7CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage7(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 150
if Mediumadmin[steamAccountID] then
cooldownTime = 75
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if isadmin[steamAccountID] then
    if string.sub(message, 1, 6) == "^-it30" then
        if not lastMessage7CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage7CommandTime[iPlayerID] >= cooldownTime) then
        local itemName = string.sub(message, 8)
		print("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. itemName)
local player = PlayerResource:GetPlayer(iPlayerID)
local hero = player:GetAssignedHero()
local items = {itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName,itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName,itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName, itemName} -- список предметов для выдачи

for _, itemName in pairs(items) do
    local item = CreateItem("item_"..itemName, hero, hero)
    hero:AddItem(item)
end
lastMessage7CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage7, nil)

local lastMessage8CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage8(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
if Mediumadmin[steamAccountID] or Highadmin[steamAccountID] then
      if message == "^-wtf" then
            local hHero = PlayerResource:GetSelectedHeroEntity(iPlayerID)
            LinkLuaModifier("modifier_wtf", "modifiers/test/modifier_wtf.lua", LUA_MODIFIER_MOTION_NONE)
            if hHero:HasModifier("modifier_wtf") then
                hHero:RemoveModifierByName("modifier_wtf")
            else
                hHero:AddNewModifier(hHero, nil, "modifier_wtf", { duration = 3600 })
            end
            return
    end
end
end
ListenToGameEvent("player_chat", OnChatMessage8, nil)

local lastMessage9CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage9(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 5
if Mediumadmin[steamAccountID] then
cooldownTime = 600
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if Mediumadmin[steamAccountID] or Highadmin[steamAccountID] then
      if message == "^-int" then
	if not lastMessage9CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastMessage9CommandTime[iPlayerID] >= cooldownTime) then
		print("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. "10 Книг инты")
local player = PlayerResource:GetPlayer(iPlayerID)
local hero = player:GetAssignedHero()
local items = {"item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3","item_tome_of_intelligence3"} -- список предметов для выдачи

for _, itemName in pairs(items) do
    local item = CreateItem(itemName, hero, hero)
    hero:AddItem(item)
end
lastMessage9CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage9, nil)

local lastessage10CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage10(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 5
if Mediumadmin[steamAccountID] then
cooldownTime = 600
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if Mediumadmin[steamAccountID] or Highadmin[steamAccountID] then
      if message == "^-agi" then
	if not lastessage10CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastessage10CommandTime[iPlayerID] >= cooldownTime) then
		say("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. "10 Книг ловкости" .. " КД " .. cooldownTime .." СЕК ")
local player = PlayerResource:GetPlayer(iPlayerID)
local hero = player:GetAssignedHero()
local items = {"item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3","item_tome_of_agility3"} -- список предметов для выдачи

for _, itemName in pairs(items) do
    local item = CreateItem(itemName, hero, hero)
    hero:AddItem(item)
end
lastessage10CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage10, nil)

local lastessage11CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage11(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 5
if Mediumadmin[steamAccountID] then
cooldownTime = 600
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if Mediumadmin[steamAccountID] or Highadmin[steamAccountID] then
      if message == "^-str" then
	if not lastessage11CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastessage11CommandTime[iPlayerID] >= cooldownTime) then
		print("Админ:" .. isadmin[steamAccountID] .. " Выдал:" .. "10 Книг силы")
local player = PlayerResource:GetPlayer(iPlayerID)
local hero = player:GetAssignedHero()
local items = {"item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3","item_tome_of_strength3"} -- список предметов для выдачи

for _, itemName in pairs(items) do
    local item = CreateItem(itemName, hero, hero)
    hero:AddItem(item)
end
lastessage11CommandTime[iPlayerID] = GameRules:GetGameTime()
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage11, nil)

local lastMessageCommandTime = {}  -- Table to store the last time the command was used for each player
local discordWebhookUrl = "https://discord.com/api/webhooks/1254893910220607519/F4Ef5V91SEPjPnRvCGZYZJvHSa-zz1TQcsdoWWw5Xw1yUG04O8sbzsUPZqq1Q7-G1G5G"

function OnChatMessage12(keys)
    local message = keys.text
    local playerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(playerID)
    local cooldownTime = 600
    if Mediumadmin[steamAccountID] then
        cooldownTime = 300
    end
    if Highadmin[steamAccountID] then
        cooldownTime = 0
    end
    if isadmin[steamAccountID] and message == "^-exp" then
        if not lastMessageCommandTime[playerID] or (GameRules:GetGameTime() - lastMessageCommandTime[playerID] >= cooldownTime) then
            local player = PlayerResource:GetPlayer(playerID)
            local hero = player:GetAssignedHero()
            local items = {"item_tome_of_knowledge", "item_tome_of_knowledge", "item_tome_of_knowledge", "item_tome_of_knowledge", "item_tome_of_knowledge"}
            for _, itemName in pairs(items) do
                local item = CreateItem(itemName, hero, hero)
                hero:AddItem(item)
            end
            lastMessageCommandTime[playerID] = GameRules:GetGameTime()
            -- Send message to Discord
            SendToDiscord(discordWebhookUrl, "Администратор с ID " .. isadmin[steamAccountID] .. steamAccountID .. " выдал 5 Книг опыта")
        end
    end
end

ListenToGameEvent("player_chat", OnChatMessage12, nil)

-- Функция для отправки HTTP-запроса через вебхук Discord
function SendToDiscord(webhookUrl, message)
    -- Создаем тело запроса
    local requestData = {
        ["content"] = message
    }

    -- Преобразуем данные в JSON
    local jsonData = json.encode(requestData)

    -- Создаем запрос
    local request = CreateHTTPRequestScriptVM("POST", webhookUrl)
    request:SetHTTPRequestHeaderValue("Content-Type", "application/json")
    request:SetHTTPRequestRawPostBody("application/json", jsonData)

    -- Отправляем запрос и обрабатываем ответ
    request:Send(function(result)
        if result["StatusCode"] == 204 then
            print("Сообщение успешно отправлено")
        else
            print("Ошибка при отправке сообщения: " .. tostring(result["StatusCode"]))
        end
    end)
end

-- Функция для отправки сообщений в Telegram
function SendToTelegram(chat_id, text)
    local botToken = "7300654721:AAFtgOfstnbztqxA52ao56dDks1pTebajMg"  -- Замените на токен вашего бота
    local url = "https://api.telegram.org/bot" .. botToken .. "/sendMessage"

    -- Создание HTTP-запроса через API Panorama
    local request = CreateHTTPRequestScriptVM("POST", url)
    request:SetHTTPRequestHeaderValue("Content-Type", "application/json")
    request:SetHTTPRequestRawPostBody("application/json", json.encode({
        chat_id = "-1002225222066",
        text = text,
        parse_mode = "Markdown"
    }))

    -- Отправка запроса и обработка ответа
    request:Send(function(response)
        if response.StatusCode == 200 then
            print("Сообщение успешно отправлено в Telegram")
        else
            print("Ошибка при отправке сообщения: " .. response.StatusCode)
        end
    end)
end

-- Таблица для хранения времени последнего использования команды -adm для каждого игрока
local lastessage13CommandTime = {}

-- Функция для обработки сообщений чата
function OnChatMessage13(keys)
    local message = keys.text
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
    local cooldownTime = 60

    -- Проверка уровня администратора и установка соответствующего времени ожидания
    if Mediumadmin[steamAccountID] then
        cooldownTime = 30
    end
    if Highadmin[steamAccountID] then
        cooldownTime = 0
    end

    -- Выдача предмета администратору, если он имеет права и команда не находится в ожидании
    if isadmin[steamAccountID] then
        if message == "^-adm" then
            if not lastessage13CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastessage13CommandTime[iPlayerID] >= cooldownTime) then
                local player = PlayerResource:GetPlayer(iPlayerID)
                local hero = player:GetAssignedHero()
                local items = {"item_tome_of_admin"}
                for _, itemName in pairs(items) do
                    local item = CreateItem(itemName, hero, hero)
                    hero:AddItem(item)
                end
                lastessage13CommandTime[iPlayerID] = GameRules:GetGameTime()

                -- Отправка сообщения в Telegram              
                local itemName = "книгу админа" -- Название выданного предмета
                local text = "Админ " .. isadmin[steamAccountID] .. " выдал себе " .. itemName
                SendToTelegram(chat_id, text) -- Вызов функции отправки сообщения
            end
        end
    end
end


-- Подписка на событие чата
ListenToGameEvent("player_chat", OnChatMessage13, nil)

local lastessage14CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage14(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
if isadmin[steamAccountID] then
      if message == "^-manacost" then
            local hHero = PlayerResource:GetSelectedHeroEntity(iPlayerID)
            LinkLuaModifier("modifier_manacost", "modifiers/test/modifier_manacost.lua", LUA_MODIFIER_MOTION_NONE)
            if hHero:HasModifier("modifier_manacost") then
                hHero:RemoveModifierByName("modifier_manacost")
            else
                hHero:AddNewModifier(hHero, nil, "modifier_manacost", { duration = 3600 })
            end
            return
    end
end
end
ListenToGameEvent("player_chat", OnChatMessage14, nil)

local lastessage16CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage16(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
local cooldownTime = 15
if Mediumadmin[steamAccountID] then
cooldownTime = 5
end
if Highadmin[steamAccountID] then
cooldownTime = 0
end
if isadmin[steamAccountID] then
      if message == "^-refresh" then
      if not lastessage16CommandTime[iPlayerID] or (GameRules:GetGameTime() - lastessage16CommandTime[iPlayerID] >= cooldownTime) then
            local hHero = PlayerResource:GetSelectedHeroEntity(iPlayerID)
	if hHero:IsAlive() then 
		hHero:SetHealth(hHero:GetMaxHealth())
		hHero:SetMana(hHero:GetMaxMana())
	end 

	my_game:RefreshCooldowns(hHero)
lastessage16CommandTime[iPlayerID] = GameRules:GetGameTime()
            return
    end
end
end
end
ListenToGameEvent("player_chat", OnChatMessage16, nil)

local lastessage17CommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessage17(keys)
    local message = keys.text
    local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
    if steamAccountID == 1240907382 then
        if message == "^-god" then
            local hHero = PlayerResource:GetSelectedHeroEntity(iPlayerID)
            LinkLuaModifier("modifier_godmode", "modifiers/test/modifier_godmode.lua", LUA_MODIFIER_MOTION_NONE)
            if hHero:HasModifier("modifier_godmode") then
                hHero:RemoveModifierByName("modifier_godmode")
            else
                hHero:AddNewModifier(hHero, nil, "modifier_godmode", { duration = 3600 })
            end
        end
    end
end
ListenToGameEvent("player_chat", OnChatMessage17, nil)

local lastssageModCommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessageMod(keys)
    local message = keys.text
    local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
    if steamAccountID == 1240907382 then
        if message == "^-mod" then
            local hHero = PlayerResource:GetSelectedHeroEntity(iPlayerID)
				ListModifiers(hHero)
        end
    end
end
ListenToGameEvent("player_chat", OnChatMessageMod, nil)



local lastessageDSCommandTime = {}  -- Table to store the last time the gold command was used for each player

function OnChatMessageDS(keys)
    local message = keys.text
local playerID2 = keys.playerid
    local iPlayerID = keys.playerid
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
if isadmin[steamAccountID] then
      if message == "!ds" then
GameRules:SendCustomMessage("<font color='#4682B4'>Дискорд кастомки:</font> <font color='#00BFFF'>[url=https://discord.gg/2wS4JNBDJy] Ссылка [/url]</font>", 0, 0)
print('https://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy\nhttps://discord.gg/2wS4JNBDJy')
            return
    end
end
end
ListenToGameEvent("player_chat", OnChatMessageDS, nil)


function OnConnected1(keys)
    local iPlayerID = keys.PlayerID
    local steamAccountID = PlayerResource:GetSteamAccountID(iPlayerID)
    local playerId1 = keys.PlayerID
    local playerName = PlayerResource:GetPlayerName(playerId1)

if isadmin[steamAccountID] then
Timers:CreateTimer(10, function()
	if steamAccountID == 1240907382 then
		GameRules:SendCustomMessage("<font color='#51E3FF'>В лобби присутствует создатель: </font>" .. "<font color='#009AB9'>"..playerName.."</font>", 0, 0) --  FF6666 --  
    end
    if Lowadmin[steamAccountID] then
    	GameRules:SendCustomMessage("<font color='#FFA07A'>В лобби присутствует админ низкого класса: </font>" .. "<font color='#FF6666'>"..playerName.."</font>".. "<font color='#FFA07A'>  (ID: "..steamAccountID..")</font>", 0, 0)
    end
    if Mediumadmin[steamAccountID] then
    	GameRules:SendCustomMessage("<font color='#CD5C5C'>В лобби присутствует админ среднего класса: </font>" .. "<font color='#FF6666'>"..playerName.."</font>".. "<font color='#CD5C5C'>  (ID: "..steamAccountID..")</font>", 0, 0)
    end
    if Highadmin[steamAccountID] then
    	GameRules:SendCustomMessage("<font color='#FF0000'>В лобби присутствует админ высшего класса: </font>" .. "<font color='#FF6666'>"..playerName.."</font>".. "<font color='#FF0000'>  (ID: "..steamAccountID..")</font>", 0, 0)
    end
end)
end
if ActiveSteamAccountID[steamAccountID] then
Timers:CreateTimer(10, function()
	GameRules:SendCustomMessage("<font color='#FFA500'>В лобби присутствует активный пользователь: </font>" .. "<font color='#FF8C00'>"..playerName.."</font>".. "<font color='#FF0000'></font>", 0, 0)
end)
end
end
ListenToGameEvent("player_connect_full", OnConnected1, nil)


ListenToGameEvent("entity_killed", function(keys)
    local victim = EntIndexToHScript(keys.entindex_killed)
    local attacker = EntIndexToHScript(keys.entindex_attacker)
    if attacker and attacker:IsRealHero() then
    	if victim and victim:IsRealHero() then
if BUTTINGS.RANDOMKIILLS_OPTIONS.KILLSFORRANDOM_ON.VALUE == 1 then
        if attacker:GetKills() % BUTTINGS.RANDOMKIILLS_OPTIONS.KILLSFORRANDOM.VALUE == 0 then
        attacker:RemoveModifierByName("modifier_minor_ability_upgrades")
        attacker:AddNewModifier(attacker, nil, "modifier_minor_ability_upgrades", {})
        end
    end
end
end
end, nil)


function CAddonTemplateGameMode:OnEntityKilled( keys )
    local Unit = EntIndexToHScript( keys.entindex_killed )
    if Unit:IsHero() then
        local respawntime = Unit:GetLevel()*2
        Unit:SetTimeUntilRespawn( respawntime )
        
        if respawntime > 20 then
        Unit:SetTimeUntilRespawn( 10 )
        end
    end
end

ListenToGameEvent('entity_killed', function(event)
    local killedUnit = EntIndexToHScript(event.entindex_killed)
    if killedUnit and killedUnit:IsRealHero() and (GameRules:GetGameTime() - killedUnit:GetRespawnTime()) > 30 then
        killedUnit:RespawnUnit()
    end
end, nil)
ListenToGameEvent("dota_player_killed",function(keys)
	-- for k,v in pairs(keys) do print("dota_player_killed",k,v) end
	local playerID = keys.PlayerID
	local heroKill = keys.HeroKill
	local towerKill = keys.TowerKill


end, nil)

ListenToGameEvent("entity_killed", function(keys)
	-- for k,v in pairs(keys) do	print("entity_killed",k,v) end
	local attackerUnit = keys.entindex_attacker and EntIndexToHScript(keys.entindex_attacker)
	local killedUnit = keys.entindex_killed and EntIndexToHScript(keys.entindex_killed)
	local damagebits = keys.damagebits -- This might always be 0 and therefore useless

end, nil)

ListenToGameEvent("entity_hurt", function(keys)
	-- for k,v in pairs(keys) do print("entity_hurt",k,v) end
	local damage = keys.damage
	local attackerUnit = keys.entindex_attacker and EntIndexToHScript(keys.entindex_attacker)
	local victimUnit = keys.entindex_killed and EntIndexToHScript(keys.entindex_killed)
	local damagebits = keys.damagebits -- This might always be 0 and therefore useless

end, nil)

ListenToGameEvent("dota_player_gained_level", function(keys)
	-- for k,v in pairs(keys) do print("dota_player_gained_level",k,v) end
	local newLevel = keys.level
	local playerEntindex = keys.player
	local playerUnit = EntIndexToHScript(playerEntindex)
	local heroUnit = playerUnit:GetAssignedHero()
	
end, nil)

ListenToGameEvent("dota_player_used_ability", function(keys)
	-- for k,v in pairs(keys) do print("dota_player_used_ability",k,v) end
	local casterUnit = keys.caster_entindex and EntIndexToHScript(keys.caster_entindex)
	local abilityname = keys.abilityname
	local playerID = keys.PlayerID
	local player = keys.PlayerID and PlayerResource:GetPlayer(keys.PlayerID)
	-- local ability = casterUnit and casterUnit.FindAbilityByName and casterUnit:FindAbilityByName(abilityname) -- bugs if hero has 2 times the same ability

end, nil)

ListenToGameEvent("last_hit", function(keys)
	-- for k,v in pairs(keys) do print("last_hit",k,v) end
	local killedUnit = keys.EntKilled and EntIndexToHScript(keys.EntKilled)
	local playerID = keys.PlayerID
	local firstBlood = keys.FirstBlood
	local heroKill = keys.HeroKill
	local towerKill = keys.TowerKill

end, nil)

ListenToGameEvent("dota_tower_kill", function(keys)
	-- for k,v in pairs(keys) do print("dota_tower_kill",k,v) end
	local gold = keys.gold
	local towerTeam = keys.teamnumber
	local killer_userid = keys.killer_userid

end, nil)

------------------------------------------ example --------------------------------------------------

ListenToGameEvent("this_is_just_an_example", function(keys)
	local targetUnit = EntIndexToHScript(keys.entindex)

	local neighbours = FindUnitsInRadius(
		targetUnit:GetTeam(), -- int teamNumber, 
		targetUnit:GetAbsOrigin(), -- Vector position, 
		false, -- handle cacheUnit, 
		1000, -- float radius,
		DOTA_UNIT_TARGET_TEAM_FRIENDLY, -- int teamFilter, 
		DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_CREEP, -- int typeFilter, 
		DOTA_UNIT_TARGET_FLAG_NOT_ILLUSIONS + DOTA_UNIT_TARGET_FLAG_FOW_VISIBLE, -- int flagFilter, 
		FIND_ANY_ORDER, -- int order, 
		false -- bool canGrowCache
	)

	for n,neighUnit in pairs(neighbours) do

		ApplyDamage({
			victim = neighUnit,
			attacker = targetUnit,
			damage = 100,
			damage_type = DAMAGE_TYPE_MAGICAL,
			damage_flags = DOTA_DAMAGE_FLAG_NON_LETHAL,
			ability = nil
		})

		neighUnit:AddNewModifierButt(
			targetUnit, -- handle caster, 
			nil, -- handle optionalSourceAbility, 
			"someweirdmodifier", -- string modifierName, 
			{duration = 5} -- handle modifierData
		)

	end
end, nil)

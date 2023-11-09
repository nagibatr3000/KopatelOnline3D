
local RetardNames = {
"darknesssoulz", "darkqlossed",
"dxrk", "DarkPassengeR",
"Lastxbreath", "BrokenBenis",
"cum.cnsumr764", "negr",
"analpounding", "kek",
"ded insaid", "nococknolife",
"cp.lover", "plack benis",
"Andrew.Tate", "shetookThekids",
"sexdefender", "I RAN OVER A WOMAN",
"balls", "sexender",
"TheCumSponge", "metalpipeinmyass",
"Cockerminater", "Heil.GermanRick",
"Dick.Grabber", "steve",
"NoseHair69", "Ass.Hair420",
"Chairdolf Sitler",
"Dick", "Pong.Lenis",
"BoyKisser", "moaner",
"BigMoistVachina", "black.ass",
"Dickson", "Vibraroriator",
"daddy", "Harddick",
"OwO", "UwU",
"gaynigger", "Gundonchik",
"MC.NIGGA", "R1CH GAY",
"joe", "cheesepizza",
"your moms", 
"Notch", "dick.sucker123", 
"bigblackcocks", "ass2break", 
"black", "dick2suck", 
"minecraft", "creeper", 
"saksyk", "kys", 
"gayman666", "pon", 
"cumdr1nk3r", "ass", 
"boobs", "retard", 
"down", "huligun", 
"blackfeet", "MrS3x0ffender", 
"1x1x1x1", "Eod Nhoj",
"boobers39", "heroinlover100",
"addicted2drugs", "ProKiller08",
"DA BLACK"
}
--[[
function fix()
	settings().Rendering.frameRateManager = 2
	settings().Rendering.graphicsMode = 2
	pcall(function() settings().Diagnostics:LegacyScriptMode() end)
	settings().Diagnostics.LuaRamLimit = 0
end

fix()
--]]
pcall(function() dofile("rbxasset://GlobalVariables.lua") end) -- damnn
pcall(function() dofile("rbxasset://scripts//Settings.lua") end)

local PlayerName = RetardNames[math.random(1,#RetardNames)]

-- Services
local Visit = game:service("Visit")
local Players = game:service("Players")
local RunService = game:service("RunService")

-- Create Player
local player = game.Players.LocalPlayer

local function ReloadCharacter() pcall(function() dofile("rbxasset://scripts//CharacterHandler.lua") end) end

if not player then
	player = game.Players:createLocalPlayer(0)
    player:SetSuperSafeChat(false);
	player.CharacterAppearance = 0
	if _G.RetardPlayerNames then
		player.Name = PlayerName
	end
end

local function waitForChild(parent,childName)
	local child
	
	while true do
		child = parent:findFirstChild(childName)
		
		if child then
			break
		else
			parent.ChildAdded:wait()
		end
	end
	
	return child
end

local function onChanged(property)
	if property == "Character" then
		local humanoid = waitForChild(player.Character, "Humanoid")
		
		humanoid.Died:connect(function ()
			wait(5)
			player:LoadCharacter()
			ReloadCharacter()
		end)
	end
end

player.Changed:connect(onChanged)
player:LoadCharacter()
-- Start the game.
RunService:run()
ReloadCharacter()
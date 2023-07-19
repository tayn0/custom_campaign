--[[

THIS IS A TEST
Event Scripting: 
Ported to LUA: 
Date: 7-11-2021
Description: Campagin mission  ported to LUA
References:
1. https:--steamcommunity.com-sharedfiles-filedetails-?id=1488402495
2. https:www.lua.org-docs.html
]] --

require("test")
dofile("test.lua")

local M = {

	--bools
	
	
	
	--handles
	player,
	
	--floats
	TurnCounter = 0
   
} --End Mission



function Start() --This function is called upon the first frame

	M.player = GetPlayerHandle()
	M.prec = GetHandle("unnamed_ibrecy")
	
	PreloadODF("fvwalk_vsr")
	
	--M.mauler1 = BuildObject("fvwalk_vsr", 6, "maulerspawn1")
	--M.mauler2 = BuildObject("fvwalk_vsr", 6, "maulerspawn1")
	--M.mauler3 = BuildObject("fvwalk_vsr", 6, "maulerspawn1")
	
	--M.mauler4 = BuildObject("fvwalk_vsr", 6, "maulerspawn2")
	--M.mauler5 = BuildObject("fvwalk_vsr", 6, "maulerspawn2")
	--M.mauler6 = BuildObject("fvwalk_vsr", 6, "maulerspawn2")
	
	--M.mauler7 = BuildObject("fvwalk_vsr", 6, "maulerspawn3")
	--M.mauler8 = BuildObject("fvwalk_vsr", 6, "maulerspawn3")
	--M.mauler9 = BuildObject("fvwalk_vsr", 6, "maulerspawn3")

	--Goto(M.mauler1, M.prec)
	--Attack(M.mauler2, M.prec)
	--Attack(M.mauler9, M.prec)
	--Attack(M.mauler4, M.prec)
	
	Salutations()


end






function Update() --This function runs on every frame.

	M.TurnCounter = M.TurnCounter + 1

	missionCode() --Calling our missionCode function in Update.
end

function missionCode() --

	M.player = GetPlayerHandle()

 	
end

function AddObject(h) --This function is called when an object appears in the game. --


	
end


function DeleteObject(h) --This function is called when an object is deleted in the game.


end


function Save()
   return M
end

function Load(...)
   if select("#", ...) > 0 then
      M = ...
   end
end

function InitialSetup()
	M.TPS = EnableHighTPS()
	AllowRandomTracks(true)
end

--[[

ISDF01
]] --
local M = {

	--bools
	
	
	
	--handles
	player,
	
	--floats
	TurnCounter = 0
   
} --End Mission

function Save()
   return M
end

function Load(...)
   if select("#", ...) > 0 then
      M = ...
   end
end

function Start() --This function is called upon the first frame

	M.player = GetPlayerHandle()
	

end

function AddObject(h) --This function is called when an object appears in the game. --


	
end


function DeleteObject(h) --This function is called when an object is deleted in the game.
end

function InitialSetup()
	M.TPS = EnableHighTPS()
	AllowRandomTracks(true)
end



function Update() --This function runs on every frame.

	M.TurnCounter = M.TurnCounter + 1

	missionCode() --Calling our missionCode function in Update.
end

function missionCode() --

	M.player = GetPlayerHandle()
	



 	
end
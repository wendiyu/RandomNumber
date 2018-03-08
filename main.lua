-----------------------------------------------------------------------------------------
-- main.lua
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
-- random number
-----------------------------------------------------------------------------------------

local instructionsText = display.newText( "Pick the number from 1 to 6 ", 800, 200, native.systemFont, 120 )
local numberTextField = native.newTextField( display.contentCenterX -500 , display.contentCenterY -300 , 650, 150)
numberTextField.id = "number to guess"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 400
enterButton.y = display.contentCenterY - 300
enterButton.id = "enter button"



local function randomNumber ( event )
	-- body
	math.randomseed( os.time())
	local randomText = math.random ( 1, 6 ) 
	print(randomNumber)
	local numberUser = tonumber(numberTextField)
	local answer

	if randomText == numberUser then
		answer = display.newText( "Correct! You get it!" .. randomText, 600, 1150, native.systemFont, 100 )
	else
		answer = display.newText( "Sorry, the number is " .. randomText, 600, 1150, native.systemFont, 100 )
	end

end

enterButton:addEventListener("touch", randomNumber)
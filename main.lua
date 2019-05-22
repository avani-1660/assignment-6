-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)
--------------------

display.setDefault("background", 255/255, 214/255, 200/255)
-------------------



-- Text field for user to enter a number
-------------------
local userNumberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 125, 200, 50 )
userNumberTextField.id = "userNumberTextField"
-------------------

--  
-------------------
local calculateButton = display.newImageRect( "assets/calculate.png", 200, 85 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 10
calculateButton.id = "calculate button"
-------------------



local valueOfPiTextField = display.newText( "Value of pi", display.contentCenterX, display.contentCenterY + 250, native.systemFont, 25 )
valueOfPiTextField.id = "valueOfPi textField"
valueOfPiTextField:setFillColor(0 )
-------------------


-----------------------------------------------------------------------
local function calculateButtonTouch ( event )

local ittereations
local mathNumbers
local answer

answer = 0
ittereations = tonumber(userNumberTextField.text) 
mathNumbers = -1 

for math = 1, ittereations, 1 do
	mathNumbers = mathNumbers*-1
	answer = answer + 4/(2*math-1)*mathNumbers
	valueOfPiTextField.text = ("Answer: "..answer)

end 


if tonumber(userNumberTextField.text) < 0 then
	valueOfPiTextField.text = ("Enter a positive number")
end
end
-----------------------------------------------------------------------

--Event listener for the calculate button
calculateButton:addEventListener( "touch", calculateButtonTouch )


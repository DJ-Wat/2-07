-----------------------------------------------------------------------------------------

--

-- how to calculate the price of a pizza

-- DJ Watson, February 21 2019

-----------------------------------------------------------------------------------------



local radOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 250, 55 )

radOfPizzaTextField.id = "rad textFieldA"



local costOfPizzaTextField = display.newText( "Pizza Price Calculator", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )

costOfPizzaTextField.id = "cost textField"

costOfPizzaTextField:setFillColor( 1, 1, 1 )


local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 157, 157 )


calculateButton.x = display.contentCenterX

calculateButton.y = display.contentCenterY

calculateButton.id = "calculate button"

 function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

local function calculateButtonTouch( event )

    -- this function calculates the cost of a pizza given the length of one of its sides

 

    local radOfPizza
    local costOfPizza

 

    radOfPizza = radOfPizzaTextField.text

    costOfPizza = ((radOfPizza * 2)* 0.5 + 1.75)*1.13

    -- printcostOfPizza

    costOfPizzaTextField.text = "The cost is $" .. round(costOfPizza,2)



    return true

end



calculateButton:addEventListener( "touch", calculateButtonTouch )
-- Assignment 3 
-- Created by : Omar Aly
-- Date : April 4th 2019


display.setDefault( "background", 145/255, 145/255, 239/255 )



local myText = display.newText( "Order a Pizza", 160, -20, native.systemFont, 20 )

myText:setFillColor( 255/255, 255/255, 255/255 )




local calculateButton1 = display.newImageRect( "assets/images/order.png", 200, 100 )

calculateButton1.x = 160

calculateButton1.y = 50

calculateButton1.id = "calculate button"




local images = display.newImageRect( "assets/images/pizzaclipart.png", 100, 100 )

images.x = 160

images.y = 150




local myText = display.newText( "Size of Pizza:", 160, 225, native.systemFont, 30 )

myText:setFillColor( 255/255, 255/255, 255/255 )



local calculateButton2 = display.newImageRect( "assets/images/large.png", 100, 50 )

calculateButton2.x = 85

calculateButton2.y = 270

calculateButton2.id = "large button"



local calculateButton3 = display.newImageRect( "assets/images/extralarge.png", 100, 50 )

calculateButton3.x = 235

calculateButton3.y = 270

calculateButton3.id = "extra large button"




local myText = display.newText( "Number of Toppings:", 160, 320, native.systemFont, 30 )

myText:setFillColor( 255/255, 255/255, 255/255 )



local calculateButton4 = display.newImageRect( "assets/images/one.png", 40, 40 )

calculateButton4.x = 85

calculateButton4.y = 370

calculateButton4.id = "one button"



local calculateButton5 = display.newImageRect( "assets/images/two.png", 40, 40 )

calculateButton5.x = 235

calculateButton5.y = 370

calculateButton5.id = "two button"



local calculateButton6 = display.newImageRect( "assets/images/three.png", 40, 40 )

calculateButton6.x = 85

calculateButton6.y = 420

calculateButton6.id = "three button"



local calculateButton7 = display.newImageRect( "assets/images/four.png", 40, 40 )

calculateButton7.x = 235

calculateButton7.y = 420

calculateButton7.id = "four button"




local costOfPizzaTextField = display.newText( "Total Cost $ :", display.contentCenterX, display.contentCenterY + 265, native.systemFont, 25 )

costOfPizzaTextField.id = "total cost textField"

costOfPizzaTextField:setFillColor( 1, 1, 1 )




local subtotalOfPizzaTextField = display.newText( "Subtotal :", display.contentCenterX, display.contentCenterY + 215, native.systemFont, 25 )

subtotalOfPizzaTextField.id = "subtotal textField"

subtotalOfPizzaTextField:setFillColor( 1, 1, 1 )




local taxOfPizzaTextField = display.newText( "Tax :", display.contentCenterX, display.contentCenterY + 240, native.systemFont, 25 )

taxOfPizzaTextField.id = "subtotal textField"

taxOfPizzaTextField:setFillColor( 1, 1, 1 )



--Global Variables

sizeOfPizza = 0


numberOfToppings = 0

function calculateCosts ()

	local subtotal = sizeOfPizza + numberOfToppings
	local tax = subtotal * 0.13
	taxOfPizzaTextField.text = tostring("Tax: ".. tax)
	local total = subtotal + tax
	subtotalOfPizzaTextField.text = tostring("Subtotal ".. subtotal)
    costOfPizzaTextField.text = tostring("Total Cost ".. total)

end

        


function calculateButtonTouch2 ( event )

	sizeOfPizza = 6

	print "large pizza will be ready"

	calculateCosts ()

	return true

end



function calculateButtonTouch3 ( event )

	sizeOfPizza = 10

	calculateCosts ()

	print "extra large pizza will be ready"

end



function calculateButtonTouch4 ( event )

	numberOfToppings = 1

    calculateCosts ()

	print "1 topping will be ready"

end



function calculateButtonTouch5 ( event )

	numberOfToppings = 1.75

	calculateCosts ()

	print "2 toppings will be ready"

end



function calculateButtonTouch6 ( event )

	numberOfToppings = 2.50

	calculateCosts ()

	print "3 toppings requested"

end



function calculateButtonTouch7 ( event )

	numberOfToppings = 3.35

	calculateCosts ()

	print "4 toppings requested"

end



--The function related to calculating the price of the pizza when the order button is pressed

function calculateButtonTouch1( event )  

    costOfPizza = (sizeOfPizza + numberOfToppings)*1.13

costOfPizzaTextField.text = "The total cost is $" .. costOfPizza

	subTotal = (sizeOfPizza + numberOfToppings)

subtotalOfPizzaTextField.text = "The subtotal is $" .. subTotal 

taxOfPizzaTextField.text = "The tax is 13%"

print "order will be ready for you"

end



--The event listeners watching to see if any of the buttons are pressed   

calculateButton1:addEventListener( "touch", calculateButtonTouch1 )



calculateButton2:addEventListener( "touch", calculateButtonTouch2 )



calculateButton3:addEventListener( "touch", calculateButtonTouch3 )



calculateButton4:addEventListener( "touch", calculateButtonTouch4 )



calculateButton5:addEventListener( "touch", calculateButtonTouch5 )



calculateButton6:addEventListener( "touch", calculateButtonTouch6 )



calculateButton7:addEventListener( "touch", calculateButtonTouch7 )
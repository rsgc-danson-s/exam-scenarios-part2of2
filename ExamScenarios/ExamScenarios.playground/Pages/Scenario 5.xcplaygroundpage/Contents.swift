//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// make background
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

func arrow (x: Int, y: Int, toX: Int, toY:Int) {
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.orange
    if x==y {canvas.fillColor = Color.white
    }
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 50, height: 20)
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 20, height: 50)
    canvas.defaultLineWidth = 20
    canvas.lineColor = Color.orange
    if x==y {canvas.lineColor = Color.white
    }
    canvas.drawLine(fromX: x+25, fromY: y+25, toX: toX, toY: toY)
}

for x in stride(from: 0, to: 400, by: 80){
arrow(x: x, y: 0, toX: x+55, toY: 55)
  arrow(x: x, y: 80, toX: x+55, toY: 134)
    arrow(x: x, y: 160, toX: x+55, toY: 214)
    arrow(x: x, y: 240, toX: x+55, toY: 294)
    arrow(x: x, y: x, toX: x+55, toY: x+55)
}

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

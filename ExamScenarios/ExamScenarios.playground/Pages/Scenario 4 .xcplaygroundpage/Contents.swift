//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velocity Girl](VelocityGirl.png "Velocity Girl")
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

// Color constants
let offWhite = Color(hue: 87, saturation: 6, brightness: 88, alpha: 100)
let yellow = Color(hue: 37, saturation: 93, brightness: 98, alpha: 100)
let pink = Color(hue: 326, saturation: 99, brightness: 93, alpha: 100)
let blue = Color(hue: 240, saturation: 80, brightness: 50, alpha: 50)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)

// draw background
canvas.fillColor = Color.init(hue: 87, saturation: 6, brightness: 88, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

for x in stride(from: 10, to: 495, by: 95){
    for y in stride(from: -20, to: 455, by: 95) {
        
        if x + y == -10 || x == 105 && y == 75 || x == 200 && y == 170 || x == 295 && y == 265 || x == 295 && y == 75  || x + y == 750 || x == 390 && y == -20 { canvas.fillColor = Color.init(hue: 37, saturation: 93, brightness: 98, alpha: 100)
        } else {
            canvas.fillColor = Color.init(hue: 326, saturation: 99, brightness: 93, alpha: 100) }
        
        canvas.drawShapesWithBorders = false
        canvas.drawRoundedRectangle(centreX: x, centreY: y, width: 90, height: 90, borderWidth: 1, xRadius: 20, yRadius: 20)
        
        
        canvas.fillColor = blue
        canvas.drawRoundedRectangle(centreX: x - 30 , centreY: y-30, width: 90, height: 90, borderWidth: 1, xRadius: 20, yRadius: 20)
        
    }
}




// Draw a parallelogram
let x = 50
let y = 50

// We need four vertices, create an empty list of NSPoint objects
var points : [NSPoint] = []

//// Add each vertice
//points.append( NSPoint(x: x, y: y) ) // lower left
//points.append( NSPoint(x: x + 20, y: y + 50) ) // upper left
//points.append( NSPoint(x: x + 20 + 50, y: y + 50) ) // upper right
//points.append( NSPoint(x: x + 50, y: y) ) // lower right
//
//// Draw the custom shape
//canvas.fillColor = Color.black
//canvas.drawCustomShape(with: points)


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

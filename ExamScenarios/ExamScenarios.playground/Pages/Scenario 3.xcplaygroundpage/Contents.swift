//: [Next](@next)
//: # Scenario 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![Talking Heads](TalkingHeads.png "Talking Heads")
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

//make background
canvas.fillColor = Color.init(hue: 10, saturation: 85, brightness: 97, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)
func triangle (x: Int, y:Int, toX: Int, toY: Int) {
    for _ in 0...2 {
        if x == y {
        canvas.lineColor = Color.white
            canvas.fillColor = Color.white
        } else { canvas.lineColor = Color.yellow
        canvas.fillColor = Color.yellow}
    canvas.drawLine(fromX: x, fromY: y, toX: toX, toY: toY)
        canvas.drawLine(fromX: x, fromY: y, toX: toX, toY: y)
        canvas.drawLine(fromX: toX, fromY: y, toX: toX, toY: toY)
        }
}
for i in 0...8 {
    let x = 50 * i
    let y = 550 - 100 * i
triangle(x: x, y: 550, toX: x+50, toY: 600)
    triangle(x: x, y: 500, toX: x+50, toY: 550)
    triangle(x: x, y: 450, toX: x+50, toY: 500)
    triangle(x: x, y: 400, toX: x+50, toY: 450)
    triangle(x: x, y: 350, toX: x+50, toY: 400)
    triangle(x: x, y: 300, toX: x+50, toY: 350)
    triangle(x: x, y: 250, toX: x+50, toY: 300)
    triangle(x: x, y: 200, toX: x+50, toY: 250)
    triangle(x: x, y: 150, toX: x+50, toY: 200)
    
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

//: [Previous](@previous) / [Next](@next)
//: # Exercise 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Runaways](TheRunaways.png "The Runaways")
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
//create background
canvas.fillColor = Color.init(hue: 339, saturation: 85, brightness: 91, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)
for i in 0...6 {
    let size = 30 + 57*i
    if i%2 == 0 {
    canvas.borderColor = Color.black
    }
    else { canvas.borderColor = Color.white
    }
    canvas.drawShapesWithFill = false
    canvas.defaultBorderWidth = 15
    canvas.drawRectangle(centreX: 400, centreY: 400, width: size, height: size)
    canvas.drawRectangle(centreX: 0, centreY: 400, width: size, height: size)
    canvas.drawRectangle(centreX: 0, centreY: 0, width: size, height: size)
    canvas.drawRectangle(centreX: 400, centreY: 0, width: size, height: size)
}
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.init(hue: 339, saturation: 85, brightness: 91, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 507, width: 400, height: 200)

canvas.textColor = Color.white
canvas.drawText(message: "the runnaways", size: 50, x: 15, y: 410)




//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

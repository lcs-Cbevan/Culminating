//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
let scale = 10

// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
                         //  y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: scale, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let doubleInteriorAngle = 120
let singleInteriorAngle = 60

//Get Pen in position
turtle.penUp()
turtle.currentPosition()
turtle.forward(steps: 8 * scale)
turtle.left(by: 90)
turtle.forward(steps: 16 * scale)
turtle.right(by: 90)
turtle.drawSelf()

//Draw Top Skeleton
turtle.right(by: 90)
turtle.penDown()
turtle.forward(steps: 7 * scale)

//Draw Right and Left Skeleton
turtle.left(by: 90)
turtle.forward(steps: 4 * scale)
turtle.right(by: 180)
turtle.forward(steps: 8 * scale)

//Draw Bottom Skeleton
turtle.left(by: 180)
turtle.forward(steps: 4 * scale)
turtle.right(by: 90)
turtle.forward(steps: 7 * scale)

//Draw Right Side
turtle.left(by: 149)
turtle.forward(steps: 8 * scale)
turtle.drawSelf()
turtle.left(by: Degrees(singleInteriorAngle))
turtle.forward(steps: 8 * scale + 2)
turtle.currentPosition()

//Draw Left Side
turtle.left(by: Degrees(doubleInteriorAngle))
turtle.forward(steps: 8 * scale)
turtle.currentPosition()
turtle.left(by: Degrees(singleInteriorAngle))
turtle.forward(steps: 8 * scale + 2)
turtle.currentPosition()

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

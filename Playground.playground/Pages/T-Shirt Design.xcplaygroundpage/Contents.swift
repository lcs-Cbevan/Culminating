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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

//Draw Base of Stairs (Use canvas. instead of p.)
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawRectangle(at: Point (x: 100, y: -100), width: 60, height: 10)
//Create Rectangle Variable
canvas.drawShapesWithFill = true
var Rectangle1: [Point] = []
Rectangle1.append(Point(x: 80, y: -100))
Rectangle1.append(Point(x: 80, y: -70))
Rectangle1.append(Point(x: 160, y: -70))
Rectangle1.append(Point(x: 160, y: -90))
Rectangle1.append(Point(x: 100, y: -90))
Rectangle1.append(Point(x: 100, y: -100))
canvas.drawCustomShape(with: Rectangle1)
canvas.drawShapesWithFill = false
var Rectangle2: [Point] = []
Rectangle2.append(Point(x: 60, y: -100))
Rectangle2.append(Point(x: 60, y: -50))
Rectangle2.append(Point(x: 160, y: -50))
Rectangle2.append(Point(x: 160, y: -70))
Rectangle2.append(Point(x: 80, y: -70))
Rectangle2.append(Point(x: 80, y: -100))
canvas.drawCustomShape(with: Rectangle2)
canvas.drawShapesWithFill = true
var Rectangle3: [Point] = []
Rectangle3.append(Point(x: 40, y: -100))
Rectangle3.append(Point(x: 40, y: -30))
Rectangle3.append(Point(x: 160, y: -30))
Rectangle3.append(Point(x: 160, y: -50))
Rectangle3.append(Point(x: 60, y: -50))
Rectangle3.append(Point(x: 60, y: -100))
canvas.drawCustomShape(with: Rectangle3)
canvas.drawShapesWithFill = false
var Rectangle4: [Point] = []
Rectangle4.append(Point(x: 20, y: -100))
Rectangle4.append(Point(x: 20, y: -10))
Rectangle4.append(Point(x: 160, y: -10))
Rectangle4.append(Point(x: 160, y: -30))
Rectangle4.append(Point(x: 40, y: -30))
Rectangle4.append(Point(x: 40, y: -100))
canvas.drawCustomShape(with: Rectangle4)
canvas.drawShapesWithFill = true
var Rectangle5: [Point] = []
Rectangle5.append(Point(x: 0, y: -100))
Rectangle5.append(Point(x: 0, y: 10))
Rectangle5.append(Point(x: 160, y: 10))
Rectangle5.append(Point(x: 160, y: -10))
Rectangle5.append(Point(x: 20, y: -10))
Rectangle5.append(Point(x: 20, y: -100))
canvas.drawCustomShape(with: Rectangle5)
canvas.drawShapesWithFill = false
var Rectangle6: [Point] = []
Rectangle6.append(Point(x: -20, y: -100))
Rectangle6.append(Point(x: -20, y: 30))
Rectangle6.append(Point(x: 160, y: 30))
Rectangle6.append(Point(x: 160, y: 10))
Rectangle6.append(Point(x: 0, y: 10))
Rectangle6.append(Point(x: 0, y: -100))
canvas.drawCustomShape(with: Rectangle6)

    
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

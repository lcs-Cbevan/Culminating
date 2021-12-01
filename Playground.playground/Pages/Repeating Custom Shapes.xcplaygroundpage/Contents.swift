//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
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
//canvas.translate(to: Point(x: canvas.width / 2,
                           //y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

//Custom Shape with Absolute coords
//1. make list of vertices
canvas.fillColor = .black
var Trianglevertices: [Point] = [] //empty list of point instances
Trianglevertices.append(Point(x:0, y:50))
Trianglevertices.append(Point(x:50, y:50))
Trianglevertices.append(Point(x:25, y:60))
canvas.drawCustomShape(with: Trianglevertices)

//Begin writing code
for xPosition in stride(from: 0, through: 350, by: 50){
    for yPositiion in stride(from: 0, through: 550, by: 50){
       
        //Draw Anchor
        canvas.fillColor = .red
        canvas.drawEllipse(at: Point(x:xPosition, y:yPositiion), width: 5, height: 5, borderWidth: 5)
        
        //Draw Tilted Rectangle
        var rectangleVertices: [Point] = []
        rectangleVertices.append(Point(x:xPosition+0, y:yPositiion+30))
        rectangleVertices.append(Point(x:xPosition+20, y:yPositiion+50))
        rectangleVertices.append(Point(x:xPosition+50, y:yPositiion+20))
        rectangleVertices.append(Point(x:xPosition+30, y:yPositiion+0))
        canvas.drawCustomShape(with: rectangleVertices)
    }
}

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

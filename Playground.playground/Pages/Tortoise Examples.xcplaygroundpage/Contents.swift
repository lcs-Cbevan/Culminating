//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Where is the turtle?
turtle.currentPosition()

//Set Scale
let scale = 10

//Arrow diagonal
let aDiagonal = sqrt(Double(scale*scale + scale*scale))

//Move to center
turtle.setPenSize(to: 1)
turtle.setPenColor(to: .black)
turtle.penUp()
turtle.forward(steps: Int(25) * scale)
turtle.left(by: 90)
turtle.forward(steps: Int(25) * scale)
turtle.currentPosition()
turtle.right(by: 90)

//Draw back of arrow
turtle.right(by: 90)
turtle.penDown()
turtle.forward(steps: scale)

//Bottom line of arrow
turtle.left(by: 90)
turtle.forward(steps: Int(5) * scale)

//Point of arrow
turtle.right(by: 90)
turtle.forward(steps: 1 * scale)
turtle.left(by: 135)
turtle.forward(steps: Int(aDiagonal))

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

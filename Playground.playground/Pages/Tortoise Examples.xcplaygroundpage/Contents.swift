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

//Create Grid
canvas.drawAxes(withScale: true, by: 10, color: .black)
/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

//Set Scale
let scale = 10

//Functions:
func turtArrow() {
    t.currentPosition()
    t.currentHeading()
    t.drawSelf()
}

func drawArrow() {
    //Draw back of arrow
    t.right(by: 90)
    t.penDown()
    t.forward(steps: 2 * scale)
    
    turtArrow()

    //Bottom lines of arrow
    t.left(by: 90)
    t.forward(steps: 5 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    
    turtArrow()
    
    //Lower point of arrow
    t.left(by: 135)
    t.forward(steps: 2 * Int(aDiagonal))
    
    turtArrow()

    //Upper point of arrow
    t.left(by: 90)
    t.forward(steps: 2 * Int(aDiagonal))
    turtArrow()

    //Top line of arrow
    t.left(by: 135)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 5 * scale)
    
    //Reset position
    t.right(by: 180)
    turtArrow()
    t.penUp()
}

//Arrow diagonal
let aDiagonal = sqrt(Double(scale*scale + scale*scale))

//Move to start
t.setPenSize(to: 1)
t.setPenColor(to: .black)
t.penUp()
t.forward(steps: 60)
t.left(by: 90)
t.forward(steps: 60)
t.currentPosition()
t.right(by: 90)

//Rows
for _ in 1...9 {
    //Draw Row
    for _ in 1...5 {
        drawArrow()
        t.forward(steps: 8 * scale)
    }

    t.currentHeading()
    t.currentPosition()

    //Move to Second Row
    t.left(by: 90)
    t.forward(steps: 5 * scale + 2)
    t.left(by: 90)
    t.forward(steps: 40 * scale)
    t.right(by: 180)
}


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

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
let scale = 10.0

// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
                         //  y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: Int(scale), color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let doubleInteriorAngle = 114
let singleInteriorAngle = 66
let outerSideHypotenuse = 8.35
let innerSideHypotenuse = 5.85
let smallDiamondSide = 1.17

func drawDiamond() {
    //Draw Top Skeleton
    turtle.right(by: 90)
    turtle.penDown()
    turtle.forward(steps: 7 * Int(scale))

    //Draw Right and Left Skeleton
    turtle.left(by: 90)
    turtle.forward(steps: Int(4.5 * scale))
    turtle.right(by: 180)
    turtle.forward(steps: 9 * Int(scale))

    //Draw Bottom Skeleton
    turtle.left(by: 180)
    turtle.forward(steps: Int(4.5 * scale))
    turtle.right(by: 90)
    turtle.forward(steps: 7 * Int(scale))

    //Draw Right Side
    turtle.left(by: 147)
    turtle.forward(steps: Int(outerSideHypotenuse * scale))
    turtle.left(by: Degrees(singleInteriorAngle))
    turtle.forward(steps: Int(outerSideHypotenuse * scale))
    turtle.currentPosition()

    //Draw Left Side
    turtle.left(by: Degrees(doubleInteriorAngle))
    turtle.forward(steps: Int(outerSideHypotenuse * scale))
    turtle.currentPosition()
    turtle.left(by: Degrees(singleInteriorAngle))
    turtle.forward(steps: Int(outerSideHypotenuse * scale))
    
    //Draw left of middle array
    turtle.penUp()
    turtle.left(by: 147)
    turtle.forward(steps: 2 * Int(scale))
    turtle.penDown()
    turtle.left(by: 31)
    turtle.forward(steps: Int(innerSideHypotenuse * scale))
    turtle.right(by: 62)
    turtle.forward(steps: Int(innerSideHypotenuse * scale))

    //Draw right side of middle array
    turtle.right(by: 118)
    turtle.forward(steps: Int(innerSideHypotenuse * scale))
    turtle.right(by: 62)
    turtle.forward(steps: Int(innerSideHypotenuse * scale))

    //Draw inner shape
    turtle.penUp()
    turtle.right(by: 149)
    turtle.forward(steps: 4 * Int(scale))
    turtle.penDown()
    turtle.left(by: 30)
    turtle.forward(steps: Int(smallDiamondSide * scale))
    turtle.right(by: 60)
    turtle.forward(steps: Int(smallDiamondSide * scale))
    turtle.right(by: 120)
    turtle.forward(steps: Int(smallDiamondSide * scale))
    turtle.right(by: 60)
    turtle.forward(steps: Int(smallDiamondSide * scale))
    //To top of shape
    turtle.penUp()
    turtle.left(by: 210)
    turtle.forward(steps: 8 * Int(scale))
    turtle.right(by: 90)

}


//Get Pen in position
turtle.drawSelf()
turtle.penUp()
turtle.currentPosition()
turtle.forward(steps: Int(9.5 * scale))
turtle.left(by: 90)
turtle.forward(steps: 16 * Int(scale))
turtle.right(by: 90)

turtle.currentHeading()
turtle.currentPosition()


drawDiamond()
turtle.penUp()

//First Row
for _ in 1...4{
turtle.forward(steps: 10 * Int(scale))
drawDiamond()
}
turtle.currentPosition()
turtle.currentHeading()


//Move to Inner Row
turtle.left(by: 90)
turtle.forward(steps: 7 * Int(scale))
turtle.left(by: 90)
turtle.forward(steps: 35 * Int(scale))
turtle.right(by: 180)
turtle.currentHeading()
turtle.currentPosition()

//Inner Row
for _ in 1...4 {
drawDiamond()
    turtle.forward(steps: 10 * Int(scale))
}
turtle.currentHeading()
turtle.currentPosition()

//Move to Outer Row
turtle.left(by: 90)
turtle.forward(steps: 7 * Int(scale))
turtle.left(by: 90)
turtle.forward(steps: 45 * Int(scale))
turtle.right(by: 180)

//Outer Row
for _ in 1...5 {
drawDiamond()
    turtle.forward(steps: 10 * Int(scale))
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

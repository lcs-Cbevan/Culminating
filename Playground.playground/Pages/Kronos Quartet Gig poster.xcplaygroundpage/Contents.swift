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
//                         y: canvas.height / 2))



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)


//Square pattern (Simultaneously background and pattern)
canvas.highPerformance = true

for backgroundVertical in stride(from: 0, to: 400, by: 25){
    for backgroundHorizontal in stride(from: 0, through: 400, by: 25){

        if backgroundVertical == backgroundHorizontal {
            canvas.fillColor = .black
        } else {
            canvas.fillColor = .blue
        }

        canvas.drawRectangle(at: Point(x: backgroundHorizontal, y: backgroundVertical), width: 25, height: 25)
    }
}

//Draw Cross-lines
for crossY in stride(from: 200, to: 400, by: 25){
    for crossX in stride(from: 200, to: 400, by: 25){
        
        //Top Cross-line
        if crossY + crossX == 575 {
            canvas.fillColor = .black
        } else if crossX == crossY {
            canvas.fillColor = .black
        } else {
            canvas.fillColor = .blue
        }
        canvas.drawRectangle(at: Point(x: crossX, y: crossY), width: 25, height: 25)
        
        //Bottom Cross-line
        if crossY-200 + crossX-200 == 175 {
            canvas.fillColor = .black
        } else if crossX-200 == crossY-200 {
            canvas.fillColor = .black
        } else {
            canvas.fillColor = .blue
        }
        canvas.drawRectangle(at: Point(x: crossX-200, y: crossY-200), width: 25, height: 25)
    }
}

//Corner Circle Patterns
for circlePatternX in stride(from: 225, to: 380, by: 25){
    for circlePatternY in stride(from: 20, through: 70, by: 25){
        canvas.fillColor = .black
        //Bottom corner
        canvas.drawEllipse(at: Point(x: circlePatternX, y: circlePatternY), width: 20, height: 20, borderWidth: 5)
        //Top Corner
        canvas.drawEllipse(at: Point(x: circlePatternX-200, y: circlePatternY+300), width: 20, height: 20, borderWidth: 5)
    }
}
//Top Background and Text
let darkBlue = Color(hue: 220, saturation: 100, brightness: 60, alpha: 100)
canvas.fillColor = darkBlue
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)
canvas.textColor = .white
//Date Text
canvas.drawText(message: "Dec 13, 2021", at: Point(x: 30, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "In person", at: Point(x: 30, y: 548), size: 10, kerning: 0)
//Location Text
canvas.drawText(message: "KQED HQ", at: Point(x: 320, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "San Francisco, Cal", at: Point(x: 300, y: 548), size: 10, kerning: 0)

//Title Text
canvas.drawText(message: "KRONOS", at: Point(x: 40, y: 460), size: 50, kerning: 0)
canvas.drawText(message: "QUARTET", at: Point(x: 40, y: 400), size: 50, kerning: 0)


canvas.drawAxes(withScale: true, by: 20, color: .black)

canvas.highPerformance = false
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

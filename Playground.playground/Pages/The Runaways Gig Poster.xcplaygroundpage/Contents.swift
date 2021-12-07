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
//   y: canvas.height / 2))

// Show a grid
//canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)

//Draw Background
let pink = Color(hue: 325, saturation: 100, brightness: 100, alpha: 100)

//Draw Pattern
for lineWidth in stride(from: 400, through: 25, by: -25){
    
    if lineWidth.isMultiple(of: 50) {
        canvas.lineColor = pink
    } else if (lineWidth + 25).isMultiple(of: 100){
        canvas.lineColor = .black
    } else if lineWidth.isMultiple(of: 25) {
        canvas.lineColor = .white
    }
    
    canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: lineWidth, capStyle: .butt, dashed: false)
    canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: lineWidth, capStyle: .butt, dashed: false)
    
}

//Upper background
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

//Date and Ticket Prices
canvas.drawText(message: "friday", at: Point(x: 20, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "august 19 1977", at: Point(x: 20, y: 540), size: 10, kerning: 0)
canvas.drawText(message: "tickets $4.50", at: Point(x: 20, y: 530), size: 10, kerning: 0)
canvas.drawText(message: "friday", at: Point(x: 20, y: 550), size: 10, kerning: 0)

//Special Guest Text
canvas.drawText(message: "with", at: Point(x: 120, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "special guests", at: Point(x: 120, y: 535), size: 10, kerning: 0)
canvas.drawText(message: "wolfgang", at: Point(x: 120, y: 520), size: 10, kerning: 0)

//Location Text
canvas.drawText(message: "at ben h. lewis hall", at: Point(x: 290, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "3443 orange street", at: Point(x: 290, y: 535), size: 10, kerning: 0)
canvas.drawText(message: "riverside, california", at: Point(x: 290, y: 520), size: 10, kerning: 0)

//Band Text
canvas.textColor = .white
canvas.drawText(message: "the runaways", at: Point(x: 10, y: 425), size: 55, kerning: 0)



// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
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

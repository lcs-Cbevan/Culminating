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

canvas.highPerformance = true
//Draw Ground Background
canvas.lineColor = Color(hue: 30, saturation: 100, brightness: 29, alpha: 90)
for DirtHeight in stride(from: -300,
                         through: -90,
                         by: 2){
    canvas.drawLine(from: Point(x:-300,y:DirtHeight), to: Point(x:300, y:DirtHeight))
}
canvas.lineColor = Color(hue: 30, saturation: 100, brightness: 20, alpha: 90)
for farDirt in stride(from: -300, through: 300, by: 2){
    canvas.drawLine(from: Point(x:farDirt, y:-90), to: Point(x:farDirt, y:60))
}

//Draw Forest Background
canvas.lineColor = Color(hue: 110, saturation: 64, brightness: 20, alpha: 90)
for forestDepth in stride(from: -300, through: 300, by: 2){
    canvas.drawLine(from: Point(x:forestDepth,y:300), to: Point(x:forestDepth, y:60))
}
        canvas.lineColor = Color(hue: 110, saturation: 64, brightness: 40, alpha: 90)
        
        for farBamboo in stride(from: -300,
                                through: 300,
                                by: 10){
           //Decide Shade of Green
            let greenColor = Int.random(in: 3...10)
            canvas.lineColor = Color(hue: 120, saturation: 80, brightness: 10*greenColor, alpha: 100)
            
            //Random Distances Between Bamboo Stalks
            let bambooSeparation = Int.random(in: -50...50)
            
            canvas.defaultLineWidth = 5
            canvas.drawLine(from: Point(x:Int(farBamboo)+bambooSeparation,y:300), to: Point(x:Int(farBamboo)+bambooSeparation, y:60))
        }
        
        
        
        //Draw Panda Face
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 95, alpha: 100)
        canvas.drawEllipse(at: Point(x: 0, y: 100), width: 120, height: 120, borderWidth: 5)
        p.goToOrigin()
        
        
        //Draw Eyes
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
        canvas.drawEllipse(at: Point(x: -20, y: 120), width: 20, height: 20, borderWidth: 5)
        canvas.drawEllipse(at: Point(x: 20, y: 120), width: 20, height: 20, borderWidth: 5)
        p.goToOrigin()
        
        //Draw Panda Body
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 95, alpha: 100)
        canvas.drawEllipse(at: Point(x:0 , y:0 ), width: 80, height: 120, borderWidth: 5)
        
        //Draw Arms
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 10, alpha: 100)
        canvas.drawEllipse(at: Point(x:50, y:20), width: 40, height: 60, borderWidth: 5)
        canvas.drawEllipse(at: Point(x:-50, y:20), width: 40, height: 60, borderWidth: 5)
        
        //Draw Legs
        canvas.drawEllipse(at: Point(x:-20, y:-60), width: 40, height: 40, borderWidth: 5)
        canvas.drawEllipse(at: Point(x:20, y:-60), width: 40, height: 40, borderWidth: 5)
        
//Draw Bamboo Stalks
canvas.fillColor = Color(hue: 114, saturation: 92, brightness: 81, alpha: 100)
for bamboo1body in stride(from: -160, through: 0, by: 40){
canvas.drawEllipse(at: Point(x:-200, y:bamboo1body), width: 40, height: 100, borderWidth: 5)
}



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

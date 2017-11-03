import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        dx = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += dx
        
        dx = 2
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
        
        // Clean up - draw a white rectangle over the entire canvascanvas.fillColour = colour.white
        canvas.fillColor = Color.white
        canvas.drawRoundedRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Chnage position
        x += dx
        
        // Make the circle bounce on the right edge
        if x > 500 { // start of block}
            dx = -2 // move left
        } // end of block
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        

        
    }
    
}

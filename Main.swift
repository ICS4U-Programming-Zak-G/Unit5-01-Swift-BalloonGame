//
//  Main.swift
//
//  Created by Zak Goneau
//  Created on 2025-05-08
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This is the main file for the Balloon Game

// Import library
import Foundation

// Define main function
func main() {
    // Create a new instance for the balloon
    let balloon = Balloon(xPosition: 75,yPosition: 49,color: "Blue")

    // Create a new instance for the spike
    let spike = Spike(xPos: 50)

    // Print initial balloon position
    print("Balloon position: (\(balloon.xPosition), \(balloon.yPosition))")

    // Move the balloon
    balloon.move(xSpaces: 5, ySpaces: 10)

    // Print new balloon position
    print("Balloon position after moving: (\(balloon.xPosition), \(balloon.yPosition))")

    // Print balloon color
    print("Balloon color: \(balloon.color)")

    // Change the balloon color
    balloon.changeColor(to: "Red")

    // Print new balloon color
    print("Balloon color after changing: \(balloon.color)")

    //Print initial spike position
    print("Spike position: (\(spike.xPosition), \(spike.yPosition))")

    // Move spike to ballon x position
    let distanceToMove = balloon.xPosition - spike.xPosition
    spike.moveSpike(spaces: distanceToMove)

    // Print new spike position
    print("Spike position after moving: (\(spike.xPosition), \(spike.yPosition))")

    // Pop the balloon
    spike.popBalloon(balloon: balloon)

    // Print balloon status
    if (balloon.isPopped) {
        print("Balloon is popped!")

    // Otherwise, print ballon wasn't popped
    } else {
        print("Balloon is not popped.")
    }
}

//
//  Balloon.swift
//
//  Created by Zak Goneau
//  Created on 2025-05-08
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This is the balloon file for the Balloon Game

// Import library
import Foundation

// Define main function
class Balloon {
    // Properties
    var xPosition: Int
    var yPosition: Int
    var color: String
    var isPopped: Bool

    // Constructor
    init(xPosition: Int, yPosition: Int, color: String){
        self.xPosition = xPosition
        self.yPosition = yPosition
        self.color = color
        self.isPopped = false
    }

    // Method to move balloon
    func move(xSpaces: Int, ySpaces: Int) {
        // Move balloon specified spaces
        self.xPosition += xSpaces
        self.yPosition += ySpaces
    }

    // Method to change color of balloon
    func changeColor(to newColor: String) {
        // Change color of balloon
        self.color = newColor
    }
}

//
//  Spike.swift
//
//  Created by Zak Goneau
//  Created on 2025-05-08
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This is the spike file for the Balloon Game

// Import library
import Foundation

// Define main function
class Spike {
    // Properties
    var xPosition: Int
    var yPosition: Int = 0

    // Create constructor for spike
    init(xPos: Int) {
        // Set the spike's x position
        self.xPosition = xPos
    }

    // Create constructor for balloon popping
    func popBalloon(balloon: Balloon) {
        // Check if the balloon is not popped
        if (!balloon.isPopped) {
            // Set the balloon's isPopped to true
            balloon.isPopped = true
        }
    }

    // Create constructor for moving the spike
    func moveSpike(spaces: Int) {
        // Move the spike a certain number of spaces
        self.xPosition += spaces
    }
}

// Call main function
main()

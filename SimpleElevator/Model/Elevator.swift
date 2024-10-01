//
//  Elevator.swift
//  SimpleElevator
//
//  Created by Murali on 01/10/24.
//

import Foundation

class Elevator {
    
    var currentFloor: Int = 1
    var direction: ElevatorDirection = .stationary
    
    func move(to floor: Int) {
        
        if floor > currentFloor {
            direction = .up
        } else if floor < currentFloor {
            direction = .down
        } else {
            direction = .stationary
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.currentFloor = floor
            self.direction = .stationary
        }
    }
}


enum ElevatorDirection {
    case up
    case down
    case stationary
}


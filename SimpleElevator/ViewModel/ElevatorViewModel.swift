//
//  ElevatorViewModel.swift
//  SimpleElevator
//
//  Created by Murali on 01/10/24.
//

import SwiftUI

class ElevatorViewModel: ObservableObject {
    
    @Published var elevator = Elevator()
    @Published var isMoving = false
    
    func requestElevator(to floor: Int) {
        
        guard !isMoving else { return }
        isMoving = true
        elevator.move(to: floor)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.isMoving = false
        }
    }
}


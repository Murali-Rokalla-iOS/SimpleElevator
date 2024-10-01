//
//  Content+Text.swift
//  SimpleElevator
//
//  Created by Murali on 01/10/24.
//

import SwiftUI

extension ContentView {
    
    var currentFloorText: some View {
        Text("\(AppConstants().currentFloor): \(viewModel.elevator.currentFloor)")
            .font(.largeTitle)
    }
    
    var directionText: some View {
        Text("\(AppConstants().direction): \(viewModel.elevator.direction == .stationary ? AppConstants().stationary : (viewModel.elevator.direction == .up ? AppConstants().up : AppConstants().down))")
            .font(.title)
    }
}

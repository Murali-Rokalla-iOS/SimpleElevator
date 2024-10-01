//
//  ContentView+Button.swift
//  SimpleElevator
//
//  Created by Murali on 01/10/24.
//

import SwiftUI

extension ContentView {
    
    var upButton: some View {
        
        Button(AppConstants().up) {
            viewModel.requestElevator(to: viewModel.elevator.currentFloor + 1)
        }
        .font(.title)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
    
    var downButton: some View {
        
        Button(AppConstants().down) {
            if viewModel.elevator.currentFloor > 1 {
                viewModel.requestElevator(to: viewModel.elevator.currentFloor - 1)
            }
        }
        .font(.title)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .padding()
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(10)
    }

}

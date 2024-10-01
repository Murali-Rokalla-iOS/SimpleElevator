//
//  ContentView.swift
//  SimpleElevator
//
//  Created by Murali on 01/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ElevatorViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    currentFloorText
                    directionText
                    
                    HStack {
                        upButton
                        downButton
                    }
                    if viewModel.isMoving {
                        ProgressView()
                    }
                    
                    Spacer()

                }
                .padding()

            }
            .navigationTitle("Simple Elevator")
        }
        
    }
}

#Preview {
    ContentView()
}

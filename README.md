# Simple Elevator App

## Overview

This project implements a basic elevator request system using SwiftUI. Users can request the elevator to move up or down from their current floor, and the app displays the current floor and the direction the elevator is moving. The application follows the MVVM (Model-View-ViewModel) architecture for managing state and data flow.

## Features

- **Request Elevator**: Users can request the elevator to move up or down from their current floor.
- **Display Current Floor**: The app shows the current floor of the elevator.
- **Direction Indicator**: Displays the direction of the elevator (Up, Down, or Stationary).
- **Loading Indicator**: A loading indicator is shown while the elevator is "moving".

## Technologies Used

- Swift
- SwiftUI
- XCTest for unit testing

## Structure

- **Models**: 
  - `Elevator`: Represents the elevator's state (current floor and direction).
  - `ElevatorDirection`: Enum representing the direction of the elevator.
  - `AppConstants`: Contains string constants used in the app.
  
- **ViewModel**: 
  - `ElevatorViewModel`: Manages the elevator's state and handles user requests.

- **Views**: 
  - `ContentView`: The main user interface that allows interaction with the elevator system.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Murali-Rokalla-iOS/SimpleElevator.git

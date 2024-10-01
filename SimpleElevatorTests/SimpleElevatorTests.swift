//
//  SimpleElevatorTests.swift
//  SimpleElevatorTests
//
//  Created by Murali on 01/10/24.
//

import XCTest
@testable import SimpleElevator

final class SimpleElevatorTests: XCTestCase {
    
    var elevator: Elevator!

    override func setUp() {
        super.setUp()
        elevator = Elevator()
    }

    override func tearDown() {
        elevator = nil
        super.tearDown()
    }
    
    func testElevatorMovement() {
        
        let expectation = XCTestExpectation(description: "Elevator moves to specified floor")
        
        elevator.move(to: 3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            XCTAssertEqual(self.elevator.currentFloor, 3)
            XCTAssertEqual(self.elevator.direction, .stationary)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }

    func testElevatorDirection() {

        let expectation = XCTestExpectation(description: "Elevator changes direction")

        elevator.move(to: 2)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            XCTAssertEqual(self.elevator.direction, .up)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            XCTAssertEqual(self.elevator.currentFloor, 2)
            XCTAssertEqual(self.elevator.direction, .stationary)
            
            self.elevator.move(to: 1)

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                XCTAssertEqual(self.elevator.direction, .down)
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                XCTAssertEqual(self.elevator.currentFloor, 1)
                XCTAssertEqual(self.elevator.direction, .stationary)
                expectation.fulfill()
            }
        }

        wait(for: [expectation], timeout: 5.0)
    }

}


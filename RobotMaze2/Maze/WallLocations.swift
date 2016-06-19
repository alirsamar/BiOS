//
//  WallLocations.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 12/1/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        switch(direction) {
        case .Up:
            isWall = cell.top
        case .Down:
            isWall = cell.bottom
        case .Left:
            isWall = cell.left
        case .Right:
            isWall = cell.right
        }
        
        return isWall
        
    }
    
    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check is there is a wall at the top of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        // Step 2.1a
        // TODO: Check if there is a wall at the bottom of the current cell
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        // TODO: Check if there is a wall to the left of the current cell
        let isWallBottom = cell.bottom
        if isWallBottom {
            numberOfWalls += 1
        }
        
        // Step 2.1b
        // TODO: Test the checkWalls function.
        
        // TODO: Return a tuple representing the bools for top, right, down & left, and the number of walls
        // This tuple is a placeholder
        return (isWallUp, isWallRight, isWallBottom, isWallLeft, numberOfWalls)
    }
}
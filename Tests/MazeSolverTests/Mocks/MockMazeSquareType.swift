//
//  MockMazeSquareType.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation
import MazeSolver

enum MockMazeSquareType: Character, MazeSquareType {

    case empty = "."
    case wall = "#"
    case start = "S"
    case end = "E"

    var isEmpty: Bool {
        self == .empty || self == .start || self == .end
    }

    var isWall: Bool {
        self == .wall
    }

    var isStart: Bool {
        self == .start
    }

    var isEnd: Bool {
        self == .end
    }

}

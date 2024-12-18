//
//  Direction.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// Move direction.
///
public enum Direction: Character, Sendable, CaseIterable {

    /// Up move.
    case up = "^"

    /// Down move.
    case down = "v"

    /// Left move.
    case left = "<"

    /// Right move.
    case right = ">"

    var offset: (row: Int, column: Int) {
        switch self {
        case .up: return (-1, 0)
        case .down: return (1, 0)
        case .left: return (0, -1)
        case .right: return (0, 1)
        }
    }

}

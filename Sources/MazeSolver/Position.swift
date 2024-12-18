//
//  Position.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// A position in the maze.
///
public struct Position: Sendable, Hashable, CustomStringConvertible {

    ///
    /// x coordinate from the top left of the maze.
    ///
    public let x: Int

    ///
    /// y coordinate from the top left of the maze.
    ///
    public let y: Int

    ///
    /// Creates a new position.
    ///
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    func isValid<Element>(in grid: [[Element]]) -> Bool {
        guard
            grid.indices.contains(y),
            grid[y].indices.contains(x)
        else {
            return false
        }

        return true
    }

    public var description: String {
        "(\(x), \(y))"
    }

}

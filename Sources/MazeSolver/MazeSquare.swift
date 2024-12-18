//
//  MazeSquare.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// Represents a square in the maze.
///
public struct MazeSquare<ElementType: MazeSquareType>: Hashable, Equatable {

    ///
    /// Square type.
    ///
    public let type: ElementType

    ///
    /// Position of the square in the maze.
    ///
    public let position: Position

    ///
    /// Is this square a wall.
    ///
    public var isWall: Bool { type.isWall }

    ///
    /// Is this square empty?
    ///
    public var isEmpty: Bool { type.isEmpty }

    init(type: ElementType, position: Position) {
        self.type = type
        self.position = position
    }

}

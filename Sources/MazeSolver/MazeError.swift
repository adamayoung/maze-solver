//
//  MazeError.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// Maze error.
///
public enum MazeError: Error, Sendable {

    ///
    /// Unknown square type.
    ///
    case unknownSquareType

    ///
    /// No start position found or given.
    ///
    case noStart

    ///
    /// No end position found or given.
    ///
    case noEnd

    ///
    /// Cannot read maze input file.
    ///
    case cannotReadFile(URL)

    ///
    /// Invalid position.
    ///
    case invalidPosition(Position)

}

//
//  MazeSquareType.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// A protocol for a maze square type.
///
public protocol MazeSquareType: RawRepresentable<Character>, Equatable, Hashable {

    ///
    /// Is this square a wall.
    ///
    var isWall: Bool { get }

    ///
    /// Is this square empty.
    ///
    var isEmpty: Bool { get }

    ///
    /// Is this the start square.
    ///
    /// Optional.
    ///
    var isStart: Bool { get }

    ///
    /// Is this the end square.
    ///
    /// Optional.
    ///
    var isEnd: Bool { get }

}

extension MazeSquareType {

    ///
    /// Default implementation.
    ///
    public var isStart: Bool { false }

    ///
    /// Default implementation.
    ///
    public var isEnd: Bool { false }

}

//
//  MazeSettings.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// Settings for traversing the maze.
///
public struct MazeSettings: Sendable {

    ///
    /// Default setting.
    ///
    public static let `default`: MazeSettings = .init()

    ///
    /// The 'cost' of a move.
    ///
    public let moveCost: Int

    ///
    /// The 'cost' of a rotation/change in direction.
    ///
    public let rotationCost: Int

    ///
    /// Initial direction to start traversing.
    ///
    public let initialDirection: Direction

    ///
    /// Creates a new maze settings.
    ///
    /// - Parameters:
    ///   - moveCost: The 'cost' of a move.
    ///   - rotationCost: The 'cost' of a rotation/change in direction.
    ///   - initialDirection: Initial direction to start traversing.
    ///
    public init(
        moveCost: Int = 1,
        rotationCost: Int = 0,
        initialDirection: Direction = .up
    ) {
        self.moveCost = moveCost
        self.rotationCost = rotationCost
        self.initialDirection = initialDirection
    }

}

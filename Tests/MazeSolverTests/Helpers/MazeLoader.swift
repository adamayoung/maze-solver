//
//  MazeLoader.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation
import MazeSolver

final class MazeLoader {

    private init() {}

    static func loadMaze(_ id: MazeIdentifier, settings: MazeSettings = .default) async throws
        -> Maze<MockMazeSquareType>
    {
        guard let fileURL = Bundle.module.url(forResource: id.name, withExtension: "txt") else {
            fatalError("input file missing")
        }

        return try await Maze<MockMazeSquareType>(fileURL: fileURL, settings: settings)
    }

}

extension MazeLoader {

    enum MazeIdentifier: String {
        case simpleOneStep = "maze-simple-one-step"
        case simpleTwoStep = "maze-simple-two-steps"
        case simpleFourStep = "maze-simple-four-steps"
        case complex = "maze-complex"

        var name: String {
            rawValue
        }
    }

}

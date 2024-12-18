//
//  FindLowestScoringPathsTests.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation
import Testing

@testable import MazeSolver

@Suite("Find lowest scoring paths tests")
struct FindLowestScoringPathsTests {

    @Test("findLowestScoringPaths when simple maze with one step")
    func findLowestScoringPathsWhenSimpleMazeOneStepReturnsOneStepAndPath() async throws {
        let maze = try await MazeLoader.loadMaze(.simpleOneStep)

        let result = try #require(maze.findLowestScoringPaths())

        #expect(result.score == 1)
        #expect(result.pathResults.count == 1)
        #expect(result.pathResults[0].path == [Position(x: 1, y: 1), Position(x: 2, y: 1)])
    }

    @Test("findLowestScoringPaths when complex maze")
    func findLowestScoringPathsWhenComplexMazeOneStep() async throws {
        let maze = try await MazeLoader.loadMaze(.complex)

        let result = try #require(maze.findLowestScoringPaths())

        #expect(result.score == 448)
        #expect(result.pathResults.count == 84)
    }

    @Test("findLowestScoringPaths when complex maze and rotation cost")
    func findLowestScoringPathsWhenComplexMazeAndRotationCostOneStep() async throws {
        let settings = MazeSettings(rotationCost: 1000)
        let maze = try await MazeLoader.loadMaze(.complex, settings: settings)

        let result = try #require(maze.findLowestScoringPaths())

        #expect(result.score == 115476)
        #expect(result.pathResults.count == 6)
    }

}

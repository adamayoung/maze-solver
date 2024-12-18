//
//  FindShortestPath.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation
import Testing

@testable import MazeSolver

@Suite("Find shortest path tests")
struct FindShortestPath {

    @Test("findShortestPath when simple maze with one step")
    func findShortestPathWhenSimpleMazeOneStepReturnsOneStepAndPath() async throws {
        let maze = try await MazeLoader.loadMaze(.simpleOneStep)

        let solution = try #require(maze.findShortestPath())

        #expect(solution.steps == 1)
        #expect(solution.path == [Position(x: 1, y: 1), Position(x: 2, y: 1)])
    }

    @Test("findShortestPath when simple maze with two steps")
    func findShortestPathWhenSimpleMazeWithTwoStepsReturnsTwoStepAndPath() async throws {
        let maze = try await MazeLoader.loadMaze(.simpleTwoStep)

        let solution = try #require(maze.findShortestPath())

        #expect(solution.steps == 2)
        #expect(
            solution.path == [
                Position(x: 1, y: 1),
                Position(x: 2, y: 1),
                Position(x: 3, y: 1)
            ]
        )
    }

    @Test("findShortestPath when simple maze with four steps")
    func findShortestPathWhenSimpleMazeWithFourStepsReturnsFourStepAndPath() async throws {
        let maze = try await MazeLoader.loadMaze(.simpleFourStep)

        let solution = try #require(maze.findShortestPath())

        #expect(solution.steps == 4)
        #expect(
            solution.path == [
                Position(x: 1, y: 3),
                Position(x: 2, y: 3),
                Position(x: 3, y: 3),
                Position(x: 3, y: 2),
                Position(x: 3, y: 1)
            ]
        )
    }

    @Test("findShortestPath when complex maze")
    func findShortestPathWhenComplexMazeStepsAndPath() async throws {
        let maze = try await MazeLoader.loadMaze(.complex)

        let solution = try #require(maze.findShortestPath())

        #expect(solution.steps == 448)
    }

}

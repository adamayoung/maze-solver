//
//  LowestScoringPathsResult.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// Lowest scoring paths results.
///
public struct LowestScoringPathsResult: Sendable {

    ///
    /// Score.
    ///
    public let score: Int

    ///
    /// Path results with the matching score.
    ///
    public let pathResults: [PathResult]

}

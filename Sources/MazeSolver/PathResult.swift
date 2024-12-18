//
//  PathResult.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

///
/// A path result.
///
public struct PathResult: Sendable {

    ///
    /// Path.
    ///
    public let path: [Position]

    ///
    /// Number of steps.
    ///
    public var steps: Int {
        guard path.count >= 2 else {
            return 0
        }

        return path.count - 1
    }

}

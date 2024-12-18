# Mazer Solver

A Swift Package maze solver using the A* algorithm.

## Example usage

### Maze Square Type

Define an `enum` to describe each square type, which implements `MazeSquareType`.

e.g.

```swift
import Foundation
import MazeSolver

enum MyMazeSquareType: Character, MazeSquareType {

    case empty = "."
    case wall = "#"
    case start = "S" // Optional
    case end = "E" // Optional

    var isEmpty: Bool {
        self == .empty || self == .start || self == .end
    }

    var isWall: Bool {
        self == .wall
    }

    // Optional
    var isStart: Bool {
        self == .start
    }

    // Optional
    var isEnd: Bool {
        self == .end
    }

}
```

### Initialise

A maze can be initialised in several ways.

#### Array of Squares

```swift
let maze = try Maze<MyMazeSquareType>(
    squares: [
        [
            MazeSquare(type: .empty, position: Position(x: 0, y: 0)),
            ...
        ],
        [
            MazeSquare(type: .wall, position: Position(x: 0, y: 1)),
            ...
        ],
        ...
    ]
)
```

#### Input string

```swift
let input = """
   ######
   #...E#
   #.##.#
   #S.#.#
   ######
"""

let maze = try Maze<MyMazeSquareType>(input: input)
```

#### File

```swift
let mazeFileURL: URL = ...

let maze = try Maze<MyMazeSquareType>(fileURL: mazeFileURL)
```

## Finding a path

```swift
let result = maze.findShortestPath()

print(result.steps)
print(result.path)
```

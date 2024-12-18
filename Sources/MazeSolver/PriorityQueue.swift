//
//  PriorityQueue.swift
//  MazeSolver
//
//  Created by Adam Young on 18/12/2024.
//

import Foundation

struct PriorityQueue<Element> {

    private var heap: [(score: Int, element: Element)] = []
    private let areSorted: (Int, Int) -> Bool

    var isEmpty: Bool {
        heap.isEmpty
    }

    init(areSorted: @escaping (Int, Int) -> Bool) {
        self.areSorted = areSorted
    }

    mutating func enqueue(_ element: Element, score: Int) {
        heap.append((score, element))
        siftUp(from: heap.count - 1)
    }

    mutating func dequeue() -> (score: Int, element: Element)? {
        guard !heap.isEmpty else {
            return nil
        }

        swapAt(0, heap.count - 1)
        let element = heap.removeLast()
        siftDown(from: 0)
        return element
    }

    private mutating func siftUp(from index: Int) {
        var index = index
        while index > 0 {
            let parentIndex = (index - 1) / 2
            guard areSorted(heap[index].score, heap[parentIndex].score) else {
                break
            }

            swapAt(index, parentIndex)
            index = parentIndex
        }
    }

    private mutating func siftDown(from index: Int) {
        var index = index
        let count = heap.count
        while true {
            let leftChildIndex = 2 * index + 1
            let rightChildIndex = 2 * index + 2
            var first = index

            if leftChildIndex < count,
                areSorted(heap[leftChildIndex].score, heap[first].score)
            {
                first = leftChildIndex
            }

            if rightChildIndex < count,
                areSorted(heap[rightChildIndex].score, heap[first].score)
            {
                first = rightChildIndex
            }

            if first == index {
                break
            }

            swapAt(index, first)
            index = first
        }
    }

    private mutating func swapAt(_ index1: Int, _ index2: Int) {
        let temp = heap[index1]
        heap[index1] = heap[index2]
        heap[index2] = temp
    }

}

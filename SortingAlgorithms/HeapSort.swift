//
//  HeapSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 04.08.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

// массив можно отсортировать пирамидальной сортировкой, если
// на его основе строить сортирующее дерево, известное как куча
// (двоичная куча, пирамида)

class BinaryHeap<T: Comparable> {
    // куча
    var heap = [T]()
    // количество элементов в куче
    var size: Int {
        get {
            return heap.count
        }
    }
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    // пустая инициализация
    init() { }
    // инициализация с преобразованием в кучу массива
    init(array: [T]) {
        buildHeap(array)
    }
    
    // добавление элемента
    func insert(value: T) {
        heap.append(value)
        siftUp(size-1)
    }
    
    // удаление минимального элемента
    func extractMin() -> T? {
        guard !isEmpty else { return nil }
        guard size > 1 else { return heap.removeLast() }
        heap.swapAt(0, size-1)
        let root = heap.removeLast()
        siftDown(0)
        return root
    }
    
    // строим кучу из входного массива
    private func buildHeap(_ array: [T]) {
        self.heap = array
        for i in stride(from: size/2-1, through: 0, by: -1) {
            siftDown(i)
        }
    }
    
    // функции восстановления свойств кучи:
    
    // sift up - просеивание вверх
    // используем если значение измененного элемента уменьшается
    private func siftUp(_ index: Int) {
        var c = index                       // - child
        var p = parentIndex(child: c)       // - parent
        
        while let parent = parent(child: c)  {
            guard heap[c] < parent else { break }
            heap.swapAt(c, p)
            c = p
            p = parentIndex(child: c)
        }
    }
    
    // sift down - просеивание вниз
    // используем если значение измененного элемента увеличивается
    private func siftDown(_ index: Int) {
        var p = index
        while let max = minChild(parent: p) {
            guard heap[p] > max.child else { break }
            heap.swapAt(p, max.index)
            p = max.index
        }
    }
    
    // индекс родителя
    private func parentIndex(child: Int) -> Int {
        return child / 2 - 1
    }
    // индекс левого потомка
    private func leftIndex(parent: Int) -> Int {
        return parent * 2 + 1
    }
    // индекс правого потомка
    private func rightIndex(parent: Int) -> Int {
        return parent * 2 + 2
    }
    
    // возвращает родителя
    private func parent(child: Int) -> T? {
        let p = parentIndex(child: child)
        guard p >= 0 && p < heap.count else { return nil }
        return heap[p]
    }
    // возвращает левого потомка родителя
    private func left(parent: Int) -> T? {
        let l = leftIndex(parent: parent)
        guard l < heap.count else { return nil }
        return heap[l]
    }
    // возвращает правого потомка родителя
    private func right(parent: Int) -> T? {
        let r = rightIndex(parent: parent)
        guard r < heap.count else { return nil }
        return heap[r]
    }
    
    // находим минимальное значение потомка у родителя
    private func minChild(parent: Int) -> (child: T, index: Int)? {
        
        // если существуют оба потомка
        if let x = left(parent: parent), let y = right(parent: parent) {
            return x < y ?
                (child: x, index: leftIndex(parent: parent)) :
                (child: y, index: rightIndex(parent: parent))
        } else if let x = left(parent: parent) {
            // если существует только левый потомок
            return (child: x, index: leftIndex(parent: parent))
        } else if let y = right(parent: parent) {
            // если существует только правый потомок
            return (child: y, index: rightIndex(parent: parent))
        }
        
        return nil
    }
    
}

// собственно сама пирамидальная сортировка

func heapSort<T: Comparable>(_ list: [T]) -> [T] {
    // делаем из массива кучу
    let heap = BinaryHeap(array: list)
    var sortList = [T]()
    
    // обходим нашу кучу
    while let min = heap.extractMin() {
        sortList.append(min)
    }
    
    return sortList
}

































//
//  SelectionSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 15.06.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

func selectionSort<T:Comparable>(_ list: [T]) -> [T] {
    var sortList = list
    
    //ищем минимальный элемент в массиве
    for i in sortList.indices {
        var min = i
        for j in i..<sortList.count {
            if sortList[j] < sortList[min] {
                min = j
            }
        }
        //меняем местами элементы пока весь массив не будет отсортирован
        if min != i {
            sortList.swapAt(min, i)
        }
    }
    return sortList
}


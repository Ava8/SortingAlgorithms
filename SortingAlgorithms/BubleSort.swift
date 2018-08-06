//
//  BubleSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 16.06.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

func bubleSort<T:Comparable>(_ list: [T]) -> [T] {
    var sortList = list

    //алгоритм повторяется n-1 раз, где n - количество элементов в массиве
    for i in 0..<(sortList.count-1) {
        for j in 0..<(sortList.count-1-i) {
            //элемент массива сравнивается с последующим
            if sortList[j] > sortList[j+1] {
                //элементы меняются местами, таким образом:
                //"легкие" элементы перемещаются к началу списка
                //"тяжёлые" элементы - к концу списка
                sortList.swapAt(j, j+1)
            }
        }
    }
    return sortList
}


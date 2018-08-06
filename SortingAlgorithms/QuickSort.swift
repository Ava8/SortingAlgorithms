//
//  QuickSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 15.06.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation


func quickSort<T:Comparable>(_ list: [T]) -> [T] {
    // если в нашем массиве больше, чем один элемент, то имеет смысл его сортировать
    if list.count > 1 {
        
        //определяем опорный элемент - середина массива
        let pivot = list[0+(list.count - 0)/2]
        
        //создаём массив элементов меньших, чем опорный
        var less:[T] = []
        //создаём массив элементов эквивалентных опорному
        var equal:[T] = []
        //создаём массив элементов больших, чем опроный
        var greater:[T] = []
        
        //проходим по массиву и сортируем элементы по группам
        for element in list {
            if element < pivot {
                less.append(element)
            } else if element == pivot {
                equal.append(element)
            } else if element > pivot {
                greater.append(element)
            }
        }
        return quickSort(less) + equal + quickSort(greater)
    } else {
        return list
    }
}


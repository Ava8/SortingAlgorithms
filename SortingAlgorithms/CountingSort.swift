//
//  CountingSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 25.07.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

// WARNING!
// сортировка подсчётом работает только для массива из целочисленных чисел, которые больше нуля
func countingSort(_ list: [Int]) -> [Int] {
    var sortList = list
    
    // находим максимальный элемент сортируемого массива
    let maxValue = list.max()
    // организуем массив размерностью: максимальный элемент + 1
    var container = Array(repeating: 0, count: maxValue! + 1)
    
    // проверяем на наличие отрицательных значений
    if list.contains(where: {$0 < 0}) {
        print("wrong input array: contains negative nums")
         print("\n")
        return list
    }
    
    // записываем в наш контейнер сколько раз повторяется каждое значение массива
    // например:
    // исходный массив: 0,8,3,1,10,4  максимальный эл-т: 10
    // контейнер, размерностью 10 :
    // [0]1,[1]1,[2]0,[3]1,[4]1,[5]0,[6]0,[7]0,[8]1,[9]0,[10]1
    // ***([индекс]значение)
    list.forEach({container[$0] += 1})
    
    var elem = 0
    // сортируем массив, исходя из значений в "контейнере"
    for i in 0..<maxValue! + 1 {
        for _ in 0..<container[i] {
            sortList[elem] = i
            elem += 1
        }
    }
    return sortList
}

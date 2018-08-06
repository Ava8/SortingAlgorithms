//
//  MergeSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 04.08.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

func mergeSort<T:Comparable>(_ list: [T]) -> [T] {
     // если в нашем массиве больше, чем один элемент, то имеет смысл его сортировать
    if list.count > 1 {
        
        // находим средний элемент
        let mid = list.count / 2
        // делим массив на левую часть и правую
        let leftPart = Array(list[0..<mid])
        let rightPart = Array(list[mid...])
        
        // разделяем массив до тех пор пока это возможно
        var dividedLeft = mergeSort(leftPart)
        var dividedRight = mergeSort(rightPart)
        
        // массив уже "слитых" элементов
        var merged = [T]()
        
        // сравниваем разделённые части и "сливаем" в правильном порядке
        while dividedLeft.count > 0 && dividedRight.count > 0 {
            if dividedLeft.first! < dividedRight.first! {
                merged.append(dividedLeft.removeFirst())
            } else {
                merged.append(dividedRight.removeFirst())
            }
        }
        return merged + dividedLeft + dividedRight
        
    } else {
        return list
    }
}



































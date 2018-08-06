//
//  ShakerSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 16.06.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

func shakerSort<T:Comparable>(_ list: [T]) -> [T] {
    var sortList = list

    //левая и правая границы сортируемой области массива
    var leftIndex = 0
    var rightIndex = sortList.count-1
    //флаг наличия перемещений
    var flag : Bool

    //пока левая и правая границы цикла не замкнуться
    while leftIndex < rightIndex {
        flag = false
        
        //двигаемся слева направо
        for i in leftIndex..<rightIndex {
            //если следующий элемент меньше текущего
            if sortList[i] > sortList[i+1] {
                //меняем их местами
                sortList.swapAt(i+1, i)
                //перемещения есть
                flag = true
            }
        }
        //сдвигаем правую границу на предыдущий элемент
        rightIndex -= 1
        
        //проверяем есть ли премещения или массив уже отсротирован
        if flag == false {break}
        
        //двигаемся справа налево
        for i in (leftIndex..<rightIndex).reversed() {
            //если предыдущий элемент больше текущего
            if sortList[i] > sortList[i+1] {
                //меняем их местами
                sortList.swapAt(i, i+1)
                //перемещения есть
                flag = true
            }
        }
        //сдвигаем левую границу на следующий элемент
        leftIndex += 1
        
        //проверяем есть ли премещения или массив уже отсротирован
        if flag == false {break}
    }
    return sortList
}

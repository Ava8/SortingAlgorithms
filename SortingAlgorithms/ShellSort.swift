//
//  ShellSort.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 20.07.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

func shellSort<T:Comparable>(_ list: [T]) -> [T] {
    var sortList = list
    
    //сравнивать будем элементы, находящиеся друг от друга на некотором расстоянии
    var step = sortList.count/2
    print(step)
    
    // пока шаг не будет равен 1
    while step > 0 {
        //разбиваем исходный массив на группы из элементов отстоящих друг от друга на шаг
        for i in step..<sortList.count {
            //значение первого элемента из пары для сравнения
            let value = sortList[i]
            var j = i
            
            while j >= step && sortList[j-step] > value {
                sortList[j] = sortList[j-step]
                j -= step
            }
            //после сравнения меняем местами элементы
            sortList[j] = value
        }
        //сокращаем шаг, тем самым уменьшая количество групп
        step /= 2
    }
    print("исходный массив: \(list)")
    print("отсортированный массив: \(sortList)")
    print("\n")
    return sortList
}

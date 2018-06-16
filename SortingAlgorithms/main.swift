//
//  main.swift
//  SortingAlgorithms
//
//  Created by MacBook Air on 15.06.2018.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import Foundation

var list1 = [1,9,4,5,1,0]
var list2 = [9,3,-7,0,3]
var list3 = [1,-2,3,-4,5,6,7,-8,9,10]
var list4 = [10,9,8,7,6,5,4,3,2,1]
var list5 = [0,1,2,3,4]
var tmp = [356, 876, 0, 4, 378, 45, 23, 100, 36, 5, 1, 10, 67, 456, 342, 35, 21, 34, 68, 567, 234, 34, 1098]

//создание рандомного массива пользовательского размера
//print("Size of array: ", terminator:"");
//let size = Int(readLine()!)!;
//var arr = [UInt32]();
//
//for _ in 1 ... size {
//    arr.append(arc4random_uniform(100));
//}

print("исходный массив: \(list2), отсортированный массив: \(quickSort(list2))")
print("исходный массив: \(list2), отсортированный массив: \(selectionSort(list2))")
print("исходный массив: \(list2), отсортированный массив: \(bubleSort(list2))")
print("исходный массив: \(list1), отсортированный массив: \(shakerSort(list1))")

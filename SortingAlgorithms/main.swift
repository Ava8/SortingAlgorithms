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


// быстрые тесты сортировки

print("быстрая сортировка:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(quickSort(list3))")
print("\n")
print("сортировка выбором:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(selectionSort(list3))")
print("\n")
print("пузырьковая сортировка:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(bubleSort(list3))")
print("\n")
print("шейкерная сортировка:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(shakerSort(list3))")
print("\n")
print("сортировка Шелла:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(shellSort(list3))")
print("\n")
print("сортировка подсчётом:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(countingSort(list2))")
print("\n")
print("сортировка слиянием:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(mergeSort(list3))")
print("\n")
print("пирамидальная сортировка:")
print("исходный массив: \(list3)")
print("отсортированный массив: \(heapSort(list3))")
print("\n")
 

// временные тесты для сортировок
/*

func runningTime<T>(f: @autoclosure () -> T) -> (result:T, duration: String) {
    let startTime = CFAbsoluteTimeGetCurrent()
    let result = f()
    let endTime = CFAbsoluteTimeGetCurrent()
    return (result, "время работы \(endTime - startTime) секунд")
}

var oneHundredArray: [Int] = []
for _ in 0...99 {
    oneHundredArray.append(Int(arc4random_uniform(100)))
}
var oneThousnadArray: [Int] = []
for _ in 0...999 {
    oneThousnadArray.append(Int(arc4random_uniform(100)))
}
var oneMillionArray: [Int] = []
for _ in 0...999999 {
    oneMillionArray.append(Int(arc4random_uniform(100)))
}

print("тесты для массивов с 100 элементов")
print("\n")

print("быстрая сортировка:")
print(runningTime(f: quickSort(oneHundredArray)).duration)
print("сортировка выбором:")
print(runningTime(f: selectionSort(oneHundredArray)).duration)
print("пузырьковая сортировка:")
print(runningTime(f: bubleSort(oneHundredArray)).duration)
print("шейкерная сортировка:")
print(runningTime(f: shakerSort(oneHundredArray)).duration)
print("сортировка Шелла:")
print(runningTime(f: shellSort(oneHundredArray)).duration)
print("сортировка подсчётом:")
print(runningTime(f: countingSort(oneHundredArray)).duration)
print("сортировка слиянием:")
print(runningTime(f: mergeSort(oneHundredArray)).duration)
print("пирамидальная сортировка:")
print(runningTime(f: heapSort(oneHundredArray)).duration)
print("\n")

print("тесты для массивов с 1000 элементов")
print("\n")

print("быстрая сортировка:")
print(runningTime(f: quickSort(oneThousnadArray)).duration)
print("сортировка выбором:")
print(runningTime(f: selectionSort(oneThousnadArray)).duration)
print("пузырьковая сортировка:")
print(runningTime(f: bubleSort(oneThousnadArray)).duration)
print("шейкерная сортировка:")
print(runningTime(f: shakerSort(oneThousnadArray)).duration)
print("сортировка Шелла:")
print(runningTime(f: shellSort(oneThousnadArray)).duration)
print("сортировка подсчётом:")
print(runningTime(f: countingSort(oneThousnadArray)).duration)
print("сортировка слиянием:")
print(runningTime(f: mergeSort(oneThousnadArray)).duration)
print("пирамидальная сортировка:")
print(runningTime(f: heapSort(oneThousnadArray)).duration)
print("\n")

print("тесты для массивов с 1 000 000 элементов")
print("\n")

print("быстрая сортировка:")
print(runningTime(f: quickSort(oneMillionArray)).duration)
print("сортировка Шелла:")
print(runningTime(f: shellSort(oneMillionArray)).duration)
print("сортировка подсчётом:")
print(runningTime(f: countingSort(oneMillionArray)).duration)
print("пирамидальная сортировка:")
print(runningTime(f: heapSort(oneMillionArray)).duration)
print("сортировка слиянием:")
print(runningTime(f: mergeSort(oneMillionArray)).duration)
print("шейкерная сортировка:")
print(runningTime(f: shakerSort(oneMillionArray)).duration)
print("сортировка выбором:")
print(runningTime(f: selectionSort(oneMillionArray)).duration)
print("пузырьковая сортировка:")
print(runningTime(f: bubleSort(oneMillionArray)).duration)
print("\n")

*/






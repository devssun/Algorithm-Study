// https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    let min: Int = getMin(arr)
    let max: Int = getMax(arr)
    var minSum: Int = 0
    var maxSum: Int = 0
    
    let isSameNum = arr.map { $0 }.reduce(0, +)
    if (isSameNum % min == 0) && (isSameNum % max == 0) {
        minSum = isSameNum - min
        maxSum = isSameNum - max
    }else{
        for i in arr {
            if i != min { minSum += i }
            if i != max { maxSum += i }
        }
    }
    
    print("\(maxSum) \(minSum)")
}

func getMin(_ arr: [Int]) -> Int {
    var min: Int = 10000000000
    for i in arr {
        if i <= min { min = i }
    }
    return min
}

func getMax(_ arr: [Int]) -> Int {
    var max: Int = 1
    for i in arr {
        if i >= max { max = i }
    }
    return max
}

miniMaxSum(arr: [5, 5, 5, 5, 5])
miniMaxSum(arr: [1, 2, 3, 4, 5])
miniMaxSum(arr: [7, 69, 2, 221, 8974])

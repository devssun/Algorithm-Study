// https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar: [Int]) -> Int {
    var result: Int = 0
    for i in ar {
        if (i <= 0) || (i >= 100000000000) {
            continue
        }
        result += i
    }
    return result
}

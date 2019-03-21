// https://www.hackerrank.com/challenges/diagonal-difference/problem?h_r=profile

import Foundation

// Complete the diagonal Difference function in the editor below. 
// It must return an integer representing the absolute diagonal difference.
func diagonalDifference(arr: [[Int]]) -> Int {
    var sum1: Int = 0
    var sum2: Int = 0
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j {
                sum1 += arr[i][j]
            }
            if i + j == (arr.count - 1) {
                sum2 += arr[i][j]
            }
        }
    }
    
    return abs(sum1 - sum2)
}

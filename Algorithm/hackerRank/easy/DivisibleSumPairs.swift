// https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

import Foundation

// Complete the divisibleSumPairs function below.
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    if n <= 2 || n >= 100 { "invalid" }
    if k <= 1 || k >= 100 { "invalid" }
    var result: Int = 0
    
    for i in 0..<ar.count {
        if i <= 1 && i >= 100 { "invalid" }
        for j in 0..<ar.count {
            if i < j && (ar[i] + ar[j]) % k == 0 {
                result += 1
            }
        }
    }
    
    return result
}

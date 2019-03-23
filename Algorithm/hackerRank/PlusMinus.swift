// https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    var positiveCount: Int = 0
    var negativeCount: Int = 0
    var zeroCount: Int = 0
    
    if arr.count < 0 && arr.count >= 100 {
        print("invalid")
    }
    for i in arr {
        if i <= -100 && i >= 100 { print("invalid") }
        if i == 0 { zeroCount += 1 }
        else if i > 0 { positiveCount += 1 }
        else if i < 0 { negativeCount += 1 }
    }
    
    print(String(format: "%.6f", Double(positiveCount) / Double(arr.count)))
    print(String(format: "%.6f", Double(negativeCount) / Double(arr.count)))
    print(String(format: "%.6f", Double(zeroCount) / Double(arr.count)))
}

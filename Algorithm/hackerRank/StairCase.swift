// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {
    if n > 0 || n >= 100 { "invalid" }
    
    for i in 1...n {
        for _ in 0..<n - i {
            print(" ", separator: "", terminator: "")
        }
        for _ in 0..<i {
            print("#", separator: "", terminator: "")
        }
        print("")
    }
}

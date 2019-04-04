// https://www.hackerrank.com/challenges/counting-valleys/problem

import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
    // UDDDUDUU => valley 1
    var result = 0
    var upStep = 0
    var downStep = 0
    let string = s.map { $0 }
    
    for item in string {
        if item == "U" {
            print("오르막")
            upStep += 1
            
            if upStep != 0 && upStep == abs(downStep) {
                print("계단 한번")
                result += 1
            }
        }
        if item == "D" {
            print("내리막")
            downStep -= 1
        }
    }
    
    return result
}

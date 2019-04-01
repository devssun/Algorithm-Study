// https://www.hackerrank.com/challenges/sock-merchant/problem
import Foundation

// Complete the sockMerchant function below.
// 양말 짝 맞추기
// 10 20 20 10 10 30 50 10 20 일 때 짝이 되는 갯수는 3 (10, 10) (10, 10) (20, 20)
func sockMerchant(n: Int, ar: [Int]) -> Int {
    if n >= 1 && n <= 100 { "invalid" }
    var counts = [Int]()
    var result: Int = 0
    
    let uniqueArray = Array(Set(ar))
    
    for i in 0..<uniqueArray.count {
        var num = 0
        for j in 0..<ar.count {
            if uniqueArray[i] == ar[j] {
                num += 1
            }
        }
        counts.append(num)
    }
    
    for i in 0..<counts.count {
        result += counts[i] / 2
    }
    
    return result
}

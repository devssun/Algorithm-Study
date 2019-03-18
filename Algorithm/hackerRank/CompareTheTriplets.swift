// https://www.hackerrank.com/challenges/compare-the-triplets/problem

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    // a와 b의 같은 자리수를 비교한다
    // a > b 이면 a가 +1 포인트
    // a < b 이면 b가 +1 포인트
    // a = b 이면 점수 없음
    var result = [0, 0]
    for i in 0..<a.count {
        if a[i] > b[i] {
            result[0] += 1
        }else if a[i] < b[i] {
            result[1] += 1
        }
    }
    
    return result
}

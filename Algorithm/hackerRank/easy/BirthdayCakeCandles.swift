// https://www.hackerrank.com/challenges/birthday-cake-candles/problem
// 조카는 초 중에 키가 제일 큰 초만 불 수 있다.
// 조카가 불 수 있는 초의 개수는?

import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    // 배열의 숫자 중 가장 큰 숫자를 찾는다
    let max = ar.max()
    
    var highestCandle: Int = 0
    for i in ar {
        // 해당 숫자가 몇개인 지 체크한다
        if i == max { highestCandle += 1 }
    }
    
    return highestCandle
}

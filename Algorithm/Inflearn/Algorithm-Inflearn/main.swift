//
//  main.swift
//  Algorithm-Inflearn
//
//  Created by 최혜선 on 2020/02/28.
//  Copyright © 2020 jamie. All rights reserved.
//

import Foundation

/**
 인프런 - 영리한 프로그래밍을 위한 알고리즘 강좌
 - https://www.inflearn.com/course/알고리즘-강좌/dashboard
 - https://www.youtube.com/watch?v=ln7AfppN7mY
 */

class Recursive {
    // 1. 무한 루프 예제
    func infinityLoop() {
        print("Hello, World!")
        infinityLoop()
    }

    // 2. 0부터 n 까지 더하는 예제
    func sum(n: Int) -> Int {
        if n == 0 {
            return 0
        } else {
            return n + sum(n: n-1)
        }
    }
    
    // 3. 팩토리얼  n*(x-1)!
    func factorial(n: Int) -> Int {
        if n == 0 {
            return 1
        } else {
            return n * factorial(n: n - 1)
        }
    }
}

let result = Recursive().sum(n: 5)
print("합 예제 결과 : \(result)")

let result2 = Recursive().factorial(n: 4)
print("팩토리얼 예제 결과 : \(result2)")

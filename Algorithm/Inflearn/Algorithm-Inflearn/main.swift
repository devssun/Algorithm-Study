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
    
    // 4. 2진수로 변환하여 출력
    func printBinary(n: Int) {  // 음이 아닌 정수 n을 이진수로 변환하여 인쇄한다
        if n < 2 {
            print(n, terminator: "")
        } else {
            printBinary(n: n / 2)   // n을 2로 나눈 몫을 먼저 2진수로 변환하여 인쇄한 후
            print(n % 2, terminator: "")    // n을 2로 나눈 나머지를 인쇄한다
        }
    }
    
    // 5. 배열의 합 구하기
    // data[0]에서 data[n-1] 까지의 합을 구하여 반환한다.
    func sumArray(n: Int, data: [Int]) -> Int {
        if n <= 0 {
            return 0
        } else {
            return sumArray(n: n - 1, data: data) + data[n - 1]
        }
    }
    
    // 6. 순차 탐색 - 변경 전
    func search(data: [Int], n: Int, target: Int) -> Int {
        for i in 0..<n {
            if data[i] == target {
                return i
            }
        }
        return -1
    }
    
    // 6. 순차 탐색 - 변경 후
    func RecursionSearch(data: [Int], begin: Int, end: Int, target: Int) -> Int {
        if begin > end {
            return -1
        } else if target == data[begin] {
            return begin
        } else {
            return RecursionSearch(data: data, begin: begin + 1, end: end, target: target)
        }
    }
    
    // 7. 이진 검색
    func binarySearch(data: [Int], begin: Int, end: Int, target: Int) -> Int {
        if begin > end {
            return -1
        } else {
            let middle = (begin + end) / 2
            if data[middle] == target {
                return middle
            } else if data[middle] > target {
                return binarySearch(data: data, begin: begin, end: middle - 1, target: target)
            } else if data[middle] < target {
                return binarySearch(data: data, begin: middle + 1, end: end, target: target)
            }
        }
       return -1
    }
}

//let result = Recursive().sum(n: 5)
//print("합 예제 결과 : \(result)")
//
//let result2 = Recursive().factorial(n: 4)
//print("팩토리얼 예제 결과 : \(result2)")
//
//Recursive().printBinary(n: 5)
//
//let result4 = Recursive().sumArray(n: 4, data: [0, 1, 2, 3])
//print("\n배열의 합 구하기 예제 결과 : \(result4)")

let result = Recursive().RecursionSearch(data: [1, 2, 4, 6, 3], begin: 0, end: 5, target: 3)
print(result)

let binarySearch = Recursive().binarySearch(data: [0, 1, 2, 3, 4, 5], begin: 2, end: 4, target: 3)
print(binarySearch)

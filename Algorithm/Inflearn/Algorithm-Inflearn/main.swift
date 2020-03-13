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

class Sort {
    // 1. 선택정렬
    func selectionSort(data: [Int]) -> [Int] {
        var result = data
        var location = 0
        var min: Int
        for i in 0 ..< result.count {
            min = result[i]
            location = i
            for j in i+1 ..< result.count {
                if min > result[j] {
                    min = result[j]
                    location = j
                }
            }
            
            result.swapAt(i, location)
        }
        return result
    }
    
    // 2. 버블정렬
    func bubbleSort(data: [Int]) -> [Int] {
        var result = data
        
        for _ in 0..<result.count {
            for j in 0..<result.count-1 {
                if result[j] > result[j+1] {
                    result.swapAt(j, j+1)
                }
            }
        }
        
        return result
    }
    
    /// 3. merge sort
    func split(data: [Int]) -> [Int] {
        // 데이터 길이가 1이면 바로 리턴
        if data.count == 1 {
            return data
        }
        
        // 배열을 가장 작은 단위로 쪼개기
        let medium = data.count / 2
        let left: [Int] = split(data: Array(data[0..<medium]))
        let right: [Int] = split(data: Array(data[medium..<data.count]))
        return merge(left: left, right: right)
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var result = [Int]()
        var leftPoint = 0
        var rightPoint = 0
        
        // 왼쪽, 오른쪽 배열의 값을 비교하여 작은 값부터 배열에 추가
        while leftPoint < left.count && rightPoint < right.count {
            if left[leftPoint] <= right[rightPoint] {
                result.append(left[leftPoint])
                leftPoint += 1  // 추가 후 인덱스 증가
            } else {
                result.append(right[rightPoint])
                rightPoint += 1 // 추가 후 인덱스 증가
            }
        }
        
        // 왼쪽 배열의 남은 값을 배열에 모두 추가
        while leftPoint < left.count {
            result.append(left[leftPoint])
            leftPoint += 1
        }
        
        // 오른쪽 배열에 남은 값을 배열에 모두 추가
        while rightPoint < right.count {
            result.append(right[rightPoint])
            rightPoint += 1
        }
        
        return result
    }
}

print(Sort().split(data: [6, 4, 1, 2, 3, 5, 7, 8]))
print(Sort().split(data: [4, 3, 6, 1, 2, 8, 7, 5]))

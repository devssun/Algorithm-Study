// https://www.hackerrank.com/challenges/utopian-tree/problem

import Foundation

// Utopian Tree 는 매년 2주기의 성장을 거친다 (봄, 여름에 성장)
// 봄에 심는다
// 봄에는 높이가 두배, 여름마다 높이가 1 미터 증가

// 성장주기 n 이 5인 경우 => 5년
// Period  Height
// 0          1 -> 1미터 심음
// 1          2 -> 2미터 증가
// 2          3 -> 1미터 증가
// 3          6 -> 2배 증가
// 4          7 -> 1미터 증가
// 5          14 -> 2배 증가

func utopianTree(n: Int) -> Int {
    var tree = 1
    
    if n == 0 { return tree }
    
    for i in 1...n {
        if i % 2 == 0 {
            tree += 1
        }else {
            tree *= 2
        }
    }
    
    return tree
}

utopianTree(n: 1)


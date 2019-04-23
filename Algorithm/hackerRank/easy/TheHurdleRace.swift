// https://www.hackerrank.com/challenges/the-hurdle-race/problem

import Foundation

// Complete the hurdleRace function below.
func hurdleRace(k: Int, height: [Int]) -> Int {
    // k - 마법약으로 증가하는 높이
    let result = height.max()! - k
    return result < 0 ? 0 : result
}

hurdleRace(k: 7, height: [2, 5, 4, 5, 2])

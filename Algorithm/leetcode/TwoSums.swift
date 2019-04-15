// https://leetcode.com/problems/two-sum/
// 배열에서 target 이 나오는 합의 index를 리턴하라

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
    
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    if !result.contains(i) && !result.contains(j) {
                        result.append(i)
                        result.append(j)
                    }
                }
            }
        }

        return result
    }
}

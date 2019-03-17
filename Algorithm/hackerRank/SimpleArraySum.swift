// https://www.hackerrank.com/challenges/simple-array-sum/problem

// Simple Array Sum

func simpleArraySum(ar: [Int]) -> Int {
    /*
     * Write your code here.
     */
    var result = 0
    for i in ar {
        result += i
    }
    return result
}

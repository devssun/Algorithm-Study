// https://leetcode.com/problems/jewels-and-stones/

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var result: Int = 0
    
    if J.count > 50 || S.count > 50 {
        print("invalid")
        return 0
    }
    
    for i in J {
        for j in S {
            if i == j {
                result += 1
            }
        }
    }
    
    return result
}


numJewelsInStones("z", "ZZ")

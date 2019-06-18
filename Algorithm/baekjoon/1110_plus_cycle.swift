// https://www.acmicpc.net/problem/1110
// 뭔가 되게 지저분하고 복잡하지만.. 풀었다

import Foundation

func checkLimitNumber(_ input: Int) -> [Int] {
    var result = [Int]()
    // 3. 10 이하면 일의 자리에 0을 붙인다 / 이상이면 그대로 사용한다
    if input < 10 {
        result.append(0)
        result.append(input)
    }else{
        result.append(input/10)
        result.append(input%10)
    }
    return result
}

// 1. 숫자를 입력받는다
if let inputString = readLine(), let originNumber = Int(inputString) {
    var count: Int = 1
    // 2. 숫자가 10 이하인지 체크한다
    var originNumbers = checkLimitNumber(originNumber)
    
    // 8. 4번~8번을 반복하여 수행한다
    while true {
        // 4. 입력받은 숫자의 각 자리수의 숫자를 더한다
        let result: [Int] = "\(originNumbers[0] + originNumbers[1])".compactMap {Int(String($0))}
        print("더한 수 \(result)")
        
        // 5. 주어진 수의 가장 오른쪽 자리 수와 앞에서 구한 합의 가장 오른쪽 자리 수를 이어 붙인다
        var compareNumber = [Int]()
        compareNumber.append(originNumbers.last!)
        compareNumber.append(result.last!)
        
        let compare = Int((compareNumber.map{String($0)}).joined())
        // 6. 처음 입력 받은 숫자와 같은 지 체크한다
        // 7. 같으면 사이클 수를 print 하고 종료한다 / 다르면 사이클 수 ++1 한다
        print("값 체크 \(inputString) \(compareNumber)")
        if originNumber == compare! {
            print(count)
            break
        }
        
        originNumbers = compare! < 10 ? checkLimitNumber(compare!) : compareNumber
        count += 1
    }
}



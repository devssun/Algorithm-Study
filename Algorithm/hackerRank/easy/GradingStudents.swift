// https://www.hackerrank.com/challenges/grading/problem

import Foundation

/*
 * Complete the gradingStudents function below.
 */
func gradingStudents(grades: [Int]) -> [Int] {
    /*
     * Write your code here.
     */
    // 모든 학생은 0~100 범위의 점수를 받는다
    // 어떤 점수는 40점 아래는 실패한 학년..
    
    // 샘은 교수고 아래 룰에 따라 점수를 준다
    // 1. 등급과 5의 다음 배수의 차이가 3보다 작으면, 다음 배수의 5까지 반올림한다.
    // 2. 38점 이하이면 실패한 점수이므로 반올림이 일어나지않는다
    // 예 84점이면 85점으로 반올림할 수 있지만 grade는 29라서 반올림해서 40보다 작기 때문에 반올림되지않습니다
    // 예 73 - 73에서 5의 다음 배수는 75, 75-73 은 3보다 작으므로 75로 반올림
    // 예 67 - 67에서 5의 다음 배수는 70, 70-67 은 3이므로 점수 그대로
    // 예 38 - 38에서 5의 다음 배수는 40, 40-38 은 3보다 작으므로 40으로 반올림
    // 예 33은 40보다 작으므로 33 그대로
    
    var result = [Int]()
    
    if (grades.count <= 1) || (grades.count >= 60) {
        print("invalid")
    }
    
    for grade in grades {
        if grade <= 0 && grade >= 100 {
            print("invalid \(grade)")
        }
        
        result.append(isCanRounding(grade))
    }
    
    return result
}

// version 1
func isCanRounding(_ grade: Int) -> Int {
    // 고쳐보기 
    let multiple: Int = grade / 5
    let nextMultiple = multiple == 0 ? multiple * 5 : (multiple + 1) * 5
    
    if grade < 38 {
        return grade
    }else if nextMultiple - grade < 3 {
        return nextMultiple
    }else if nextMultiple - grade == 3 {
        return grade
    }else{
        return grade
    }
}

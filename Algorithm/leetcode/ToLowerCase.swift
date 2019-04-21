// https://leetcode.com/problems/to-lower-case

import Foundation

func toLowerCase(_ str: String) -> String {
    var result = ""

    // 주어진 문자열의 ascii code 값을 구한다
    for index in str.utf16 {
        if index >= 65 && index <= 90 {
            // ascii code로 대문자일 경우 소문자 ascii code로 변경한다 (+ 32)
            // 결과 문자열에 더한다
            result += String(UnicodeScalar(index + 32)!)
        }else{
            result += String(UnicodeScalar(index)!)
        }
    }

    // 결과 리턴
    return result
}

toLowerCase("al&phaBET")


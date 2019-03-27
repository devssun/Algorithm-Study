// https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    // 07:05:45PM => 19:05:45
    let splitString = NSString(string: s).components(separatedBy: ":")
    let ampm = NSString(string: splitString[2]).substring(from: 2)
    let seconds = NSString(string: splitString[2]).substring(to: 2)
    let date = String(format: "%@:%@:%@", convertHour(ampm, splitString[0]), splitString[1], seconds)
    return date
}

func convertHour(_ ampm: String, _ hour: String) -> String {
    var hourValue: String = ""
    if ampm == "PM" {
        hourValue = hour == "12" ? "12" : String(Int(hour)! + 12)
    }else{
        hourValue = hour == "12" ? "00" : hour
    }
    return hourValue
}

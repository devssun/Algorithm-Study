// https://www.acmicpc.net/problem/11654

if let inputString = readLine(), let ascii = Unicode.Scalar(inputString) {
    let string = UInt8(ascii: ascii)
    print(string)
}

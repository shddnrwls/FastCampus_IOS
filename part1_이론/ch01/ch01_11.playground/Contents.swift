/*
 옵셔널 해제 방법
 1. 명시적 해제 = 강제 해제,비강제 해제(옵셔널 바인딩)
 2. 묵시적 해제 = 컴파일러에 의한 자동 해졔, 옵셔널의 묵시적 해제
 */
import UIKit

var number: Int? = 3
print(number) // Optional(3)
print(number!) //3 옵셔널 뒤에 !를 붙여 강제로 해제 (만약 값이 nil인 경우 에러가 발생)

//비강제 해제
if let result = number {
    print(result) //3
} else {
    //nil일 경우 여기가 실행
}

func test() {
    let number: Int? = 5
    guard let result = number else {return} // 조건이 true일때만 통과
    print(result)
}

test() // 5
//컴파일러에 의한 해제
let value: Int? = 6
if value == 6 {
    print("value가 6")
} else {
    print("value가 6이 아닙니다.")
}
//비교연산자를 이용해 다른 값과 비교하면 컴파일러가 자동으로 옵셔널값을 해제시켜줌

//묵시적 해제
let string = "12"
var stringToInt: Int! = Int(string)


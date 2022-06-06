import Foundation

//Int 64비트 정수형
var someInt: Int = -100
someInt = 100

//UInt 부호가 없는 64비트 정수형
var someUint: UInt = 200
//someUint = -200 에러

//Float 32비트 부등소수점
var someFloat: Float = 1.1
someFloat = 1 //자동으로 1.0을 저장 (에러안남)

//Double 64비트 부등소수점
var someDouble: Double = 1.1
someDouble = 1 //자동으로 1.0을 저장 (에러안남)

//Bool true/false 값만 가짐
var someBool: Bool = false
someBool = true

//Character 문자만 저장
var someCharacter: Character = "A"
someCharacter = "가"
//someCharacter = "가나다라" 문자열이라 에러

//String 문자열
var someString: String = "가나다라"

//타입 추론 데이터 타입을 명시하지 않아도 컴파일러가 할당된 값을 기준으로 타입을 결정해줌
var number = 10

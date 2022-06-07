/*
 함수 - 함수는 작업의 가장 작은 단위이자 코드의 집합
 함수사용이유 - 반복적인 작업을 수행하기 위해
 swift의 함수는 1급 객체 이다. 함수를 변수 상수에 할당할 수 있고 매개변수로 사용할 수 있다.
 func 함수명(파라미터 이름:데이터 타입) -> 반환 타입{
  return 반환값
 }
 */


import Foundation

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3) //8

func hello() -> String {
    return "hello"
}

hello() // "hello"

func printName() -> Void {
    
}
//매개변수에 기본값을 넣어서 사용
func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend: "Albert") //Hello, Albert! I'm gunter

/*
 전달인자 함수
 func 함수 이름(전달인자 레이블: 매개변수 이름: 매개변수 타입,전달인자 레이블: 매게변수 이름: 매개변수 타입...) -> 반환 타입{
  return 반환값
 }
 사용자 입장에서 매개변수의 역활을 좀더 명확하게 표현할수있어서 코드의 가독성이 좋아진다.
 */
func sendMessage(from myName: String, to name: String) -> String{
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "Gunter", to: "Json") //"Hello Json! I'm Gunter"

//와일드카드 식별자
func sendMessage2(_ name: String) -> String{
    return "hello \(name)"
}

sendMessage2("노욱진") //"hello 노욱진"

//가변 매개변수
func sendMessage3(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}
sendMessage3(me: "Gunter", friends: "Json","Albert","Stella")
//Hello ["Json", "Albert", "Stella"]! I'm Gunter" 배열을 넘겨받을수있다.




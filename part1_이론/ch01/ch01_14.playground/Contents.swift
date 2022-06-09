/*
 초기화 구문 init - 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
 
 init(매개변수: 타입, ...) {
    // 프로퍼티 초기화
    // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
 */

import UIKit

class User {
    var nickName: String
    var age: Int
    init(nickName:String, age:Int){
        self.nickName = nickName
        self.age = age
    }
    init(age: Int){
        self.nickName = "albert"
        self.age = age
    }
    deinit{
        print("deint user")
    }//인스턴스가 메모리에 해제되기 직전에 호출되고 클래스 인스턴스와 관련하여 원하는 정리작업을 구현 가능(클래스에서만 사용 가능)
}

var user = User(nickName: "gunter", age: 23)
user.nickName //"gunter"
user.age //23

var user2 = User(age: 28)
user2.nickName //"albert"
user2.age//28

var user3: User? = User(age: 23)
user3 = nil //deint user

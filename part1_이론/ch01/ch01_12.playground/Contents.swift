/*
 struct 구조체 이름 {
    프로퍼티(멤버변수)와 메서드(멤버함수)
 }
 */
import UIKit

struct User {
    var nickName:String
    var age: Int
    func information(){
        print("\(nickName),\(age)")
    }
}

var user = User(nickName: "gunter", age: 23)

user.nickName //gunter
user.age // 23

user.nickName = "albert"
user.nickName // albert

user.information() //albert,23

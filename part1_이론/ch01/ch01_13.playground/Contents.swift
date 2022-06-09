/*
 class 클래스 이름{
    프로퍼티와 메서드
 }
 */

import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    init(){
        
    }
    
    func introduce(){
        print("\(name),\(age)")
    }
}

var dog = Dog()
dog.name = "coco"
dog.age = 3
dog.name //"coco"
dog.age //3

dog.introduce()//coco,3


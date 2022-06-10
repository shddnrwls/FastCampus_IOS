/*
 프로퍼티 - 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻
 프로퍼티의 종류
 - 저장 프로퍼티: 인스턴스에 프로퍼티 값이 저장되는것
 - 연산 프로퍼티: 값을 직접적으로 저장하지 않아도 getter,setter를 사용해 직접적으로 접근이 가능
 - 타입 프로퍼티
 */

import UIKit

struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "gunter", gender: "male")
print(dog) //"Dog(name: "gunter", gender: "male")\n"
dog.name = "노욱진"
//dog.gender = "female" // 상수라 에러

let dog2 = Dog(name: "gunter", gender: "male")
//dog2.name = "노욱진" // 구조체 인스턴스가 상수로 선언되어서 에러 (구조체가 값타입이기 떄문)

class Cat {
    var name: String
    let gender: String
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}
let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name) //gunter 클래스는 참조타입이라 상수로 선언해도 값이 변경된다.

//연산 프로퍼티
struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int{
        get{
            return averagePrice * quantity
        }
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock) //Stock(averagePrice: 2300, quantity: 3)
stock.purchasePrice // 6900
stock.purchasePrice = 3000
stock.averagePrice //1000 평균단가에 값이 변경되면 set안에 코드블럭이 실행되어 변경된 매입가와 총수량을 나눈값이 평균단가에 저장되어 바뀜

//프로퍼티 옵저버
class Account {
    var credit: Int = 0 {
        willSet{
            //값이 저장되기 직전에 호출
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet {
            //값이 저장된 직후에 호출
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}
var account = Account()
account.credit = 1000 //잔액이 0원에서 1000원으로 변경될 예정입니다.
                    //잔액이 0원에서 1000원으로 변경되었습니다.
//타입 프로퍼티 - 인스턴스 생성 없이 객체내 프로퍼티에 접근이 가능하게 하는것
struct SomeStructure {
    static var storedTypePorperty = "Some Value."
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypePorperty
SomeStructure.storedTypePorperty = "hello"
SomeStructure.storedTypePorperty // hello



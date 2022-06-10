/*
 클래스와 구조체 차이
 공통점
 - 값을 저장할 프로퍼티를 선언할 수 있습니다.
 - 함수적 기능을 하는 메서드를 선언 할 수 있습니다.
 - 내부 값에 .을 사용하여 접근할 수 있습니다.
 - 생성자를 사용해 초기 상태를 설정할 수 있습니다.
 - extension을 사용하여 기능을 확잘할 수 있습니다.
 - Portocol을 채택하여 기능을 설정할 수 있습니다.
 
 차이점
 
 클래스
 - 참조 타입
 - ARC로 메모리를 관리
 - 상속이 가능
 - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있음.
 - deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있음.
 - 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 줌(메모리가 복사)
 
 구조체
 - 값 타입
 - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당됩니다.
 - 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음(값 자체를 복사)
 */
import UIKit

class SomeClass {
    var count: Int = 0
    
}

struct SomeStruct {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count //2 클래스는 참조타입이라 같은 클래스의 인스턴스를 할당한 변수의 값을 변경하면 참조된 인스턴스의 값이 변경된다.(변수를 복사해도 하나의 인스턴스 주소값을 가리키고 있기에 복사본과 원본이 모두 같은 값을 가진다)

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count //0
struct2.count //3
struct3.count //4
//구조체는 값타입이라 같은 구조체의 인스턴스를 할당해도 매번 새로운 메모리가 할당되어 값을 변경하더라도 다른 구조체에 영향을 주지 않는다.


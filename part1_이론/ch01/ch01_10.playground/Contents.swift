/*
 옵셔널 - 값이 있을 수도 있고 없을 수도 있다.
 ex)
 var name:String = "안녕하세요"
 var name:String? = nil
 swift는 안정성이 장점인 언어이므로 값이 없을 수도 있는 변수에 옵셔널을 사용한다면 값이 없는 변수에 접근을 해도 프로그램이 종료 되지 않는다.
 
 */
import UIKit


var name: String? //기본값으로 nil이 할당

var optionalName: String? = "Gunter"
print(optionalName) //Optional("Gunter") Optional로 포장 되어 있다.
//var requiredName: String = optionalName //requiredName 변수는 항상 String값을 가지고 있어야 하므로 옵셔널을 대입 할수없다.

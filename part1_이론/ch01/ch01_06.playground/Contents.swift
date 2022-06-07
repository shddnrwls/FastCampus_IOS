//컬렉션타입
/*
 Array - 데이터 타입의 값들을 순서대로 저장하는 리스트
 Dictionary - 순서없이 키(key)와 값(value)한 쌍으로 데이터를 저장하는 컬렉션 타입
 Set - 같은 데이터 타입의 값을 순서없이 저장하는 리스트
 */

import Foundation

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[1] //2
numbers[0] //1

numbers.insert(4, at: 2)
numbers //[1,2,4,3]

numbers.remove(at: 0)
numbers //[2,4,3]

var names: [String] = [] //축약으로 선언

//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["노욱진": 1] //축약된 형태로 생성 가능
dic["김철수"] = 3
dic["김민지"] = 5
dic //["김민지": 5, "노욱진": 1, "김철수": 3]

dic["김민지"] = 6
dic //["노욱진": 1, "김철수": 3, "김민지": 6]

dic.removeValue(forKey: "김민지")
dic //["김철수": 3, "노욱진": 1]

var set: Set = Set<Int>() //축약이 따로 없다
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set //{30, 20, 10} set은 순서가 없고 같은 값을 여러개 넣어도 하나만 저장

set.remove(20)
set//{10, 30}




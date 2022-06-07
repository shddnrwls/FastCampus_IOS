/*
 반복문 - 반복적으로 코드가 실행되게 만드는 구문
 for-in, while,repeat-while
 for-in 구문은 미리 정의된 실행 횟수만큼 반복
 while 구문은 단순히 주어진 조건식이 false가 될때까지 반복(조건이 만족할떄까지 반복)
 */

import UIKit

/*
 for 루프상수 in 순회대상 {
    // 실행할 구문..
 }
 */

for i in 1...4 {
    print(i)
}
// 1 2 3 4

let array = [1,2,3,4,5]
for i in array {
    print(i)
}
// 1 2 3 4 5

/*
 while 조건식 {
    //실행할 구문
 }
 */
var number = 5
while number < 10 {
    number+=1
}
number //10

/*
 repeat {
    //실행할구문
 }while 조건식
 */
var x = 6
repeat {
    x+=2
} while x < 5
print(x) // 8 조건식에 따라 반복이 실행되지만 적어도 한번은 무조건 실행

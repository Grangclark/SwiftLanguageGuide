import UIKit

var greeting = "Hello, playground"


// 2025年7月24日(木)
// 関数(Functions)
// 関数の定義と呼び出し(Defining and Calling Functions)
// 下記の例の関数は、greet(person:) という関数で、名前が示す通り、
// 人の名前を入力値として受け取り、その人への挨拶を返します。
// この関数では、person という String 型のパラメータと、その人に対する挨拶を含めた String 型の戻り値を返します:
func greet(person: String) -> String {
    let greeting = "こんにちは、 " + person + "!"
    return greeting
}



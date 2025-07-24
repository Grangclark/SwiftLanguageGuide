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


// 2025年7月25日(金)
// 関数のパラメータと戻り値(Function Parameters and Return Values)
// Swift では、関数のパラメータと戻り値は非常に柔軟です。
// 名前のない単一のパラメータを持つシンプルなユーティリティ関数から、
// 読みやすいように表現できるパラメータ名と様々なパラメータオプションを持つ複雑な関数まで、
//あらゆるものを定義できます。

// パラメータなし関数(Functions Without Parameters)
// 入力パラメータは関数に必須ではありません。
// 入力パラメータのない関数は次のとおりです。
// この関数は、呼び出される度に、常に同じ String 型のメッセージを返します:
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// こんにちは、 world


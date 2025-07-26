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



// 2025年7月26日(土)
// 複数のパラメータがある関数(Functions With Multiple Parameters)
// 関数は、カンマ(,)区切りで複数のパラメータを持つことができます。
// この関数は、人の名前と、その人がすでに挨拶されているかどうかを入力値として受け取り、その人に適切な挨拶を返します:
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
// もう一度こんにちは、 Tim!



// 2025年7月27日(日)
// 戻り値なし関数(Functions Without Return Values)
// 戻り値の型を定義することも必須ではありません。
// greet(person:) バージョンは String 型の値を返すのではなく、その値を出力します。
func greet(person: String) {
    print("こんにちは、 \(person)!")
}
greet(person: "Dave")
// こんにちは、 Dave!




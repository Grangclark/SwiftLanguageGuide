import UIKit

var greeting = "Hello, playground"

// 2025/06/18[水]
// For-Inループ(For-In Loops)
// 配列のアイテムや数値の範囲、文字列の文字などのシーケンスに対してループ処理を行うために for-in ループを使います。
// 下記の例は、for-in ループを使用して配列のアイテムにループ処理を行なっています。
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("こんにちは、　\(name)!")
}
// こんにちは、 Anna!
// こんにちは、 Alex!
// こんにちは、 Brian!
// こんにちは、 Jack!



// 2025/06/19[木]
// 辞書のキーバリューペアにアクセスするためにもループ処理を使用することができます。
// 辞書を繰り返す際に、辞書内の個々のアイテムは (key, value) のタプルとして返され、
// for-in ループ内で使用するために、(key, value) のタプルの個々のメンバは明示的に命名した定数に展開できます。
// 下記のコードは、辞書のキーは animalName 定数に、バリューは legCount 定数に展開されています。
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName) には \(legCount) 本の足があります")
}
// cat には 4 本の足があります
// ant には 6 本の足があります
// spider には 8 本の足があります



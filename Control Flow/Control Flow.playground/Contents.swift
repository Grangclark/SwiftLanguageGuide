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


// 2025/06/20[金]
// 数値の範囲にも for-in ループを使用することができます。
// 下記の例では、5 の倍数の最初のいくつかを出力しています。
for index in 1...5 {
    print("\(index) x 5 は \(index * 5)")
}
// 1 x 5 は 5
// 2 x 5 は 10
// 3 x 5 は 15
// 4 x 5 は 20
// 5 x 5 は 25



// 2025/06/21[土]
// 各ループの値が必要ない場合、変数名の位置にアンダースコア(_)を付けることで無視できます。
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// 3 to the power of 10 is 59049





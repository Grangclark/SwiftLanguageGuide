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


/*
// 2025/06/22[日]
// 範囲についての詳細は、Range Operators(範囲演算子)を参照ください。
let minutes = 60
for tickMark in 0..<minutes {
    // 毎分ごとに 60 回目盛りを描きます
}



// 2025/06/23[月]
// 表示上ではもっと目盛を少なくしたいかもしれません。
// 5 分ごとに 1 目盛にしてみましょう。
// stride(from:to:by:) 関数を使用すると不要な目盛をスキップすることができます
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // 5 分ごと (0, 5, 10, 15 ... 45, 50, 55) に目盛を描きます
}


// 2025/06/24[火]
// 閉範囲も利用可能で、その場合は stride(from:through:by:) を使います:
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // 3 時間ごと (3, 6, 9, 12) に目盛を描きます
}


// 2025/06/25[水]
// while
// while ループは、条件を評価してからループを開始します。true ならば条件が false になるまでループ内の処理を繰り返します。
// while ループの基本的な書き方は下記の通りです:
while <#condition#> {
    <#statements#>
}
*/



// 2025/06/26[木]
// Repeat-While
// while ループの別の形として、repeat-while があり、ループ条件を検証する前に、一度ループ内の処理を実行します。
// その後、条件が false になるまで繰り返します。
// 下記が repeat-while ループの一般的な形式です。
repeat {
    <#statements#>
} while <#condition#>



// 2025/06/27[金]
// If
// 最もシンプルな形式の if 文は単一の 1 つの if 条件です。条件が true の場合にのみ、内部の文が実行されます。
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("とても寒いですね。マフラーを巻いたほうがいいでしょう。")
}
// とても寒いですね。マフラーを巻いたほうがいいでしょう。



// 2025/06/28[土]
// if 文は、条件が false の場合に if 文の代わりに実行する、else 句と呼ばれる文も提供できます。
// この文は else キーワードを使用して書かれます。
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("とても寒いですね。マフラーを巻いたほうがいいでしょう。")
} else {
    print("そんなに寒くありません。Tシャツを着ましょう。")
}
// そんなに寒くありません。Tシャツを着ましょう。



// 2025/06/29[日]
// さらに句を追加して、複数の if 文をつなげることもできます。
temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("とても寒いですね。マフラーを巻いたほうがいいでしょう。")
} else if temperatureInFahrenheit >= 86 {
    print("とても暖かいですね。日焼け止めを忘れずにしましょう。")
} else {
    print("そんなに寒くありません。Tシャツを着ましょう。")
}
// とても暖かいですね。日焼け止めを忘れずにしましょう。


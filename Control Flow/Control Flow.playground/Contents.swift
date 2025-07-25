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



// 2025/06/30[月]
// しかし、最後の else 句は必須ではなく、条件が絶対に必要でない場合は、除くこともできます。
temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("とても寒いですね。マフラーを巻いたほうがいいでしょう。")
} else if temperatureInFahrenheit >= 86 {
    print("とても暖かいですね。日焼け止めを忘れずにしましょう。")
}



// 2025/07/01[火]
// Swift は、値を設定するときに使用できる if の省略記法のスペルを提供します。例えば、以下のコードを考えてみましょう:
let temperatureInCelsius = 25
let weatherAdvice: String

if temperatureInCelsius <= 0 {
    weatherAdvice = "とても寒いですね。マフラーを巻いたほうがいいでしょう。"
} else if temperatureInCelsius >= 30 {
    weatherAdvice = "とても暖かいですね。日焼け止めを忘れずにしましょう。"
} else {
    weatherAdvice = "そんなに寒くありません。Tシャツを着ましょう。"
}

print(weatherAdvice)
// "そんなに寒くありません。Tシャツを着ましょう。"



// 2025/07/02[水]
// if 式と呼ばれる別の構文を使えば、このコードをより簡潔に書くことができます:
if weatherAdvice = if temperatureInCelsius <= 0 {
    "とても寒いですね。マフラーを巻いたほうがいいでしょう。"
} else if temperatureInCelsius >= 30 {
    "とても暖かいですね。日焼け止めを忘れずにしましょう。"
} else {
    "そんなに寒くありません。Tシャツを着ましょう。"
}

print(weatherAdvice)
// "そんなに寒くありません。Tシャツを着ましょう。"



// 2025/07/03[木]
// if 式は、予期せぬ失敗に対して、エラーを投げたり、fatalError(_:file:line:) のように、
// 戻り値を返さない関数を呼び出して対応することができます。例えば、次のようなものです:
if weatherAdvice = if temperatureInCelsius > 100 {
    throw TemperatureError.boiling
} else {
    "適度な気温ですね。"
}



// 2025/07/04[金]
// Switch
// switch 文は、複数の可能性に対してパターンマッチを使用して比較を行い、値を検討します。
// そして、一致した最初のパターンのコードのブロックを実行します。
// switch 文は、複数の可能性がある状態に対して if 文の代わりに使用することができます。

// 下記の例では、someCharacter という 1 つの小文字を検証する switch 文です。
let someCharacter: Character = "2"
switch someCharacter {
case "a":
    print("ラテンアルファベットの最初の文字")
case "z":
    print("ラテンアルファベットの最後の文字")
default:
    print("その他の文字")
}
// ラテンアルファベットの最後の文字



// 2025/07/05[土]
// if 文と同様に、switch 文にも式があります:
let anotherCharacter: Character = "a"
let message = switch anotherCharacter {
case "a":
    "ラテンアルファベットの最初の文字"
case "z":
    "ラテンアルファベットの最後の文字"
default:
    "その他の文字"
}

print(message)
// "ラテンアルファベットの最初の文字"



// 2025/07/06[日]
// 暗黙的にfallthroughしない(No Implicit Fallthrough)
// 各ケースの本文は少なくとも 1 つの文を実行しなければなりません。
// 次のコードは最初のケースの本文が空なので不正です。
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a": // 空の 本文 は不正
case "A":
    print("文字 A")
default:
    print("A 以外の文字")
}
// コンパイルエラーが発生します



// 2025/07/07[月]
// "a"と "A" の両方に合致させたい場合は、
// カンマ区切り(,)で値を区切って、
// 2 つの値を 1 つのケースに合成します。
let anotherChracter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("文字 A")
default:
    print("A 以外の文字")
}
// 文字 A



// 2025/07/08[火]
// 範囲マッチング(Interval Matching)
// switch ケースの値には、範囲内に含まれるかどうかのチェックもできます。
// 下記の例では、数値の範囲を使用して、任意のサイズの数値の自然言語カウントを提供します。
let approximateCount = 62
let countedThings = "土星を回る月"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "まったくない"
case 1..<5:
    naturalCount = "少しある"
case 5..<12:
    naturalCount = "多少ある"
case 12..<100:
    naturalCount = "数多くある"
case 100..<1000:
    naturalCount = "たくさんある"
default:
    naturalCount = "膨大にある"
}
print("\(naturalCount) は \(countedThings)。")
// 土星を回る月 は 数多くある。



// 2025/07/09[水]
// タプル(Tuples)
// タプルを使用して同じ switch 文の中で、複数の値を検証することができます。
// タプルの個々の要素は、異なる値や範囲に対して検証できます。
// 逆に、アンダースコア(_)を使用すると、ワイルドカードとしてどんな値にも合致させることができます。
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) は原点にあります")
case (_, 0):
    print("\(somePoint) は x 軸上にあります")
case (0, _):
    print("\(somePoint) は y 軸上にあります")
case (-2...2, -2...2):
    print("\(somePoint) はボックスの中にあります")
default:
    print("\(somePoint) はボックスの外にあります")
}
// (1, 1) はボックスの中にあります



// 2025/07/10[木]
// 値バインディング(Value Bindings)
// switch ケースは、合致した値を、ケースの本文で使用するために、
// 一時的な定数または変数に一致する 1 つまたは複数の値に名前を付けることができます。
// この挙動は、値を変数や定数にバインドするので、値バインディングと呼ばれています。
// 下記の例では、(Int, Int) 型のタプルとして (x, y) 座標を受け取り、グラフに分布しています。
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("x 軸上の x の値が \(x) の点")
case (0, let y):
    print("y 軸上の y の値が \(y) の点")
case let (x, y):
    print("その他の (\(x), \(y)) の点")
}
// x 軸上の x の値が 2 の点



// 2025/07/11[金]
// Where
// switch 文は、追加条件として where 句を使用することができます。
// 下記の例では、(x, y) 座標を受け取り、グラフに分布しています。
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) は x == y の線上にあります")
case let (x, y) where x == -y:
    print("(\(x), \(y)) は x == -y の線上にあります")
case let (x, y):
    print("(\(x), \(y)) は単なる任意の点です ")
}
// (1, -1) は x == -y 線上にあります



// 2025/07/12[土]
// 複合ケース(Compound Cases)
// 各ケースをカンマ(,)で区切ってケースの後に書くことで、
// 同じ本文を共有する複数のケースを書くことができます。
// その中の 1 つのケースに合致した場合に、合致したと見なされます。
// ケースのリストが長くなるような場合は、複数行にまたがって書くことができます。例えば:
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) は母音です")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) は子音です")
default:
    print("\(someCharacter) は母音でも子音でもありません")
}
// e は母音です



// 2025/07/13[日]
// 複合ケースは、値バインディングを含めることもできます。
// 複合ケース内の全てのパターンには、同じ値バインディングのセットが含まれている必要があり、
// 各バインディングは、全てのパターンから同じ型の値を取得する必要があります。
// こうすることで、複合ケース内のどのパターンでも、
// 本文内でバインディングされた値にアクセスすることができ、型も常に同じことが保証できます。
let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("x 軸上または y 軸上にあり、原点から \(distance) 離れている")
default:
    print("x 軸上または y 軸上にはない")
}
// x 軸上または y 軸上にあり、原点から 9 離れている



// 2025/07/14[月]
// パターン(Patterns)
// これまでの例では、それぞれの switch の case に、その case にマッチする値を示すパターンが含まれていました。
// if 文の条件式としてもパターンを使うことができます。次のようになります。
let somePoint = (12, 100)
if case (let x, 100) = somePoint {
    print("y=100線上に点\(x)を発見")
}
// "y=100線上に点12を発見" と出力



// 2025/07/15[火]
// for-in ループでは、コードに case を書かなくても、値をバインドするパターンを使って値の各部分に名前を付けることができます。
let points = [(10, 0), (30, -30), (-20, 0)]

for (x, y) in points {
    if y == 0 {
        print("x軸上に点\(x)を発見")
    }
}
// "x軸上に点10を発見" と出力
// "x軸上に点-20を発見" と出力



// 2025/07/16[水]
// 上記のfor-in ループはタプルの配列をイテレートし、
// タプルの 1 番目と 2 番目の要素を定数 x と y にバインドします。
// ループ内の文では、点が x 軸上にあるかどうかをチェックする if 文のように、
// これらの定数を使用できます。
// このコードをより簡潔に書くには、for-case-in ループを使って値のバインドと条件を組み合わせます。
// 以下のコードは、上記の for-in ループと同じ動作をします。
for case (let x, 0) in points {
    print("x軸上に点\(x)を発見")
}
// "x軸上に点10を発見" と出力
// "x軸上に点-20を発見" と出力



// 2025/07/17[木]
// for-case-in ループには、追加の条件をチェックするために where 節を含めることもできます。
// ループ内の文は、where 節が現在の要素に対して true である場合にのみ実行されます。例えば、次のようになります。
for case let (x, y) in points where x == y || x == -y  {
    print("原点を通る直線上に (\(x), \(y)) を発見")
}
// "原点を通る直線上に (30, -30) を発見" と出力

// このコードは タプルの 1 番目と 2 番目の要素を定数 x と y にバインドし、
// where 節でそれらの値をチェックします。where 節が true の場合、
// for ループの本体のコードが実行されます。そうでなければ、イテレーションは次の要素へと続きます。




// 2025/07/18[金]
// 制御転送文(Control Transfer Statements)
// 制御転送文は、コードの一部の制御を他の部分へ転送させることで、コードの実行順序を変更します。Swift には 5 つの制御転送文があります:
// continue
// break
// fallthrough
// return
// throw
// continue、break と fallthrough は下記に記載しています。return はFunctions(関数)、throw はPropagating Errors Using Throwing Functionsに記載しています。

// Continue
// continue 文は、各ループ内の実行を止めて、次のループの最初から処理を開始します。つまり、ループを抜けることなく「今のループ処理を完了します」と伝えます。
// 次の例は、全ての母音とスペースを小文字の文字列から除いて、暗号パズルフレーズを作成しています:
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// grtmndsthnklk



// 2025/07/19[土]
// Break
// Switch内でBreak(Break in a Switch Statement)
// switch 文の内部で使用するとき、break は switch の実行を即座に終了し、switch の末尾の閉じ括弧(})の後に制御フローを移します。
// 次の例では、Character 型の値が、4 つの言語内の 1 つの番号記号に合致するかどうかを判定しています。
// 簡潔にするために、複数の値を 1 つの switch ケースで網羅しています。
let numberSymbol: Character = "三"  // 中国語の数字 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("\(numberSymbol) の整数値は \(integerValue) です。")
} else {
    print("\(numberSymbol) の整数値は見つかりませんでした。")
}
// 三 の整数値は 3 です。



// 2025/07/20[日]
// Switch内でBreak(Break in a Switch Statement)
// switch 文の内部で使用するとき、break は switch の実行を即座に終了し、switch の末尾の閉じ括弧(})の後に制御フローを移します。
// switch 文は網羅的で空のケースが許されないため、明示的に何もしないことを伝えるために、わざと合致させて無視するときに必要になります。
// 無視したいケースの本文に break のみを書きます。
// そのケースに合致した場合、ケース内の break が switch 文全体の実行を即時に終了させます。
// 次の例では、Character 型の値が、4 つの言語内の 1 つの番号記号に合致するかどうかを判定しています。
// 簡潔にするために、複数の値を 1 つの switch ケースで網羅しています。
let numberSymbol: Character = "三"  // 中国語の数字 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("\(numberSymbol) の整数値は \(integerValue) です。")
} else {
    print("\(numberSymbol) の整数値は見つかりませんでした。")
}
// 三 の整数値は 3 です。

// この例では、numberSymbol が 1〜4 のラテン語、アラビア語、中国語、タイ語に合致するかどうかをチェックしています。
// 合致した場合、各ケースは、Int? の possibleIntegerValue 変数に適切な数字を設定しています。



// 2025/07/21[月]
// Fallthrough
// Swift の switch 文は、各ケースの底から次のケースに通り抜けることはしません。
// つまり、最初に合致したケースが完了したらすぐに switch 文全体の実行が終了します。
// 逆に、C 言語の switch 文では、各ケースへ通り抜けることを防ぐために、
// 明示的に break を各ケースの末尾に書かなければなりません。
// Swift の switch 文は、デフォルトで通り抜けないことで、C 言語とは反対に、
// より簡潔で挙動が予測しやすくなっています。間違って複数のケースを実行することを防ぎます。
// もし C 言語のような通り抜けが必要な場合は、fallthrough キーワードを使用してケースごとに設定することができます。
// 下記の例では、fallthrough を使用して数値のテキストによる説明を作成します。
let integerToDescribe = 5
var description = "数字 \(integerToDescribe) は"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " 素数です。そして、"
    fallthrough
default:
    description += "整数です。"
}
print(description)
// 数字 5 は 素数です。そして、整数です。

// この例では、description という新しい String 変数を宣言して、初期値を設定しています。
// この関数は switch 文で integerToDescribe を検証しています。
// integerToDescribe がリストの素数の 1 つの場合、この関数は description の末尾に、
// 数字が素数だと説明したテキストを追加します。
// default ケースにも「通り抜ける」ように、fallthrough キーワードを使用しています。
// default ケースでは、説明の末尾に追加のテキストを追加して switch 文は完了します。
// 数字の説明は、print(_:separator:terminator:) 関数を使用して出力されています。
// この例では、素数として 5 が適切に特定されています。



// 2025/07/22[火]
// 早期リターン(Early Exit)
// guard 文は if 文と同様に、式のブール値に応じて文を実行します。
// guard 文は、guard の後のコードを実行するために、guard の条件が true でなければならない場合に使います。
// if 文と異なり、guard 文は常に else 句が必要で、条件が false の場合に else 内が実行されます。
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("こんにちは \(name)!")

    guard let location = person["location"] else {
        print("そちらのお天気は良いといいですね。")
        return
    }

    print("\(location) のお天気は良いといいですね。")
}

greet(person: ["name": "John"])
// こんにちは John!
// そちらのお天気は良いといいですね。
greet(person: ["name": "Jane", "location": "Cupertino"])
// こんにちは Jane!
// Cupertino のお天気は良いといいですね。

// guard 文の条件を満たした場合、guard の閉じ括弧(})以降のコードを続けて実行します。
// 条件の一部としてオプショナルバインディングに使われている変数や定数は、
// guard の後のコードで利用できるようになります。




// 2025/07/23[水]
// 遅延アクション(Deferred Actions)
// if や while のように、コードの一部が実行されるかどうか、
// 何回実行されるかを制御する制御フローの構成要素とは異なり、
// defer はコードの一部がいつ実行されるかを制御します。
// defer ブロックは、プログラムが現在のスコープの最後に到達したときに、
// 後で実行されるコードを記述するために使用されます。
// たとえば、次のように使用します:
var score = 1
if score < 10 {
    defer {
        print(score)
    }
    score += 5
}
// "6"を出力

// 上の例では、defer ブロックの中のコードは、if 文の本文を抜ける前に実行されます。
// まず、if 文の中のコードが実行され、スコアが 5 増えます。
// そして、if 文のスコープを抜ける前に、defer のコードが実行され、score が表示されます。




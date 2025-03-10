import UIKit

// var greeting = "Hello, playground"

// 2025/02/23[日]
// 整数のための Int、浮動小数点の値のための Double、真偽値のための Bool、文字列のための String を含む、
// 多くの基本的なデータ型を提供しています。
// また、3 つのより強力な collection 型(Array, Set, Dictionary)も提供しています。

// 定数と変数の宣言
/*
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
*/

var environment = "development"
let maximumNumberOfLoginAttenmpts: Int
// maximumNumberOfLoginAttemptsにはまだ値がない。

if environment == "development" {
    maximumNumberOfLoginAttenmpts = 100
} else {
    maximumNumberOfLoginAttenmpts = 10
}
// この時点でmaximumNumberOfLoginAttemptsには値が存在し、値を読み取ることができる。

// カンマ(,)区切りで 1 行の中に複数の定数や変数を定義することもできます
var x = 0.0, y = 0.0, z = 0.0


// 型注釈(Type Annotations)
// 定数や変数を定義するときに、保持する値の種類をより明確にするために、
// 型注釈を使用することができます。定数や変数の名前の後にコロン(:)を置いて、型注釈を書きましょう。
// この例では welcomeMessage という変数に型注釈を書いて String が保持されることを示しています。
var welcomeMessage: String
welcomeMessage = "Hello"

// １行の中で、同じ型の複数の変数をカンマで区切って定義することもできます。
// この際、型注釈は最後の変数の後に 1 つ付けます。
var red, green, blue: Double


// 2025/02/24[月]
// 定数と変数の命名(Naming Constants and Variables)
// 定数名と変数名には、Unicode 文字も含めた、ほとんどの文字を含めることができます
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"
// コンパイルエラー: languageName は変更できません


// 2025/03/05[水]
// 定数と変数の出力(Printing Constants and Variables)
print(friendlyWelcome)
// Bonjour!


// 変数をプレースホルダとして使用
print("The current value of friendlyWelcome is \(friendlyWelcome)")


// セミコロン(Semicolons)
// Swift ではコードの 1 つ 1 つの宣言の最後に、セミコロン(;)を付ける必要がありません
// 一方で、1 行に複数のステートメントを書きたい場合は必要になります。
let cat = "🐱"; print(cat)


// 整数(Integers)
// 整数は小数点のない整数値を全部含みます(42、-23 など)。
// 整数とは符号付き(正の値、または 0、または負の値) または符号なし(正の値、または 0) です


// Int
// 整数値のサイズを特定する必要はありません。
// Swift はプラットフォームに応じて決まるサイズと同じサイズをもつ Int という型を提供しています。
// 32 ビットのプラットフォームの場合、Int は Int32 と等しい
// 64 ビットのプラットフォームの場合、Int は Int64 と等しい
// 32 ビットのプラットフォームでは、Int は -2,147,483,648 から
// 2,147,483,647 まで保持することができます。
// これは整数値が使われる多くの場合において、十分に大きい範囲です。


// 浮動小数点数(Floating-Point Numbers)
// 浮動小数点数は、は、小数部分を持つ数値です(3.14159, 0.1, -273.15 など)
// Double は 64 ビットの浮動小数点数を表します
// Float は 32 ビットの浮動小数点数を表します


// 型安全と型推論(Type Safety and Type Inference)
// Swiftは型安全な言語です。型安全な言語は、扱っている値の型を明確にします。
// String が必要な場合に、間違って Int を渡すようなことはありません。


// 2025/03/06[木]
// 数値リテラル(Numeric Literals)
// 17 という 10 進数を下記のように保持します
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 は２進数表記
let octalInteger = 0o21           // 17 は8進数表記
let hexadecimalInteger = 0x11     // 17 は16進数表記

// 下記の浮動小数点数は、全て 12.1875 という 10 進数を表しています。
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// 数値型の変換(Numeric Type Conversion)
// 整数の変換(Integer Conversion)
// 整数と浮動小数点数の変換(Integer and Floating-Point Conversion)
// 整数値と浮動小数点数の変換は明示的に行わなければなりません
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi は 3.14159 で Double 型と推論されます
// 定数 3 の値が Double 型の新しい値を作って使われています。
// そのため、両方の型が同じになり、足し算が可能です。変換をしない場合、足し算はできません。

// タイプエイリアス(Type Aliases)
// タイプエイリアス(Type Aliases)は既存の型に別の名前を定義します。typealias キーワードを使います。
// （よくわからん・・・）


// 2025/03/07[金]
// ブール値(Booleans)
// Swiftは、Bool と呼ばれる基本的なブール値を持っています。
// ブール値は、真(true)か偽(false)のみを値として取ることから、
// 論理値(logical)として参照されます。
// Swift では true と false の 2 つのブールの定数を提供しています。
let orangesAreOrange = true
let turnipsAreDelicious = false

// ブール値は、条件文を扱う際にとても有効です。例えば、if 文など
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Eww, turnips are horrible.

// Swiftは、型安全なので、Bool 以外の値を Bool として使うことはできません。
// 次の例はコンパイルエラーになります
/*
let i = 1
if i {
    // この例はコンパイルされず、エラーになります
}
*/
 
/*
// 一方で、次の例は問題ありません
let i = 1
if i == 1 {
    // コンパイルできます
}
// i == 1 の比較結果は Bool なので、型チェックを通過できます
*/


// 2025/03/07[金] 続き
// タプル(Tuples)
// タプル(Tuples)は、複数の値を 1 つのまとまりにグループ化します。
// タプル内の値にはどんな型も入れることができ、全ての型を同じにする必要はありません
let http404Error = (404, "Not Found")
// http404Error は (Int, String)型で (404, "Not Found")と等しい

// タプルは、任意の順序で、異なる任意の型を組み合わせることができます。
// 例えば、(Int, Int, Int) や (String, Bool) 型のタプルも作ることができますし、必要に応じて順番の入れ替えも可能です。
// タプルの個々の内容をそれぞれ定数や変数に分けて扱うこともでき、他の値と同じようにアクセスすることができます:
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// The status code is 404
print("The status message is \(statusMessage)")
// The status message is Not Found

// もしタプルの一部だけが必要な場合、タプルを展開するときに、アンダースコア(_)を使用して無視することができます。
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// The status code is 404

// 各値へのアクセス方法としては、0 から始まるインデックスを使用することもできます
print("The status code is \(http404Error.0)")
// The status code is 404
print("The status message is \(http404Error.1)")
// The status message is Not Found

// タプルの定義時に、名前を付けることもできます
let http200Status = (statusCode: 200, description: "OK")

// 名前を付けた場合、その名前を使用して各値へアクセスすることができます
print("The status code is \(http200Status.statusCode)")
// The status code is 200
print("The status message is \(http200Status.description)")
// The status message is OK


// オプショナル(Optionals)
// オプショナルは、値が存在しないかもしれないときに使用します。
// オプショナルは 2 つの可能性を表します:
// 指定された型の値が存在してアンラップすることで値にアクセスすることができる、
// もしくは、値が全く存在しない

// 下記の例は String を Int へ変換するイニシャライザの例です

// let possibleNumber = "123"

// let convertedNumber = Int(possibleNumber)

// convertedNumber の型は 「Optional<Int>」 です。

// オプショナル型を記述するには、オプショナルが含む型の名前の後に疑問符( ? ) を書きます。
// 例えば、オプショナルな Int の型は Int? です。
// オプショナルな Int は常にある Int の値を含むか、 nil かのどちらかです。

// デフォルトで値を与えずにオプショナルな変数を定義した場合、その変数には自動で nil が設定されます
var surveyAnswer: String?
// surveyAnswer には自動で nil が設定されます

// if文を使用してオプショナル値を nil と比較することで、
// 値を含んでいるかどうかのチェックができます。
// この比較は、等しい(==)または等しくない(!=)演算子を使用して行います。
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// convertedNumber contains some integer value.


// オプショナルバインディング(Optional Binding)
// オプショナル値に、オプショナルバインディングを使用して、値を含んでいるかどうかを判定できます。

// 上記の例で出てきたの例で出てきた possibleNumber は、強制アンラップの代わりに、
// オプショナルバインディングを使用して書き換えることができます

/*
if let actualNumber = Int(possibleNumber) {
    print("The string \(possibleNumber) has an integer value of \(actualNumber)")
} else {
    print("The string \(possibleNumber) couldn't be converted to an integer")
}
 */
 
// The string 123 has an integer value of 123

// １つのif 文の中に、複数のオプショナルバインディングとブール値をカンマ(,)区切りで含めることができます
// そのうちのいずれかが nil または false の場合、if 文全体が false と判断されます。次の if 文はこれに該当します
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// 4 < 42 < 100

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// 4 < 42 < 100


// 2025/03/08[土]
// フォールバック値の提供(Providing a Fallback Value)
// 欠如している値を処理する別の方法は、
// nil 結合演算子( ?? ) を使用してデフォルトの値を提供することです。
// ?? の左側のオプショナル値が nil でなければ、その値はアンラップされて使用されます。
// それ以外の場合、 ?? の右側の値が使用されます。
let name: String? = nil
let greeting = "Hello, " + (name ?? "friend") + "!"
print(greeting)
// Hello, friend!

// 強制アンラップ(Force Unwrapping)
// nil がプログラマのエラーや破損した状態などの回復不可能な失敗を表す場合、
// オプショナル値の名前の末尾に感嘆符( ! )を追加することで、その基本の値にアクセスすることができます。

// 強制アンラップ（Forced Unwrapping） とは、オプショナル（Optional<T>）に格納された値を ! を使って 強制的に取り出す 方法です。
// ただし、値が nil の場合は クラッシュ（runtime error） する危険があります。

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// アプローチ①
// ! を使って 強制的にアンラップ し、Int 型の number を取得する
// convertedNumber が nil の場合、プログラムは クラッシュ（fatal error） する
let number = convertedNumber!

// アプローチ②
// guard let を使うことで、convertedNumber が nil の場合は即座にエラーメッセージを出して終了 するようにしている
guard let number = convertedNumber else {
    fatalError("The number was invalid")
}


// 暗黙アンラップオプショナル(Implicitly Unwrapped Optionals)
// オプショナルに一度値が設定された後は必ず値が存在するということが明らかなこともあります。
// このような場合、常に値があることはわかっているので、アクセスする度にオプショナル値のチェックとアンラップすることを省略できれば便利です。

// ? の代わりに ! を型の後に付けることで、暗黙アンラップオプショナルを書くことができます(String? の代わりに String! と書くなど)
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // ! が必要

// possibleString は String?（オプショナル型）
// nil になる可能性がある。
// そのまま String 型の変数 forcedString に代入できない。
// possibleString! を使って強制アンラップ
// possibleString に値が入っていれば、String 型として forcedString に代入できる。
// でも、もし possibleString が nil だった場合、クラッシュする！

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // ! は自動的に不要になる

// String!（暗黙的アンラップオプショナル）とは？
// String?（普通のオプショナル）と似ているが、値を取り出すときに ! を明示的に書かなくてもOK！
// assumedString は "ほぼ確実に nil じゃない" という前提で扱う。
// implicitString に代入するとき、自動でアンラップされて String 型になる！
// 何が違う？
// String? は ! を使わないと String に変換できない。
// String! は ! を使わなくても String 型として扱える。

// 暗黙アンラップオプショナル値が nil かどうかのチェックは通常のオプショナル値と同じ方法でできます。
if assumedString != nil {
    print(assumedString!)
}
// An implicitly unwrapped optional string.

// 暗黙アンラップオプショナルはオプショナルバインディングもできます。
// 1 つの文の中で、チェックとアンラップができます。
if let definiteString = assumedString {
    print(definiteString)
}
// An implicitly unwrapped optional string.


// 2025/03/10[月]
// エラーハンドリング(Error Handling)
// 実行中ののエラーに対応するためには、エラーハンドリングを行います

// 関数がエラーに遭遇すると、エラーをスローします。
// そして、この関数の呼び出し元でエラーをキャッチして、適切に応答することができます。
func canThrowAnError() throws {
    // この関数はエラーをスローするかもしれません
}

// エラーは、定義に throws キーワードを含めることで、エラーをスローすることを示せます。
// エラーをスローする関数を呼ぶ場合、式の前に try キーワードを付けます。

// Swiftはcatch でエラーがキャッチされるまで、現在のスコープを抜けてエラーを自動で伝播します。
do {
    try canThrowAnError()
    // エラーはスローされませんでした
} catch {
    // エラーがスローされました
}
// doは新しいスコープを生成して、エラーを 1 つ以上の catch 句でキャッチすることができます。

// これは複数のエラーに応答するためにエラーハンドリングを使った例です
// 実際の処理は省略されていますが、サンドイッチを作る際に
// 何らかのエラー（例えば、材料が足りない、皿がないなど）が発生する可能性があります
func makeASandwich() throws {
    // ...
}
// try を使うことで、「この関数はエラーをスローする可能性がある」ということを明示しています。
// もし makeASandwich() が エラーをスローしなかった場合：
// eatASandwich() が実行される（サンドイッチが無事に作られて食べられる）。
// もし makeASandwich() が エラーをスローした場合：
// eatASandwich() はスキップされ、対応する catch ブロックに処理が移る。
do {
    // throws を持つ関数は、エラーをスローする可能性があるため、try をつけて呼び出す必要がある。
    try makeASandwich()
    eatASandwich()
  // もしエラーが "皿がない" (outOfCleanDishes) なら、washDishes() を実行し、皿を洗う。
} catch SandwichError.outOfCleanDishes {
    washDishes()
  // もしエラーが "材料が足りない" (missingIngredients) なら、
  // 不足している材料（ingredients）を取得し、
  // それを buyGroceries(ingredients) に渡して買い物をする。
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}

// スローされない場合、eatASandwich() 関数が呼ばれます。エラーがスローされ、
// それが SandwichError.outOfCleanDishescase と合致する場合、washDishes() 関数が呼ばれます。
// SandwichError.missingIngredients ケースに合致する場合、
// buyGroceries(_:) 関数が catch でキャッチされた [String] 値をパラメータに呼び出されます。


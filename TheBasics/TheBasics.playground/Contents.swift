import UIKit

var greeting = "Hello, playground"

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
let i = 1
if i {
    // この例はコンパイルされず、エラーになります
}

// 一方で、次の例は問題ありません
let i = 1
if i == 1 {
    // コンパイルできます
}

// i == 1 の比較結果は Bool なので、型チェックを通過できます






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


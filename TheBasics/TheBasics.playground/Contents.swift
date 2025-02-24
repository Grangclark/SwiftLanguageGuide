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

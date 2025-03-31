import UIKit

// 2025/03/14[金]
// 用語(Terminology)
// 演算子は単項(unary)、二項(binary)、三項(ternary)があります

// ・単項演算子は、-a のような単一のターゲットで動作します。前置(prefix)演算子は !b のようにターゲットの直前に置かれ、後置(postfix)演算子は c! のようにターゲットの直後に置かれます
// ・二項演算子は、2 + 3 のように 2 つの値をターゲットで動作します。これは 2 つのターゲットの間に置かれるので中置(infix)演算子です
// ・三項演算子は、3 つの値をターゲットとした演算子です。C 言語と同様に、Swift は 1 つの三項演算子、三項条件演算子しかありません(a ? b : c)

// 演算子が影響を与える値は、オペランドと呼ばれます。1 + 2 という式は、+ が中置演算子で 1 と 2 がオペランドです。

// 代入演算子(Assignment Operator)
// 代入演算子は、例えば a = b とすると、a の値を b の値で初期化、または更新します。
let b = 10
var a = 5
a = b
// a は 10 と等しい

// 代入の右側が複数の値を持つタプルの場合、一度に複数の定数や変数に代入することができます。
let (x, y) = (1, 2)
// x は 1, y は 2 と等しい

// C言語やObjective-C の代入演算子と異なり、Swift の代入演算子は値を返しません。そのため次のようなことはできません。
if x = y {
    // x = y は値を返さないのでエラーになる
}

// 算術演算子(Arithmetic Operators)
// Swift は全ての数値型に対して 4 つの基本的な算術演算子をサポートしています。
// ・加算(+)
// ・減算(-)
// ・乗算(*)
// ・割算(/)
1 + 2      // 3
5 - 3      // 2
2 * 3      // 6
10.0 / 2.5 // 4.0
// C言語やObjective-C と異なり、Swift はデフォルトでオーバーフローはできません。
// a &+ b のようにオーバーフロー演算子(&-)を使用してオーバーフローさせることができます。

// 剰余演算子(Remainder Operator)
// a % b のような剰余演算子は、a の中に b がどのくらい含まれているのかを計算し、その(剰余と呼ばれる)余った値を返します。
9 % 4 // 1

// 単項減算演算子(Unary Minus Operator)
// 数値の記号は、前置の - を使用して切り替えることができます。これは単項減算演算子と呼ばれます。
let three = 3
let minusThree = -three
let plusThree = -minusThree
// 単項演算子(-)は、操作する値の直前にスペースなしで付けます。

// 単項加算演算子(Unary Plus Operator)
// 単項加算演算子(+)は、何も変えずに操作した値を返します。
let minuSix = -6
let alsoMinusSix = +minusSix


// 2025/03/18[火]
// 複合代入演算子(Compound Assignment Operators)
// C言語と同様に、Swift の複合代入演算子は、代入演算子(=)と他の演算子を組み合わせることができます。
// 1 つの例として、加算代入演算子(+=)があります
var a = 1
a += 2
// a は 3 と等しい

// 比較演算子(Comparison Operators)
// Swift は、次の比較演算子をサポートしています。
// ・等価演算子(a == b)
// ・不等価演算子(a != b)
// ・より大きい(a > b)
// ・より小さい(a < b)
// ・等しいかそれ以上(a >= b)
// ・等しいかそれ以下(a <= b)

// 比較演算子は、if などの条件文でよく使われます。
let name = "world"
if name == "world" {
    print("こんにちは、world")
} else {
    print("ごめんなさい \(name)、あなただと気づきませんでした")
}


// 2025/03/19[水]
// 三項条件演算子(Ternary Conditional Operator)
// 三項条件演算子は、question ? answer1 : answer2 という形式の、3 つの部分を持った特別な演算子です。
// これは、question が true か false かを基に 2 つの式のどちらかを評価するショートカットです。
// question が true ならば、answer1 が評価され、false だと answer2 が評価されます。
// 三項条件演算子は下記のコードのショートカットです。
if question {
    answer1
} else {
    answer2
}


// 2025/03/20[木]
// 三項条件演算子(Ternary Conditional Operator) 続き
// 下記の例は、table の行の高さを計算しています。
// ヘッダーがある場合、行の高さは内容の高さよりも 50 ポイント高く、ない場合は、20 ポイント高くします。
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight は 90

// 上記のコードは下記のショートカットです。
let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}
// rowHeight は 90
// 三項条件演算子は 2 つの式のどちらが使われるのかを決める効率的なショートカットです。
// しかし、三項条件演算子にも注意が必要です。
// あまり使いすぎると可読性を損なう場合もあります。
// 複数の三項条件演算子を 1 つのステートメントに含めることは避けましょう。


// 2025/03/24[月]
// nil 合体演算子(Nil-Coalescing Operator)
// (a ?? b) の nil 合体演算子は、オプショナルの a にもし値が存在すれば a をアンラップし、
// a が nil の場合は b をデフォルトとして返します。
// 式 a は常にオプショナル型です。式 b は a が内包する値の型と一致していなけばなりません。

// nil 合体演算子は下記のコードのショートカットです。
a != nil ? a! : b
// 上記のコードは、三項条件演算子を使用して、
// a が nil ではない場合は、
// a が内包する値へアクセスするために強制アンラップ(a!)し、それ以外は b を返します。

// 下記の例では、デフォルトのカラー名かユーザ定義のオプショナルなカラー名を選択するために、nil 合体演算子を使用しています。
let defaultColorName = "red"
var userDefinedColorName: String? // defaults は nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName が nil なので、colorNameToUse にデフォルトの"red"が設定されます

// userDefinedColorName は、オプショナルの String として定義され、デフォルトは nil です。
// userDefinedColorName はオプショナル型なので、
// その値を検討するために、nil 合体演算子を使用することができます。
// 上記の例では、colorNameToUse という
// String 型の変数の初期値を決めるために nil 合体演算子を使用しています。
// userDefinedColorName は nil なので、
// 式 userDefinedColorName ?? defaultColorName は、defaultColorName、つまり "red" を返します。


// 2025/03/25[火]
// 範囲演算子(Range Operators)
// Swiftは、値の範囲を表すショートカットとして複数の範囲演算子を提供しています。

// 閉範囲演算子(Closed Range Operator)
// a...b は、a から b までの連続した、a も b も含んだ範囲を定義します。a を b よりも大きい値にしてはいけません。
for index in 1...5 {
    print("\(index) x 5 は \(index * 5)")
}
// 1 x 5 は 5
// 2 x 5 は 10
// 3 x 5 は 15
// 4 x 5 は 20
// 5 x 5 は 25


// 2025/03/27[木]
// 半開範囲演算子(Half-Open Range Operator)
// a..<b のような半開範囲演算子は、a から b まで連続しているものの b は含まない範囲を定義します。
// a を b よりも大きい値にしてはいけません。
// a と b が等しい場合、範囲は空になります。

// 半開範囲演算子は、配列などの 0 ベースのリストで特に有用です。
// 例えば、リストの要素数に順番にアクセスする場合などあります
// let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("人物 \(i + 1) の名前は \(names[i])")
}
// 人物１の名前は Anna
// 人物２の名前は Alex
// 人物３の名前は Brian
// 人物４の名前は Jack


// 2025/03/29[土]
// 片側範囲演算子(One-Sided Ranges)
// 閉範囲演算子は、1 つの方向へ可能な限り続く範囲に対して違った形式で書くことができます。
// 例えば、ある配列のインデックス 2 から配列の最後までの要素を含んだ範囲などがこれに当たります。
// これらの場合では、範囲演算子の片方の値を省略できます。
// この種類の範囲は、片方しか値を持たないので、片側範囲と呼ばれています。
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

// 最後の値のみを書くことで、片側範囲の形式で半開範囲演算子を書くことができます。
// 両側の値を書いたときと同様に、記載した最後の値は範囲に含まれません。
for name in names[..<2] {
    print(name)
}
// Anna
// Alex

// 片側範囲は、サブスクリプト以外の他のコンテキストでも使用することができます。
let range = ...5
range.contains(7)  // false
range.contains(4)  // true
range.contains(-1) // true


// 2025/03/30[日]
// 論理否定演算子(Logical NOT Operator)
// !a のような論理否定演算子は、true を false に、false を true にブール値を反転させます。
// 論理否定演算子は、操作する値の直前にスペースなしで付けます。
let alloweEntry = false
if !allowedEntry {
    print("アクセス拒否")
}


// 2025/03/31[月]
// 論理積演算子(Logical AND Operator)
// a && b のような論理積演算子は、両方の値が true の場合に、全体の式も true になる論理式を作ります。
// もしどちらかが false ならば、全体の式は false になります。
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("こんにちは！")
} else {
    print("アクセス拒否")
}
// アクセス拒否


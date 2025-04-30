import UIKit

var greeting = "Hello, playground"


// 2025/04/04[金]
// 文字列リテラル(String Literals)
// 文字列リテラルはダブルクォーテーション(")で囲まれた一連の文字です。
let someString = "Some string literal value"


// 2025/04/05[土]
// 複数行文字列リテラル(Multiline String Literals)
// 複数行に渡った文字列が必要な場合、複数行文字列リテラルを使いましょう。
// 一連の文字を 3 つのダブルクォーテーション(")で囲みます。
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""


// 2025/04/06[日]
// 複数行文字列リテラルは、全てを開始と終了のクォーテーションマークの間に含めます。
// 文字列は、開始クォーテーションの次の行から始め、終了クォーテーションの 1 つ前の行で終了します。
// つまり、文字列を改行で開始、終了することができません。
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""


// 2025/04/07[月]
// もし改行が含まれている場合、文字列にも反映されます。
// 改行を文字列の中に入れずに改行したい場合、
// 行の最後にバックスラッシュ(\)を書きましょう:
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""


// 2025/04/08[火]
// 複数行文字列リテラルを改行で開始(終了)したい場合は、最初(最後)に空白の行を入れましょう。
let lineBreaks = """

This string stars with a line break.
It also ends with a line break.

"""


// 2025/04/09[水]
// 文字列内の特殊文字(Special Characters in String Literals)
// 文字列リテラルには次の特殊文字が含まれています。

// ・エスケープされた特殊文字 \0 (null文字)、\\ (バックスラッシュ)、\t (水平タブ)、\n (ラインフィード)、\r (キャリッジリターン)、\" (ダブルクォーテーション)、\' (シングルクォーテーション)
// ・\u{n} で書ける任意の Unicode スカラ、ただし n には 1〜8 桁の 16 進数が入ります(Unicode については下記のUnicodeに書かれています)
// 下記のコードは、4 つの特殊文字の例を示しています。wiseWords 定数は 2 つのエスケープされたダブルクォーテーションを含んでいます。
// dollarSign と blackHeart と sparklingHeart 定数は、Unicode スカラの例です:
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"


// 2025/04/11[金]
// リテラルは 1 つではなく 3 つのダブルクォーテーションを使用しているので、
// 複数行文字列リテラルの中にエスケープなしでダブルクォーテーションを含めることができます。
// 文字列にテキストとして """ を含めたい場合、少なくともその中の 1 つをエスケープしてください。
let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

// 拡張区切り文字(Extended String Delimiters)
// 拡張区切り文字は複数文字列リテラルにも使用できます。
// テキストとして """ を含めたい場合、文字列を終わらせる記号を変えましょう。例えば:
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#


// 2025/04/13[日]
// 空の文字列の作成(Initializing an Empty String)
// 長い文字列を構築するときに、初期値として空の文字列を作るとき、
// 文字列リテラルを変数に設定するか、
// String のイニシャライザを使用して新しいインスタンスを初期化します。
var emptyString = ""              // 空の文字列
var anotherEmptyString = String() // イニシャライザ
// ２つの変数はどちらも空の文字列で等しいです


// 2025/04/14[月]
// isEmpty というブール値のプロパティをチェックすることで String が空文字かどうかを判定できます。
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Nothing to see here


// 2025/04/17[木]
// 文字列の可変性(String Mutability)
// String が変更可能かどうかは、変数(変更可能)か定数(変更不可能)のどちらに設定するかによって示すことができます:
var variableString = "Horse"
variableString += " and carriage"
// variableString は "Horse and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"
// コンパイルエラー - 定数は変更できません



// 2025/04/18[金]
// 文字配列の取扱(Working with Characters)
// for-in ループを使用して文字列を繰り返し処理することで、
// String の個々の Character にアクセスすることができます。
for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶


// 2025/04/19[土]
// String は、Character の配列をイニシャライザの引数として渡して構築することができます:
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Cat!🐱


// 2025/04/20[日]
// 文字と文字列の連結(Concatenating Strings and Characters)
// String 同士は、加算演算子(+)使用して新しい String を生成できます:
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome は "hello there" と等しい


// 2025/04/21[月]
// 加算代入演算子(+=)を使用して、既存の String 変数に String を追加することもできます:
var instruction = "look over"
instruction += string2
// instruction は "look over there" と等しい


// 2025/04/22[火]
// String の append() メソッドを使用して Character を追加することもできます。
let exclamationMark: Character = "!"
// welcome.append(exclamationMark)
// welcome は "hello there!" と等しい


// 2025/04/23[水]
// 文字列補間(String Interpolation)
// 文字列補間は、複数の定数、変数、リテラル、式を文字列リテラルの中に含めることで
// 新しい String を構築する方法です。
// 文字列補間は 1 行でも複数行でも使用することができます。
// 文字列に入れるそれぞれの値は、両括弧で囲み、その前にバックスラッシュ(\)をつけます。
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message は "3 times 2.5 is 7.5"


// 2025/04/24[木]
// 文字列補間ではなく通常扱われる文字として文字列を生成したい場合、拡張区切り文字を使用することができます。例えば:
print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Write an interpolated string in Swift using \(multiplier)

// 拡張区切り文字を使った文字列の中で文字列補間を使用する場合、
// バックスラッシュの後の番号記号の数を文字列の開始(終了)の番号記号の数に合わせます。例えば:
print(#"6 times 7 is \#(6 * 7)."#)
// 6 times 7 is 42.


// 2025/04/25[金]
// Unicode（飛ばす）
//
// 文字数を数える(Counting Characters)
// 文字列の中の Character の数を得るには、文字列の count プロパティを使いましょう。
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// unusualMenagerie has 40 characters


// 2025/04/26[土]
// 文字列のインデックス(String Indices)　は飛ばす
//
// 挿入と削除(Inserting and Removing)
// 特定の文字列のインデックスに 1 つの文字を挿入するには、insert(_:at:) を使い、
// 他の文字列を挿入したい場合は、insert(contentsOf:at:) を使います。
// var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome は "hello!" と等しい

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome は "hello there!" と等しい


// 2025/04/27[日]
// 文字列の特定のインデックスの 1 つの文字を削除するには remove(at:) を使い、
// 部分文字列を削除したい場合は removeSubrange(_:) を使います。
welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome は "hello there" と等しい

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome は "hello" と等しい


// 2025/04/29[火]
// 部分文字列(Substrings)
// 処理の結果をより長い期間保持するときは、部分文字列を String のインスタンスに変換します。例えば:
// let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning は "Hello"

// より長期で使用するためにStringへ変換
let newString = String(beginning)


// 2025/04/30[水]
// 文字列の比較(Comparing Strings)
// Swift では、3 つの方法で文字列同士を比較する方法を提供しています:
// String または Character の完全一致、前方一致、後方一致です。
//
// 文字と文字列の等価性(String and Character Equality)
// String または Character の完全一致は、は等価演算子(==)と不等価演算子(!=)を使用してチェックします。
// Comparison Operators(比較演算子)
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
// These two stringas are considered equal


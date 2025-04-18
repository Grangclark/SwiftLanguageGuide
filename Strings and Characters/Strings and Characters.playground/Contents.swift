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


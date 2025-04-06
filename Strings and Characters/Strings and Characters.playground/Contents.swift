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

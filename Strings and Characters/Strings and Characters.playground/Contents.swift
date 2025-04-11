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

import UIKit


// 2025/05/02[金]
// コレクション型(Collection Types)
// Swift は、配列、セット、辞書と呼ばれる 3 つの基本的なコレクション型を提供しています。
// 配列は順序が決まったコレクションです。セットは値の重複と順序のないコレクションです。
// 辞書はキーとバリューに関連性を持たせた順序のないコレクションです。
//
// コレクションの可変性(Mutability of Collections)
// もし配列、セット、辞書を変数に代入した場合、作成されたコレクションは可変です。
// つまり、追加、削除、要素の変更など、後々そのコレクションを取り替え(または変更)できます。
// もし配列、セット、辞書を定数に代入した場合、コレクションは不変で、そのサイズや内容を変更できません。
//
// 配列(Arrays)
// 配列は同じ型の値を順序立ったリストの中に保持します。配列の中に同じ値を複数回入れることができます。
//
// 空の配列の作成(Creating an Empty Array)
// Swift で空の配列を作成するには 2 つの方法があります。
// 関数引数や既に型が指定されている変数または定数など、
// コンテキストが既に型情報を提供している場合、
// 空の配列リテラル（[]、空の角括弧のペア）を使用できます。
var someInts: [Int] = []
// print("someInts は \(someInts.count) 個の要素を持つ [Int] 型です。")
// someInts は 0 個の要素を持つ [Int] 型です。



// 2025/05/03[土]
// あるいは、要素の型を角括弧で指定し、その後に括弧を付けることで、
// 明示的な初期化構文を使用して特定の型の空の配列を作成することもできます。
// たとえば、次のように [Int]() と記述します。
// var someInts: [Int]()
print("someInts は \(someInts.count) 個の要素を持つ [Int] 型です。")
// someInts は 0 個の要素を持つ [Int] 型です。
// どちらも結果は同じです。ただし、空の配列リテラルのほうが短く、たいていは読みやすくなります。


// 2025/05/04[日]
// また、どちらの場合も、空の配列リテラル（[]）を使用して既存の変数に空の配列を再割り当てすることができます。
someInts.append(3)
// someInts Int 型の 3 を含んでいます
someInts = []
// someInts は空の配列だけど [Int] 型


// 2025/05/05[月]
// デフォルト値を使った配列の作成(Creating an Array with a Default Value)
// Array は同じデフォルト値を設定した特定にサイズの配列を作成するイニシャライザも提供しています。
// このイニシャライザに適切な型のデフォルト値(repeating)と、その値の繰り返し回数(count)を渡します。
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles は [Doubles] 型で、 [0.0, 0.0, 0.0] と等しい


// 2025/05/06[火]
// 2つの配列の結合(Creating an Array by Adding Two Arrays Together)
// 加算演算子(+)を使用して、既存の型互換のある 2 つの配列を合成して、新しい配列を作成することもできます。
// この新しい配列の型は連結させた配列の型から推論されます:
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles は [Double] 型で [2.5, 2.5, 2.5] と等しい

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles は [Double] と推論され、 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5] と等しい



// 2025/05/07[水]
// 配列リテラルを使った配列の作成(Creating an Array with an Array Literal)
// 配列リテラルからも配列を初期化できます。
// 下記の例は、String を保持する shoppingList という配列を作成しています。
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList は 2 つの 初期値で初期化されている


// 2025/05/08[木]
// 配列へのアクセスと変更(Accessing and Modifying an Array)
// メソッドやプロパティ、サブスクリプト構文を通して配列の要素へのアクセス、変更ができます。
// 配列のアイテムの数を調べるために、読み取り専用の count プロパティをチェックします。
print("ショッピングリストには \(shoppingList.count) 個のアイテムがあります。")


// 2025/05/09[金]
// Bool 型の isEmpty プロパティは、count プロパティが 0 かどうかをチェックする簡略記法です。
if shoppingList.isEmpty {
    print("ショッピングリストは空です。")
} else {
    print("ショッピングリストは空ではありません。")
}
// ショッピングリストは空ではありません。



// 2025/05/10[土]
// append(_:) メソッドを使用して、配列の末尾に新しいアイテムを追加することができます。
shoppingList.append("Flour")
// shoppingList は 3 つのアイテムを含んでいて、誰かがパンケーキを作っています



// 2025/05/11[日]
// 加算代入演算子(+=)を使用して 1 つ以上の互換性のある型のアイテムを追加することもできます。
shoppingList += ["Baking Powder"]
// shoppingList 4 つのアイテムを含んでいます
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList は 7 つのアイテムを含んでいます


// 2025/05/12[月]
// サブスクリプト構文を使用すると、配列から値を取得します。
// 配列名のすぐ後の角括弧([])の中に、取得したい値のインデックスを渡します。
var firstItem = shoppingList[0]
// firstItem は "Eggs" と等しい



// 2025/05/13[火]
// あるインデックスの既存の値を変更したい場合もサブスクリプト構文を使います。
shoppingList[0] = "Six eggs"
// リストの最初のアイテムは "Eggs" ではなく、 "Six eggs"

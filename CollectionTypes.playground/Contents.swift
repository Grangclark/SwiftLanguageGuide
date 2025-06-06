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



// 2025/05/14[水]
// ある一定範囲の値を一度に変更する場合にも、サブスクリプト構文を使用することができます。
// これは置き換えたい値のセットの数と指定した置き換える範囲の長さが異なっていても可能です。
// 次の例は "Chocolate Spread"、"Cheese"、"Butter" を "Bananas"、"Apples" に置き換えています。
shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList は 6 つのアイテムを含んでいます



// 2025/05/15[木]
// 配列の特定のインデックスにアイテムを挿入したい場合、insert(_:at:) メソッドを使います。
shoppingList.insert("Maple Syrup", at: 0)
// shoppingList は 7 つのアイテムを含んでいます
// "Maple Syrup" は最初のアイテムです


// 2025/05/16[金]
// 同様に remove(at:) を使用して配列からアイテムを削除できます。
let mapleSyrup = shoppingList.remove(at: 0)
// インデックス 0 にあったアイテムは削除されました


// 2025/05/17[土]
// アイテムが削除された時、配列内の隙間は埋められ、インデックス 0 の値は再び "Six eggs" になります。
firstItem = shoppingList[0]
// firstItem は "Six eggs" と等しい


// 2025/05/18[日]
// 配列の最後の値を削除したい場合、count プロパティを探すコストを避けるためには、
// remove(at:) よりも removeLast() を使います。
// remove(at:) と同様に removeLast() も削除したアイテムを返します:
let apples = shoppingList.removeLast()
// 最後のアイテムは削除されました


// 2025/05/19[月]
// 配列の繰り返し処理(Iterating Over an Array)
// for-in ループを使用して配列の値全部に繰り返し処理をすることができます。
for item in shoppingList {
    print(item)
}


// 2025/05/20[火]
// 各アイテムのインデックスが必要な場合は、enumerated() を代わりに使いましょう。
// enumerated() は数値のインデックスとアイテムを組み合わせたタプルを返します。
// 数値の開始は 0 で、1 ずつ増加していきます。
// つまり全体を繰り返し処理すると、数値はアイテムのインデックスと一致します。
for (index, value) in shoppingList.enumerated() {
    print("アイテム \(index + 1): \(value)")
}
// アイテム 1: Six eggs
// アイテム 2: Milk
// アイテム 3: Flour
// アイテム 4: Baking Powder
// アイテム 5: Bananas


// 2025/05/21[水]
// セット型のハッシュ値(Hash Values for Set Types)
// 空のセットの作成と初期化(Creating and Initializing an Empty Set)
// イニシャライザの作成と初期化(Creating and Initializing an Empty Set)
var letters = Set<Character>()
print("letters は \(letters.count) 個の要素を持つ Set<Character> 型です。")
// letters は 0 個の要素を持つ Set<Character> 型です。


// 2025/05/22[木]
// 他の方法として、関数の引数や型が明示されている変数や定数など型情報が既にわかっている場合は、
// 空の配列リテラルを使用して空のセットを作成することができます。
letters.insert("a")
// letters は Character 型の値を 1 つ含んでいます
letters = []
// letters は 空のセットですが、 型は Set<Character> のままです


// 2025/05/23[金]
// 配列リテラルを使ったセットの作成(Creating a Set with an Array Literal)
// 簡略記法として、1 つ以上の値を配列リテラルを使用してセットを初期化することもできます。
// 下記の例は、favoriteGenres という String の値を保持するセットを作成しています。
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// favoriteGenres は 3 つ の初期値で初期化されている



// 2025/05/24[土]
// セットへのアクセスと変更(Accessing and Modifying a Set)
// メソッドやプロパティを通してセットにアクセスしたり、変更できます。
// セットのアイテムの数を調べるために、読み取り専用の count プロパティをチェックします。
print("私には \(favoriteGenres.count) 個の好きな音楽ジャンルがあります。")
// 私には 3 個の好きな音楽ジャンルがあります。


// 2025/05/25[日]
// Bool 型の isEmpty プロパティは、count プロパティが 0 かどうかをチェックする簡略記法です。
if favoriteGenres.isEmpty {
    print("音楽に関しては、こだわりはありません。")
} else {
    print("私は音楽にこだわりがあります。")
}
// 私は音楽にこだわりがあります。



// 2025/05/26[月]
// insert(_:) メソッドを使用して、セットに新しいアイテムを追加することができます。
favoriteGenres.insert("Jazz")
// favoriteGenres 4 つのアイテムを含んでいます


// 2025/05/27[火]
// remove(_:) を使用してセットからアイテムを削除できます。
// セットにアイテムが存在した場合は削除し、削除したアイテムを返します。
// もし存在しなけば nil を返します。
// 他の方法として、全アイテムを削除するには removeAll() を使います。
if let removeGenre = favoriteGenres.remove("Rock") {
    print("\(removeGenre)? もういいです。")
} else {
    print("そのジャンルはあんまり気にしたことがないです。")
}
// Rock? もういいです。


// 2025/05/28[水]
// 特定のアイテムが含まれているかどうかを調べるには、contains(_:) メソッドを使用することができます。
if favoriteGenres.contains("Funk") {
    print("James BrownのGet On The Good Footは最高です！")
} else {
    print("ちょっとファンキー（funky）すぎます。")
}
// ちょっとファンキー（funky）すぎます。


// 2025/05/31[土]
// セットの繰り返し処理(Iterating Over a Set)
// for-in  ループを使用してセットの要素を繰り返し処理することができます。
for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop



// セットの操作(Performing Set Operations)
// ２つのセットの、合成、共通の要素の発見、値が全部等しいのか、いくつか等しいのか、全く違うのかの比較など、
// 基本的なセットの操作を効率的に行うことができます。
/*
let oddDigits: Set = [ Set[1, 3, 5, 7, 9]
let evenDigits: Set[0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
*/


// 2025/06/03[火]
// 空の辞書型の作成(Creating an Empty Dictionary)
// 配列と同様に、ある型の空の Dictionary をイニシャライザの構文を使用して作成できます。
var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers は空の [Int: String] 辞書
// この例では、数字を人が理解できる名前として保持するために、
// [Int: String] 型の空の辞書を作成しています。キーは Int 型でバリューは String 型です。



// 2025/06/04[水]
// 既に型情報が分かっている場合は、空の辞書リテラルを [:] と書くことができます。(角括弧([])の中にコロン(:)):
namesOfIntegers[16] = "sixteen"
// namesOfIntegers は 1 つのキーバリューペアを含んでいます
namesOfIntegers = [:]
// namesOfIntegers は再び [Int: String] の空の辞書


// 2025/06/05[木]
// 辞書リテラルを使った辞書の作成(Creating a Dictionary with a Dictionary Literal)
// 先ほど見た配列リテラルと似たような構文の辞書リテラルを使った初期化もできます。
// 辞書リテラルは、1 つ以上のキーバリューペアから Dictionary のコレクションを作成する簡略記法です。
// 下記の例では、国際空港の名前を保持する辞書を作成します。
// この辞書は、3 文字の国際空港コードをキーに、空港名をバリューにしています。
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]



// 2025/06/06[金]
// 辞書へのアクセスと変更(Accessing and Modifying a Dictionary)
// メソッドやプロパティ、サブスクリプト構文を通して、辞書へのアクセス、変更ができます。
// 配列と同様に、Dictionary のアイテムの数を調べるために、読み取り専用の count プロパティをチェックします。
print("airports 辞書には \(airports.count) 個のアイテムがあります。")
// airports 辞書には 2 個のアイテムがあります。



import UIKit

// var greeting = "Hello, playground"

// 2025/08/14[木]
// 列挙型(Enumerations)
// 可能な値のリストを定義する独自の型をモデル化する。
// 列挙型は、関連する値のグループに共通の型を定義し、コード内で型安全にそれらの値を操作できるようにします。

// 列挙型構文(Enumeration Syntax)
// enum キーワードを使用して列挙型を導入し、それらの定義全体を中括弧のペア({})内に配置します。
enum SomeEnumeration {
    // 列挙型の定義をここに記載します
}



// 2025/08/15[金]
// コンパスの 4 つの主要な方向の例を次に示します:
enum CompassPoint {
    case north
    case south
    case east
    case west
}
// 列挙型で定義された値(north、south、east、west など)は、その列挙ケースです。
// case キーワードを使用して、新しい列挙ケースを導入します。



// 2025/08/16[土]
// switch 文を使った列挙値のパターンマッチング(Matching Enumeration Values with a Switch Statement)
// switch 文を使って、個々の列挙値をパターンマッチングできます。
directionToHead = .south
switch directionToHead {
case .north:
    print("多くの惑星には北があります")
case .south:
    print("ペンギンに気をつけて")
case .east:
    print("太陽が登る場所")
case .west:
    print("空が青い場所")
}
// ペンギンに気をつけて

// このコードは次のように読むことができます。
// 「directionToHead の値を検証してください。
// .north に等しい場合は、「多くの惑星には北があります」と出力します。
// .south に等しい場合は、「ペンギンに気をつけて」と出力してください」
// …などなど。



// 2025/08/17[日]
// 全ての列挙ケースの case を並べることが適切でない場合は、明示的に対処されていないケースをカバーする default のケースを提供できます。
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("ほとんど無害")
default:
    print("人間にとっては安全な場所ではありません")
}
// ほとんど無害



// 2025/08/18[月]
// 列挙ケースの繰り返し処理(Iterating over Enumeration Cases)
// 一部の列挙型では、その列挙型の全てのケースのコレクションがあると便利です。
// これを有効にするには、列挙型の名前の後に :CaseIterable を記述します。
// Swift は、全てのケースのコレクションを列挙型の allCases プロパティとして提供しています。次に例を示します:
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// 3 種類の飲み物を用意しています

// 上記の例では、Beverage.allCases を記述して、列挙型 Beverage の全てのケースを含むコレクションにアクセスします。
// allCases は、他のコレクションと同じように使用できます。
// コレクションの要素は列挙型のインスタンスで、今回は Beverage の値です。
// 上記の例では、ケースの数をカウントし、下記の例では、for ループを使用して全てのケースを繰り返し処理しています。



// 2025/08/19[火]
// Raw Values
// 関連値(Associated Values)のバーコードの例は、列挙ケースが、様々な型に関連値を格納して宣言する方法を示しています。
// 関連値の代わりに、列挙型には、全て同じ型のデフォルト値(Raw Valuesと呼ばれる)を事前に定義することもできます。

// 名前付きの列挙ケースと一緒に ASCII 値を格納する例を次に示します。
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}



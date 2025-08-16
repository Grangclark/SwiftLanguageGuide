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



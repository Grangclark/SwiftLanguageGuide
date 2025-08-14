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


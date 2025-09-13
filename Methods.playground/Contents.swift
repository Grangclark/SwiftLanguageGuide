import UIKit

var greeting = "Hello, playground"


// 2025/09/08[月]
// メソッド (Methods)
// インスタンスメソッド(Instance Methods)
// インスタンスは、特定のクラス、構造体、または列挙型のインスタンスに属する関数です。
// それらは、インスタンスプロパティにアクセスしたり変更する方法を提供したり、
// インスタンスに関連する機能を提供することによって、そのインスタンスの機能をサポートします。
// Functions(関数)で説明されているように、インスタンスメソッドの構文は関数とまったく同じです。

// インスタンスメソッドは、それが属する型の開き括弧({)と閉じ括弧(})内に記述します。
// インスタンスメソッドは、その型の他の全てのインスタンスメソッドおよびプロパティに暗黙的にアクセスできます。
// インスタンスメソッドは、それが属する型の特定のインスタンスでのみ呼び出すことができます。
// 既存のインスタンスがなければ、単独で呼び出すことはできません。

// アクションが発生した回数をカウントするために使用できる、シンプルな Counter クラスを定義する例を次に示します:
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

// Counter クラスは 3 つのインスタンスメソッドを定義します。
// increment() は、カウンタを 1 ずつインクリメントします
// increment(by: Int) は、指定された整数分だけカウンタをインクリメントします
// reset() は、カウンタを 0 にリセットします



// 2025/09/09[火]
// Counter クラスは、現在のカウンタ値を追跡するために変数プロパティ count も宣言しています
// プロパティと同じドット構文でインスタンスメソッドを呼び出します。
let counter = Counter()
// counter の初期値は 0
counter.increment()
// counter の値は 1
counter.increment(by: 5)
// counter の値は 6
counter.reset()
// counter の値は 0



// 2025/09/10[水]
// self プロパティ(The self Property)
// 型の全てのインスタンスには、インスタンスそれ自体を表す self と呼ばれる暗黙のプロパティがあります。
// 自身のインスタンスメソッド内で現在のインスタンスを参照するには、self プロパティを使用します。
// 上記の例の increment() メソッドは、次のように記述できます:
func increment() {
    self.count += 1
}




// 2025/09/11[木]
// この規則の例外として、インスタンスメソッドのパラメータ名がそのインスタンスのプロパティと同じ名前の場合に発生します。
// この場合、パラメータ名が優先され、より厳密な方法でプロパティを参照する必要が生じます。
// パラメータ名とプロパティ名を区別するには、self プロパティを使用します。

// ここで、self は、x と呼ばれるメソッドパラメータと x と呼ばれるインスタンスプロパティとの間のあいまいさを解消します:
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("この点は x == 1.0 の直線の右側にあります")
}
// この点は x == 1.0 の直線の右側にあります




// 2025/09/12[金]
// インスタンスメソッド内からの値型の変更(Modifying Value Types from Within Instance Methods)
// 構造体と列挙型は値型です。デフォルトでは、値型のプロパティはそのインスタンスメソッド内から変更できません。
// この挙動を可能にするには、そのメソッドの func キーワードの前に mutating キーワードを配置します:
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("点は現在 (\(somePoint.x), \(somePoint.y)) です")
// 点は現在 (3.0, 4.0) です

// 上記の Point 構造体は、自身に変更を加える moveBy(x:y:) メソッドを定義します。
// これは、Point インスタンスを一定量移動します。
// 新しいポイントを返す代わりに、呼び出されたポイントを実際に変更します。
// プロパティを変更できるようにするために、mutating キーワードがその定義に追加されてます。



// 2025/09/13[土]
// mutating メソッド内からselfへの値の割り当て(Assigning to self Within a Mutating Method)
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

// このバージョンの mutating moveBy(x:y:) メソッドは、x と y がターゲットの位置に設定された新しい構造体を作成します。
// この代替バージョンのメソッドを呼び出した場合の最終結果は、先ほどのバージョンを呼び出した場合とまったく同じになります。




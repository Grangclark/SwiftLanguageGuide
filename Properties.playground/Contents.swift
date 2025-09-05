import UIKit

var greeting = "Hello, playground"

// 2025/08/31[日]
// プロパティ(Properties)
// インスタンスまたは型の一部である、格納および計算された値にアクセスする。
// プロパティは、値を特定のクラス、構造体、または列挙型に関連付けます。
// 格納プロパティは定数と変数の値をインスタンスの一部として保存しますが、計算プロパティは値を(保存するのではなく)計算します。
// 計算プロパティは、クラス、構造体、および列挙型で使用できます。格納プロパティは、クラスと構造体のみで使用できます。

// 格納プロパティ(Stored Properties)
// 最もシンプルな形式だと、格納プロパティは、特定のクラスまたは構造体のインスタンスの一部として保存される定数または変数です。
// 格納プロパティは、変数格納プロパティ(var キーワードを使用)または定数格納プロパティ(let キーワードを使用) のいずれかです。

// 下記の例では、FixedLengthRange という構造体を定義しています。これは、作成後に範囲の長さを変更できない整数の範囲を表します。
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// 0, 1, 2 の整数の範囲を表しています
rangeOfThreeItems.firstValue = 6
// 6, 7, 8 の整数の範囲を表しています

// FixedLengthRange のインスタンスには、firstValue と呼ばれる変数格納プロパティと length という定数格納プロパティがあります。上記の例では、定数のため、長さは新しい範囲が作成されたときに初期化され、それ以降は変更できません。



// 2025/09/01[月]
// 定数に割り当てられた構造体のインスタンスの格納プロパティ(Stored Properties of Constant Structure Instances)
// 構造体のインスタンスを作成し、そのインスタンスを定数に割り当てる場合、インスタンスのプロパティは、変数で宣言されていても変更できません。
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// 0, 1, 2, 3 の整数の範囲を表しています
rangeOfFourItems.firstValue = 6
// firstValue は変数ですがエラーになります



// 2025/09/02[火]
// 計算プロパティ(Computed Properties)
// 格納プロパティに加えて、クラス、構造体、および列挙型は、計算プロパティを定義できます。
// これは値を保持せず、代わりに間接的に他のプロパティの値を取得する get を提供します。
// 他のプロパティに値を設定する set を提供することもできます。
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// square.origin is now at (10.0, 10.0)

// この例では、幾何学的形状を操作するための 3 つの構造体を定義しています。
// ・Point は、x 座標と y 座標をカプセル化しています
// ・Size は width と height をカプセル化しています
// ・Rect は、原点とサイズで四角形を定義しています



// 2025/09/03[水]
// 省略プロパティ set 宣言(Shorthand Setter Declaration)
// 計算プロパティの set が、設定される新しい値の名前を定義しない場合、デフォルト名の newValue が使用されます。
// 下記はこの省略表記を利用した Rect 構造体の代替バージョンを次に示します:
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}




// 2025/09/04[木]
// 省略プロパティ get 宣言(Shorthand Getter Declaration)
// get の本文全体が単一式の場合、暗黙的にその式を返します。
// この省略表記を利用した別のバージョンの Rect 構造体を次に示します:
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}




// 2025/09/05[金]
// 読み取り専用計算プロパティ(Read-Only Computed Properties)
// get のみの計算プロパティは、読み取り専用計算プロパティと呼ばれます。
// 読み取り専用計算プロパティは常に値を返し、ドット構文を介してアクセスできますが、別の値を設定することはできません。
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// the volume of fourByFiveByTwo is 40.0

// この例では、Cuboid という新しい構造体を定義します。
// これは、width、height、depth プロパティを持つ 3D の長方形のボックスを表します。
// この構造体には、volume と呼ばれる読み取り専用計算プロパティもあります。
// これは、直方体の現在のボリュームを計算して返します。
// 特定のボリューム値に width、height、depth のどの値が使用されているかがあいまいなため、
// volume に set 可能にすることは意味がありません。
// それでも、Cuboid が読み取り専用計算プロパティを提供して、
// 外部ユーザーが現在の計算済みボリュームを見られようにすると便利です。

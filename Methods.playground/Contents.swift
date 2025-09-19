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



// 2025/09/15[月]
// 列挙型の変更メソッドは、暗黙的な self パラメータを同じ列挙型とは異なるケースに設定できます。
enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight は .high
ovenLight.next()
// ovenLight は .off

// この例では、スイッチの 3 つの状態を列挙型で定義しています。
// スイッチは、next() メソッドが呼び出されるたびに、3 つの異なる電源状態(off、low と high)を切り替えます。



// 2025/09/16[火]
// 型メソッド(Type Methods)
// 上で説明したように、インスタンスメソッドは、特定の型のインスタンスで呼び出すメソッドです。
// 型自体で呼び出されるメソッドを定義することもできます。
// このようなメソッドは型メソッドと呼ばれます。
// メソッドの func キーワードの前に static キーワードを記述して、型メソッドを示します。
// クラスは代わりに class キーワードを使用して、サブクラスがそのメソッドのスーパークラスの実装をオーバーライドできるようにすることができます。

// 型メソッドは、インスタンスメソッドと同様にドット構文で呼び出せます。
// ただし、その型のインスタンスではなく、その型に対して型メソッドを呼び出します。
// SomeClass というクラスで型メソッドを呼び出す方法は次のとおりです:
class SomeClass {
    class func someTypeMethod() {
        // 型メソッドの実装はここに
    }
}
SomeClass.someTypeMethod()




// 2025/09/17[水]
// 下記では、ゲームの様々なレベルまたはステージを通じてプレーヤーの進行状況を追跡する LevelTracker と呼ばれる構造体を定義しています。
// シングルプレイヤー用のゲームですが、1 つのデバイスに複数のプレイヤーの情報を保存できます。

// ゲームの全てのレベル(レベル 1 を除く)は、ゲームを最初にプレイしたときに決定されます。
// プレーヤーがそのレベルをクリアするたびに、そのレベルはデバイス上の全てのプレーヤーに対して解放されます。
// LevelTracker 構造体は、型プロパティとメソッドを使用して、ゲームのどのレベルが解放されたのかを追跡します。
// また、個々のプレーヤーの現在のレベルも追跡します。
struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1

    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }

    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }

    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

// LevelTracker 構造体は、任意のプレーヤーが解放した最高レベルを追跡します。
// この値は、highestUnlockedLevel という型プロパティに格納されます。



// 2025/09/18[木]
// LevelTracker 構造体は、下記に示す Player クラスで使用され、個々のプレーヤーの進行状況を追跡および更新します:
class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

// Player クラスは、LevelTracker の新しいインスタンスを作成して、
// そのプレーヤーの進行状況を追跡します。また、complete(level:) というメソッドも提供します。
// これは、プレーヤーが特定のレベルをクリアするたびに呼び出されます。
// このメソッドは、全てのプレーヤーの次のレベルを解放し、
// プレーヤーの進行状況を更新して次のレベルに移動します。
// (レベルは前の行の LevelTracker.unlock(_:) の呼び出しによって解放されていることがわかっているため、
//  advance(to:) のブール値の戻り値は無視されています)


// 2025/09/19[金]
// 新しいプレーヤーの Player クラスのインスタンスを作成し、プレーヤーがレベル 1 をクリアしたときに何が起こるかを確認できます。
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("解放された最高レベルは現在 \(LevelTracker.highestUnlockedLevel) です")
// 解放された最高レベルは現在 2 です





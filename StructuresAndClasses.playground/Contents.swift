import UIKit

var greeting = "Hello, playground"

// 2025/08/25[月]
// 構造体とクラス(Structures and Classes)
// データをカプセル化する独自のデータ型をモデル化する。

// 構造体とクラスは、プログラムのコードの構成要素を構築する汎用的で柔軟な構造概念です。
// 定数、変数、関数の定義に使用するのと同じ構文を使用して、プロパティとメソッドを定義して機能を追加します。

// 他のプログラミング言語とは異なり、Swift では、インターフェイスと実装ファイルを別々に作成する必要はありません。
// 構造体またはクラスを 1 つのファイルで定義すると、その外部インターフェイスは自動的に他のコードで使用できるようになります。

// 定義構文(Definition Syntax)
// 構造体とクラスの定義構文は似ています。
// struct キーワードを使用して構造体を作成し、class キーワードを使用してクラスを作成します。
// どちらも、定義全体を中括弧のペア({})内に配置します:
struct SomeStructure {
    // 構造体の定義をここに
}
class SomeClass {
    // クラスの定義をここに
}


// 2025/08/26[火]
// 構造体とクラス定義の例を次に示します。
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// 上記の例では、Resolution と呼ばれる新しい構造体を定義して、ピクセルベースのディスプレイ解像度を記述しています。
// この構造体には、width と height という 2 つの格納プロパティがあります。
// 格納プロパティは、構造体またはクラスの一部として紐付け、格納される定数または変数です。
// これらの 2 つのプロパティは、初期値に 0 を設定することにより、Int 型だと推論されます。



// 2025/08/27[水]
// struct と class のインスタンス(Structure and Class Instances)
// Resolution 構造体の定義と VideoMode クラスの定義は、Resolution または VideoMode がどのようなものかを説明しているだけです。
// インスタンスを作成するための構文は、構造体とクラスの両方で非常に似ています。
let someResolution = Resolution()
let someVideoMode = VideoMode()



// 2025/08/28[木]
// プロパティへのアクセス(Accessing Properties)
// ドット構文を使用して、インスタンスのプロパティにアクセスできます。
// ドット構文では、インスタンス名の直後に、スペースを入れずにピリオド(.)で区切ってプロパティ名を記述します。
print("The width of someResolution is \(someResolution.width)")
// The width of someResolution is 0

// この例では、someResolution.width は someResolution の width プロパティを参照し、デフォルトの初期値 0 を返します。



// 2025/08/29[金]
// VideoMode の resolution プロパティの width プロパティなど、より深い階層へもアクセスできます。
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// The width of someVideoMode is 0



// 2025/08/30[土]
// ドット構文を使用して、変数プロパティに新しい値を代入することもできます。
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// The width of someVideoMode is now 1280




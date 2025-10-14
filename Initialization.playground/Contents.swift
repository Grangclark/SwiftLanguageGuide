import UIKit

var greeting = "Hello, playground"


// 2025年10月10日[金]
// 初期化(Initialization)
// 型に格納されたプロパティの初期値を設定し、一度きりのセットアップを実行します。

// 初期化は、使用するクラス、構造体、または列挙型のインスタンスを準備するプロセスです。
// このプロセスには、そのインスタンスに保存されている各プロパティの初期値の設定と、
// 新しいインスタンスの使用準備が整う前に必要なその他の要素のセットアップや初期化の実行が含まれます。

// この初期化プロセスを実装するには、イニシャライザを定義します。
// イニシャライザは、特定の型の新しいインスタンスを作成するために呼び出すことができる特別なメソッドのようなものです。
// Objective-C のイニシャライザとは異なり、Swift のイニシャライザは値を返しません。
// 主な役割は、型の新しいインスタンスが初めて使用される前に正しく初期化されていることを保証することです。

// イニシャライザ(Initializers)
// イニシャライザは、特定の型の新しいインスタンスを作成するために呼び出されます。
// 最もシンプルな形式では、イニシャライザはパラメータのないインスタンスメソッドのようなもので、init キーワードを使用して記述されます:
init() {
    // ここで初期化を実行します
}



// 2025年10月11日[土]
// 下の例では、華氏で表された温度を保存するために Fahrenheit という新しい構造体を定義しています。
// Fahrenheit 構造体には、Double 型の temperature という 1 つの格納プロパティがあります。
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("温度の初期値は華氏 \(f.temperature)°")
// 温度の初期値は華氏 32.0°
// この構造体はパラメータのない単一のイニシャライザ init を定義します。
// これは、格納された温度を 32.0(華氏での水の凝固点)の値で初期化します。




// 2025年10月12日[日]
// プロパティのデフォルト値(Default Property Values)
// プロパティが宣言された時点で temperature プロパティのデフォルト値を指定することにより、
// 上記の Fahrenheit 構造体をよりシンプルな形式で書くことができます。
struct Fahrenheit {
    var temperature = 32.0
}




// 2025年10月13日[月]
// イニシャライザのパラメータ(Initialization Parameters)
// 初期パラメータをイニシャライザの定義の一部として提供することで、
// 初期化プロセスをカスタマイズするための値の型と名前を定義できます。
// 初期化パラメータには、関数およびメソッドパラメータと同じ機能と構文があります。

// 次の例では、摂氏で表された温度を格納する Celsius という構造体を定義しています。
// Celsius 構造体は、init(fromFahrenheit:) および init(fromKelvin:) という
// 2 つのカスタムイニシャライザを実装しています。
// これらは、構造体の新しいインスタンスを異なる温度スケールの値で初期化しています。
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius は 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius は 0.0




// 2025年10月14日[火]
// パラメータ名と引数ラベル(Parameter Names and Argument Labels)
// 関数やメソッドのパラメータと同様に、初期化パラメータには、
// イニシャライザの本文内で使用するパラメータ名と、
// イニシャライザを呼び出すときに使用する引数ラベルの両方を含めることができます。

// ただし、イニシャライザには、関数やメソッドのように括弧の前に識別関数名がありません。
// したがって、イニシャライザのパラメータの名前と型は、
// どのイニシャライザを呼び出す必要があるかを識別する上で特に重要な役割を果たします。
// このため、Swift は、イニシャライザが提供されていない場合、
// イニシャライザの全てのパラメータに自動で引数ラベルを提供します。

// 次の例では、red、green、blue という 3 つの定数プロパティを持つ Color という構造体を定義しています。
// これらのプロパティには、色の赤、緑、青の量を示す 0.0 ～ 1.0 の値が格納されます。

// Color は、赤、緑、および青のコンポーネント用に Double 型の適切に名前が付けられた 3 つのパラメータを含むイニシャライザを提供します。
// Color は、3 つ全ての色コンポーネントに同じ値を提供するために使用される、単一の white パラメータを持つ 2 番目のイニシャライザも提供します。
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}





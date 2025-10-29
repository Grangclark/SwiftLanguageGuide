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




// 2025年10月15日[水]
// 両方のイニシャライザを使用して、各イニシャライザのパラメータに名前付きの値を指定することで、新しい Color インスタンスを作成できます。
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)




// 2025年10月16日[木]
// 引用ラベルを使用せずにこれらのイニシャライザを呼び出すことはできないことに注意してください。
// 引数ラベルが定義されている場合は、常にイニシャライザで使用する必要があり、それらを省略するとコンパイルエラーになります。
let veryGreen = Color(0.0, 1.0, 0.0)
// 引数ラベルが必要になるため、コンパイルエラーになります




// 2025年10月17日[金]
// 引数ラベルのないイニシャライザパラメータ(Initializer Parameters Without Argument Labels)
// 初期化パラメータに引数ラベルを使用したくない場合は、
// そのパラメータの明示的な引数ラベルの代わりにアンダースコア (_) を記述して、
// デフォルトの挙動をオーバーライドします。
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius(37.0)
// bodyTemperature.temperatureInCelsius は 37.0

// イニシャライザの呼び出し Celsius(37.0) は、意図が明確なので引数ラベルを必要としません。
// したがって、このイニシャライザを init(_ celsius: Double) と記述して、
// 名前のない Double 値を指定して呼び出すことができるのは妥当です。





// 2025年10月18日[土]
// オプショナルのプロパティ型(Optional Property Types)
// 独自に定義した型に、論理的に「値なし」が許される格納プロパティがある場合
// (おそらく、初期化中にその値を設定できないか、後で「値なし」になる可能性があるため)、
// プロパティをオプショナル型を使って宣言できます。
// オプショナル型のプロパティは、値 nil で自動的に初期化されます。
// こうすることで、プロパティが初期化中に意図的に「まだ値がない」ことを示すことができます。

// 次の例では、SurveyQuestion というクラスを定義し、
// オプショナルの String プロパティとして response を定義しています。
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "チーズは好きですか？")
cheeseQuestion.ask()
// チーズは好きですか？
cheeseQuestion.response = "ええ、大好きです。"

// アンケートの質問への回答は質問されるまでわからないため、
// 回答プロパティは String? または Optional<String> で宣言されています。
// SurveyQuestion の新しいインスタンスが初期化されると、
// デフォルト値の nil、つまり「文字列はまだありません」が自動的に割り当てられます。




// 2025年10月19日[日]
// 初期化中の定数プロパティの割り当て(Assigning Constant Properties During Initialization)
// 初期化が完了するまでに明確な値が設定されている限り、
// 初期化中の任意の時点で定数プロパティに値を割り当てることができます。
// 定数プロパティに値が割り当てられると、それ以上変更することはできません。
// 上記の SurveyQuestion の例を修正して、質問の text プロパティに変数プロパティではなく定数プロパティを使用して、
// SurveyQuestion のインスタンスが作成されたら質問が変更されないことを示すことができます。
// text プロパティは定数ですが、クラスのイニシャライザ内で設定できます。
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "ビーツはどうでしょう？")
beetsQuestion.ask()
// ビーツはどうでしょう？
beetsQuestion.response = "ビーツも好きですよ。(でもチーズと一緒にはしないでください。)"




// 2025年10月20日[月]
// デフォルトイニシャライザ(Default Initializers)
// Swift は、全てのプロパティにデフォルト値を設定し、1 つもイニシャライザを提供しない構造体またはクラスに対して、
// デフォルトのイニシャライザを提供します。デフォルトのイニシャライザは、
// 全てのプロパティがデフォルト値に設定された新しいインスタンスを作成するだけです。

// この例では、ショッピングリスト内のアイテムの名前、数量、購入状態をカプセル化する ShoppingListItem というクラスを定義しています。
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()


// ShoppingListItem クラスの全てのプロパティにはデフォルト値があり、
// スーパークラスを持たない基本クラスのため、ShoppingListItem は、
// 全てのプロパティにデフォルト値が設定された新しいインスタンスを作成する
// イニシャライザの実装を自動で獲得します
// (name プロパティはオプショナルの String プロパティのため、この値がコードに記述されていなくても、
//  デフォルト値の nil が自動的に設定されます)。
// 上記の例では、ShoppingListItem クラスのデフォルトイニシャライザを使用して
// ShoppingListItem() と記述し、新しいインスタンスを作成して item という変数に割り当てています。




// 2025年10月21日[火]
// 構造体のメンバワイズイニシャライザ(Memberwise Initializers for Structure Types)
// 構造体は、独自のカスタムイニシャライザを定義していない場合、
// メンバワイズイニシャライザを自動的に定義されます。
// デフォルトイニシャライザとは異なり、
// 構造体は、デフォルト値を持たないプロパティが格納されている場合でも、
// メンバワイズイニシャライザが定義されます。

// メンバワイズイニシャライザは、新しい構造体インスタンスのプロパティを初期化する簡単な方法です。
// 新しいインスタンスのプロパティの初期値は、プロパティ名によってメンバワイズイニシャライザに渡すことができます。

// 下記の例では、width と height という 2 つのプロパティを持つ Size という構造体を定義しています。
// 両方のプロパティは、デフォルト値 0.0 を割り当てることにより、Double 型だと推論されます。

// Size 構造体は、新しい Size インスタンスを初期化するために使用できるメンバワイズイニシャライザ init(width:height:) が自動的に定義されています。
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)




// 2025年10月22日[水]
// メンバワイザイニシャライザを呼び出すときは、デフォルト値を持つ全てのプロパティの値を省略できます。
// 上記の例では、Size 構造体の height と width の両方のプロパティにデフォルト値があります。
// プロパティのいずれかまたは両方を省略できます。
// イニシャライザは、省略した全てのプロパティにデフォルト値を使用します。
// 例えば、次のようになります:
let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)
// 0.0 2.0

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)
// 0.0 0.0




// 2025年10月23日[木]
// 値型のイニシャライザの委譲(Initializer Delegation for Value Types)
// イニシャライザは、他のイニシャライザを呼び出して、インスタンスの初期化の一部を実行できます。
// イニシャライザの委譲と呼ばれるこのプロセスは、複数のイニシャライザ間でコードが重複するのを防ぎます。

// 次の例では、幾何学的な四角形を表すカスタム Rect 構造体を定義しています。
// この例では、Size と Point という 2 つの補助となる構造体が必要です。
// どちらも、全てのプロパティにデフォルト値 0.0 を提供します:
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}





// 2025年10月24日[金]
// 下記の 3 つの方法のいずれかで、Rect 構造体を初期化できます。
// つまり、0 で初期化されたデフォルトの origin と size のプロパティ値を使用するか、特定の原点とサイズを指定するか、特定の中心点とサイズを指定します。
// これらの初期化の選択肢は、Rect 構造体の定義の一部として 3 つのカスタムイニシャライザで表されます：
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}




// 2025年10月25日[土]
// 最初の Rect イニシャライザ init() は、独自のカスタムイニシャライザがない場合に受け取るデフォルトのイニシャライザと機能的に同じです。
// このイニシャライザには、空の中括弧 {} のペアで表される空の本文があります。
// このイニシャライザを呼び出すと、
// 原点とサイズのプロパティが両方ともプロパティ定義の Point(x: 0.0, y: 0.0) と Size(width: 0.0, height: 0.0) の
// デフォルト値で初期化された Rect インスタンスが返されます:
let basicRect = Rect()
// basicRect の origin は (0.0, 0.0) で size は (0.0, 0.0)




// 2025年10月26日[日]
// 2番目の Rect イニシャライザ init(origin:size:) は、
// 独自のカスタムイニシャライザがない場合に構造体に自動で定義されるメンバワイズイニシャライザと機能的に同じです。
// このイニシャライザは、単に origin および size 引数の値を適切な格納されたプロパティに割り当てます:
let originRect = Rect(origin: Point(x: 2.0, y: 2.0),
                      size: Size(width: 5.0, height: 5.0))
// originRect の origin は (2.0, 2.0) で size は (5.0, 5.0)




// 2025年10月27日[月]
// 3番目の Rect イニシャライザ init(center:size:) は、もう少し複雑です。
// center と size 値に基づいて適切な原点を計算することから始めます。
// 次に、init(origin:size:) イニシャライザを呼び出し(委譲)します。
// このイニシャライザは、適切なプロパティに新しい原点とサイズの値を保存します。
let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
                      size: Size(width: 3.0, height: 3.0))
// centerRect の origin は (2.5, 2.5) で size は (3.0, 3.0)



// 2025年10月28日[火]
// 指定イニシャライザとconvenience イニシャライザの構文(Syntax for Designated and Convenience Initializers)
init(<#parameters#>) {
   <#statements#>
}



// 2025年10月29日[水]
// convenience イニシャライザは同じスタイルで記述できますが、init キーワードの前にスペース区切りで convenience 修飾子を配置します:
convenience init(<#parameters#>) {
   <#statements#>
}



import UIKit

var greeting = "Hello, playground"

// 2025/09/25[木]
// 継承(Inheritance)

// 機能を追加またはオーバーライドするサブクラス。

// クラスは、メソッド、プロパティ、およびその他の特性を別のクラスから継承できます。
// あるクラスが別のクラスを継承する場合、継承するクラスはサブクラスと呼ばれ、継承されるクラスはスーパークラスと呼ばれます。
// 継承は、Swift においてクラスと他の型を区別する重要な挙動です。

// Swift のクラスは、スーパークラスに属するメソッド、プロパティ、およびサブスクリプトを呼び出してアクセスしたり、
// それらのメソッド、プロパティ、およびサブスクリプトの独自のオーバーライドバージョンを提供して挙動を変更できたりします。
// Swift は、オーバーライドしている定義がスーパークラスの定義に一致していることを確認することで、オーバーライドが正しいことを確認します。

// 基本クラスの定義(Defining a Base Class)
// 別のクラスから継承しないクラスは、基本クラスと呼ばれます。

// 以下の例では、Vehicle という基本クラスを定義しています。
// この基本クラスは、currentSpeed と呼ばれる格納プロパティを定義します。
// デフォルト値は 0.0 です(プロパティの型は Double と推論されます)。
// currentSpeed プロパティの値は、description と呼ばれる読み取り専用の String 型の計算プロパティに使用され、乗り物の説明をします。

// Vehicle 基本クラスは、makeNoise と呼ばれるメソッドも定義します。
// このメソッドは、何もしませんが、後で Vehicle のサブクラスによってカスタマイズされます。

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "走行時速 \(currentSpeed) マイル"
    }
    func makeNoise() {
        // 何もしない - 乗り物は必ずしも騒音を出しません
    }
}



// 2025/09/26[金]
// 初期化構文を使用して Vehicle の新しいインスタンスを作成します。これは、型名とそれに続く空の括弧(())として記述されます。
let someVehicle = Vehicle()




// 2025/09/27[土]
// 新しい Vehicle インスタンスを作成したら、その description プロパティにアクセスして、乗り物の現在の速度の人間が読める形式の説明を出力します。
print("乗り物: \(someVehicle.description)")
// 乗り物: 走行時速 0.0 マイル

// Vehicle クラスは、任意の乗り物に共通の特性を定義しますが、そのまま使用されることはあまりありません。
// より有用にするには、より具体的な種類の乗り物を記述する必要があります。




// 2025/09/28[日]
// サブクラス化(Subclassing)
// サブクラス化は、既存のクラスに基づいて新しいクラスを作成することを指します。
// サブクラスは既存のクラスの特性を継承し、それを変更することができます。
// サブクラスに新しい特性を追加することもできます。

// サブクラスにスーパークラスがあることを示すには、サブクラス名の後にコロン(:)で区切ってスーパークラス名を記述します。
class SomeSubclass: SomeSuperclass {
    // サブクラスの定義をここに
}




// 2025/09/29[月]
// 次の例では、Vehicle のスーパークラスを持つ Bicycle というサブクラスを定義しています。
class Bicycle: Vehicle {
    var hasBasket = false
}

// 新しい Bicycle クラスは、currentSpeed プロパティと description プロパティ、makeNoise() メソッドなど、
// Vehicle の全ての特性を自動的に継承します。

// 加えて、Bicycle クラスは新しい格納プロパティ hasBasket を定義し、デフォルト値は false です(プロパティは Bool 型と推論されます)。



// 2025/09/30[火]
// デフォルトでは、作成する新しい Bicycle インスタンスにはカゴがありません。
// 特定の Bicycle インスタンスが作成された後、そのインスタンスに対して hasBasket プロパティを true に設定できます。
let bicycle = Bicycle()
bicycle.hasBasket = true




// 2025/10/01[水]
// 継承した currentSpeed プロパティを変更し、インスタンスで継承した description プロパティにその変更を反映することもできます。
bicycle.currentSpeed = 15.0
print("自転車: \(bicycle.description)")
// 自転車: 走行時速 15.0 マイル



// 2025/10/02[木]
// サブクラス自体をサブクラス化できます。次の例では、「タンデム」と呼ばれる 2 人乗り自転車のサブクラスを作成します。
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
// Tandem は Bicycle から全てのプロパティとメソッドを継承し、
// Bicycle は Vehicle から全てのプロパティとメソッドを継承します。
// Tandem サブクラスは、currentNumberOfPassengers と呼ばれる新しい格納プロパティも追加します。
// デフォルト値は 0 です。




// 2025/10/03[金]
// Tandem インスタンスを作成する場合、その新しいプロパティと継承したプロパティのいずれかを操作して、
// Vehicle から継承した読み取り専用の description プロパティの変更を反映できます。
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("タンデム: \(tandem.description)")
// タンデム: 走行時速 22.0 マイル



// 2025/10/04[土]
// メソッドのオーバーライド(Overriding Methods)
// 継承したインスタンスまたは型メソッドをオーバーライドして、
// サブクラス内のメソッドの特定の目的に適合した、または代わりとなる実装を提供できます。

// 次の例では、Train と呼ばれる Vehicle の新しいサブクラスを定義します。
// これは、Train が Vehicle から継承した makeNoise() メソッドをオーバーライドしています。
class Train: Vehicle {
    override func makeNoise() {
        print("シュッシュ、ポッポ")
    }
}




// 2025/10/05[日]
// Train の新しいインスタンスを作成し、その makeNoise() メソッドを呼び出すと、
// Train サブクラスのバージョンのメソッドが呼び出されていることがわかります。
let train = Train()
train.makeNoise()
// シュッシュ、ポッポ




// 2025/10/06[月]
// get と set のオーバーライド(Overriding Property Getters and Setters)
// 継承したプロパティが格納プロパティか計算プロパティかに関係なく、
// 継承したプロパティをオーバーライドする独自の get (および必要ならば set )を提供できます。
// 継承したプロパティの格納または計算プロパティの実装は、サブクラスには認識されません。
// 継承したプロパティは、特定の名前と型を持っていることだけを認識します。
// オーバーライドしたプロパティの名前と型の両方を常に指定して、
// そのオーバーライドが同じ名前と型のスーパークラスのプロパティと一致することをコンパイラがチェックできるようにする必要があります。

// 次の例では、Vehicle のサブクラスの Car という新しいクラスを定義します。
// Car クラスは、デフォルトの整数値 1 で、gear と呼ばれる新しい格納プロパティを導入します。
// Car クラスは、Vehicle から継承する description プロパティもオーバーライドして、
// 現在のギアを含むカスタムの説明を提供します:
class Car: Vehicle {
var gear = 1
override var description: String {
    return super.description + "でギアは \(gear)"
}
}

// description プロパティのオーバーライドは、
// Vehicle クラスの description プロパティを返す super.description を呼び出すことから始まります。
// 次に、Car クラスの description は、現在のギアに関する情報を提供するために、この説明の最後にいくつかのテキストを追加しています。




// 2025/10/07[火]
// Car クラスのインスタンスを作成し、その gear プロパティと currentSpeed プロパティを設定すると、
// description プロパティが Car クラス内で定義されたカスタマイズされた説明を返します。
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("自動車: \(car.description)")
// 自動車: 走行時速 25.0 マイルでギアは 3




// 2025/10/08[水]
// プロパティオブザーバのオーバーライド(Overriding Property Observers)
// プロパティのオーバーライドを使用して、継承したプロパティのプロパティオブザーバを追加できます。
// これにより、継承したプロパティの値が変更されたときに、そのプロパティが最初にどのように実装されたかに関係なく通知を受け取ることができます。

// 次の例では、Car のサブクラスの AutomaticCar という新しいクラスを定義しています。
// AutomaticCar クラスは、現在の速度に基づいて使用する適切なギアを自動的に選択するギアボックスを備えた車、オートマ車を表します:
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}




// 2025/10/09[木]
// AutomaticCar インスタンスの currentSpeed プロパティを設定するたびに、
// プロパティの didSet オブザーバは、インスタンスの gear プロパティに新しい速度に適したギアを選択します。
// 具体的には、プロパティオブザーバは、新しい currentSpeed 値を 10 で除算し、最も近い整数に切り捨てられた値に 1 を加えたギアを選択します。
// 速度 35.0 はギア 4 を生成します。
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("オートマ車: \(automatic.description)")
// オートマ車: 走行時速 35.0 マイルでギアは 4




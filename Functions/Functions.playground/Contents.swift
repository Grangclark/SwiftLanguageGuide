import UIKit

var greeting = "Hello, playground"


// 2025年7月24日[木]
// 関数(Functions)
// 関数の定義と呼び出し(Defining and Calling Functions)
// 下記の例の関数は、greet(person:) という関数で、名前が示す通り、
// 人の名前を入力値として受け取り、その人への挨拶を返します。
// この関数では、person という String 型のパラメータと、その人に対する挨拶を含めた String 型の戻り値を返します:
func greet(person: String) -> String {
    let greeting = "こんにちは、 " + person + "!"
    return greeting
}


// 2025年7月25日[金]
// 関数のパラメータと戻り値(Function Parameters and Return Values)
// Swift では、関数のパラメータと戻り値は非常に柔軟です。
// 名前のない単一のパラメータを持つシンプルなユーティリティ関数から、
// 読みやすいように表現できるパラメータ名と様々なパラメータオプションを持つ複雑な関数まで、
//あらゆるものを定義できます。

// パラメータなし関数(Functions Without Parameters)
// 入力パラメータは関数に必須ではありません。
// 入力パラメータのない関数は次のとおりです。
// この関数は、呼び出される度に、常に同じ String 型のメッセージを返します:
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// こんにちは、 world



// 2025年7月26日[土]
// 複数のパラメータがある関数(Functions With Multiple Parameters)
// 関数は、カンマ(,)区切りで複数のパラメータを持つことができます。
// この関数は、人の名前と、その人がすでに挨拶されているかどうかを入力値として受け取り、その人に適切な挨拶を返します:
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
// もう一度こんにちは、 Tim!



// 2025年7月27日[日]
// 戻り値なし関数(Functions Without Return Values)
// 戻り値の型を定義することも必須ではありません。
// greet(person:) バージョンは String 型の値を返すのではなく、その値を出力します。
func greet(person: String) {
    print("こんにちは、 \(person)!")
}
greet(person: "Dave")
// こんにちは、 Dave!



// 2025年7月28日[月]
// 複数の戻り値がある関数(Functions with Multiple Return Values)
// タプル型を関数の戻り値の型として使用して、1 つの複合戻り値として複数の値を返すことができます。
// 以下の例では、minMax(array:) という関数を定義しています。この関数は、Int 値の配列内の最小値と最大値を検索します。
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
// minMax(array:) 関数は、2 つの Int 値を含むタプルを返します。
// これらの値には min と max のラベルが付いているため、関数の戻り値を使用するときにその名前でアクセスできます。



// 2025年7月29日[火]
// タプルのそれぞれの値は、関数の戻り値の型の一部として名前が付けられているため、
// ドット(.)構文でアクセスして、見つかった最小値と最大値を取得できます。
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("最小値は \(bounds.min) で最大値は \(bounds.max)")
// 最小値は -6 で最大値は 109



// 2025年7月30日[水]
// オプショナルのタプルの戻り値の型(Optional Tuple Return Types)
// 関数から返されるタプル型が、「値が存在しない」可能性がある場合は、
// オプショナルのタプル型を使用して、タプル全体が nil になる可能性があることを示すことができます。
// (Int, Int)? や (String, Int, Bool)? のように、
// タプル型の閉じ括弧())の後に疑問符(?)を配置して、オプショナルのタプル型を書きます。
// 空の配列を安全に処理するには、オプショナルのタプルの戻り値の型を指定して、配列が空の場合は nil を返します。
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}



// 2025年7月31日[木]
// 暗黙的な戻り値がある関数(Functions With an Implicit Return)
// 関数の本文全体が、単一式の場合は、関数は暗黙的にその式の結果を返します。例えば、下記の両方の関数の動作は同じです:
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// Hello, Dave!

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))
// Hello, Dave!

// greeting(for:) 関数の全体の定義は、戻り値の挨拶文です。
// つまり、この短い形式を使用できます。
// anotherGreeting(for:) 関数は、複数の式を持つ関数と同様に return キーワードを使用して、
// 同じ挨拶文を返しています。
// 1 つの戻り行として記述した関数は、return を省略できます。



// 2025年8月1日[金]
// 引数ラベルとパラメータ名(Function Argument Labels and Parameter Names)
// 各関数のパラメータには、引数ラベルとパラメータ名の両方持つことができます。
// 引数ラベルは、関数を呼び出すときに使用されます。
// 各引数は、その前に書かれた引数ラベルを使用して関数が呼び出されます。
// 引数名は関数の内部で使用されます。
// デフォルトでは、パラメータ名を引数ラベルとして使用します。
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // 関数の本文では、`firstParameterName`と`secondParameterName`は
    // 最初と 2 番目のパラメータの値を参照します。
}
someFunction(firstParameterName: 1, secondParameterName: 2)
// 全てのパラメータには一意の名前を付ける必要があります。
// 複数のパラメータに同じ引数ラベルを付けることはできますが、
// 一意の引数ラベルを使用すると、コードが読みやすくなります。



// 2025年8月2日[土]
// 引数ラベルの特定(Specifying Argument Labels)
// 引数名の前に、スペースで区切って引数ラベルを記述します。
func someFunction(argumentLabel parameterName: Int) {
    // 関数の本文では、`parameterName` でパラメータの値を参照します
}



// 2025年8月3日[日]
// これは、人の名前と出身地を受け取って挨拶を返す greet(person:) 関数の一種です:
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Hello Bill!  Glad you could visit from Cupertino.

// 引数ラベルを使用すると、関数の本文に読みやすく明確な意図を持たせつつ、表現豊かな文章のように関数を呼び出すことができます。



// 2025年8月4日[月]
// 引数ラベルの省略(Omitting Argument Labels)
// 引数ラベルが必要ない場合は、その引数ラベルの代わりにアンダースコア(_)を記述します。
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // 関数の本文では、`firstParameterName`と`secondParameterName`は
    // 最初と 2 番目のパラメータの値を参照します。
}
someFunction(1, secondParameterName: 2)



// 2025年8月5日[火]
// デフォルトパラメータ値(Default Parameter Values)
// パラメータの型の後に値を代入することで、関数内の任意のパラメータのデフォルト値を定義できます。
// デフォルト値が定義されている場合は、関数を呼び出すときにそのパラメータを省略できます。
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // 関数を呼び出すときに 2 番目のパラメータを省略した場合、
    // `parameterWithDefault` の値は 12 になります。
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // `parameterWithDefault` は 6
someFunction(parameterWithoutDefault: 4) // `parameterWithDefault` は 12

// デフォルト値のないパラメータは、関数のパラメータリストでデフォルト値のあるパラメータよりも前に置きましょう。
// 通常、デフォルト値を持たないパラメータの方が重要です。
// 最初にデフォルト値を持たないパラメータを置くと、
// デフォルトパラメータが省略されているかどうかに関係なく、
// 同じ関数が呼び出されていることを認識しやすくなります。



// 2025年8月6日[水]
// 可変長パラメータ(Variadic Parameters)
// 可変長パラメータは、指定された型の 0 個以上の値を受け入れます。
// 可変長パラメータを使用すると、関数が呼び出されたときに、
// パラメータに様々な数の入力値を渡すことができます。
// パラメータの型名の後に 3 つのピリオド文字(...)を挿入して、可変長パラメータを記述します。
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// 5 つの数値の平均の 3.0 を返します
arithmeticMean(3, 8.25, 18.75)
// 3 つの数値の平均の 10.0 を返します




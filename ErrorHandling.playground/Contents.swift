
// 2025年12月21日[日]
// エラー処理(Error Handling)
// エラーに対応し、エラーから回復する。
// エラー処理は、プログラムのエラー状態に応答し、エラー状態から回復するプロセスです。
// Swift は、実行時に回復可能なエラーをスロー、キャッチ、伝播、および操作するための第一級クラスのサポートを提供します。

// エラーの表現とスロー(Representing and Throwing Errors)
// Swift では、エラーは Error プロトコルに準拠した型の値によって表されます。
// この空のプロトコルは、エラー処理に型を使用できることを示します。

// Swift の列挙型は、関連するエラー条件のグループをモデル化するのに特に適しています。
// 関連値を使用すると、エラーの性質に関する追加情報を伝達できます。例えば、ゲーム内で自動販売機を操作する場合のエラー状態を表す方法は次のとおりです。
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}




// 2025年12月22日[月]
// エラーをスローすると、予期しないことが発生し、通常の実行フローを続行できないことを示すことができます。
// エラーをスローするには、throw 文を使用します。
// 例えば、次のコードはエラーをスローして、自動販売機で 5 枚の追加のコインが必要だということを示します。
throw VendingMachineError.insufficientFunds(coinsNeeded: 5)




// 2025年12月23日[火]
// エラー処理(Handling Errors)
// スロー関数を使用したエラーの伝播(Propagating Errors Using Throwing Functions)
// 関数、メソッド、またはイニシャライザがエラーをスローできることを示すには、関数の宣言のパラメータの後に throws キーワードを記述します。
// throws でマークされた関数は、スロー関数と呼ばれます。
// 関数が戻り値の型を指定する戻り矢印 (->) の前に throws キーワードを記述します:
func canThrowErrors() throws -> String

func cannotThrowErrors() -> String




// 2025年12月24日[水]
// 下記の例VendingMachine クラスに vend(itemNamed:) メソッドがあり、要求されたアイテムが利用できない場合、在庫がない場合、
// または現在のお金が足りない場合に、適切な VendingMachineError をスローします:
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0

    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")
    }
}



// 2025年12月26日[金]
// vend(itemNamed:) メソッドはスローしたエラーを全て伝播するため、
// このメソッドを呼び出すコードは、
// do-catch 文、try?、または try! を使用してエラーを処理するか、
// エラーを伝播し続ける必要があります。
// 例えば、下記の例の buyFavoriteSnack(person：vendingMachine:) もスロー関数で、
// vend(itemNamed:) メソッドがスローするエラーを buyFavoriteSnack(person：vendingMachine:) 関数が呼ばれる部分まで伝播しています。
let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}




// 2025年12月27日[土]
// イニシャライザがスローすると、関数をスローするのと同じ方法でエラーを伝播できます。
// 例えば、下記のリストにある PurchasedSnack 構造体のイニシャライザは、初期化プロセスの一部としてスロー関数を呼び出し、
// 発生したエラーを呼び出し元に伝播させることで処理します。
struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}



// 2025年12月28日[日]
// do catchを使ったエラー処理(Handling Errors Using Do-Catch)
// do-catch文を使用して、コードブロックを実行することでエラーを処理します。
// do 句のコードによってエラーがスローされた場合、catch 句と照合され、エラーを処理できる catch 句を判断します。

// do-catch 文の一般的な形式は次のとおりです:
do {
    try <#expression#>
    <#statements#>
} catch <#pattern 1#> {
    <#statements#>
} catch <#pattern 2#> where <#condition#> {
    <#statements#>
} catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
    <#statements#>
} catch {
    <#statements#>
}




// 2025年12月29日[月]
// その句が処理できるエラーを示すには、catch の後にパターンを記述します。
// catch 句にパターンがない場合、句は全てのエラーに一致し、エラーを error という名前のローカル定数にバインドします。
// パターンマッチングの詳細については、Patterns(パターン)を参照ください。

// 例えば、次のコードは、VendingMachineError 列挙型の 3 つのケース全てに一致します:
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("成功! おいしい。")
} catch VendingMachineError.invalidSelection {
    print("無効な選択です。")
} catch VendingMachineError.outOfStock {
    print("在庫切れです。")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("お金が足りません。あと \(coinsNeeded) コイン投入してください。")
} catch {
    print("予期しないエラー: \(error)。")
}
// お金が足りません。あと 2 コイン投入してください。




// 2025年12月30日[火]
// 例えば、上記の例は、VendingMachineError ではないエラーが代わりに呼び出し関数によってキャッチされるように記述できます:
func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch is VendingMachineError {
        print("自動販売機から買うことができませんでした。")
    }
}

do {
    try nourish(with: "Beet-Flavored Chips")
} catch {
    print("予期せぬ自動販売機とは関係ないエラーが発生: \(error)")
}
// 自動販売機から買うことができませんでした。





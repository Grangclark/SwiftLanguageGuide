
// デイニシャライゼーション(Deinitialization)

// デイニシャライザの挙動(Deinitializers in Action)
// デイニシャライザの例を次に示します。
// この例では、シンプルなゲーム用に 2 つの新しいタイプ Bank と Player を定義しています。
// Bank クラスは、流通量が最大 10,000 の架空の通貨を管理します。
// ゲーム内に存在できる Bank は 1 つのみなので、
// Bank は現在の状態を保存および管理するための型プロパティと型メソッドを持つクラスとして実装されています:
class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}


// デイニシャライゼーション(Deinitialization)

// 2025年11月22日[土]
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




// 2025年11月23日[日]
// Player クラスは、ゲーム内のプレイヤーを表します。
// 各プレイヤーは、常に一定数のコインを財布に保管しています。
// これは、プレイヤーの coinsInPurse プロパティによって表されます:
class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}




// 2025年11月24日[月]
// Player クラスは win(coins:) メソッドを定義し、銀行から一定数のコインを取得してプレイヤーの財布に追加します。
// Player クラスは、Player インスタンスの解放直前に呼び出されるデイニシャライザも実装します。
// ここで、デイニシャライザは単純にプレイヤーのすべてのコインを銀行に返します。
var playerOne: Player? = Player(coins: 100)
print("新しいプレイヤーが \(playerOne!.coinsInPurse) コイン受け取りゲームに参加しました")
// 新しいプレイヤーが 100 コイン受け取りゲームに参加しました
print("現在、銀行には \(Bank.coinsInBank) コインが残っています")
// 現在、銀行には 9900 コインが残っています




// 2025年11月25日[火]
// playerOne はオプショナルのため、
// デフォルトのコイン数を出力するためにその coinsInPurse プロパティにアクセスするとき、
// および win(coins:) メソッドが呼び出されるときはいつでも、感嘆符 (!) を付けています:
playerOne!.win(coins: 2_000)
print("PlayerOne は 2000 コインを獲得しました。そして現在 \(playerOne!.coinsInPurse) コインを持っています")
// PlayerOne は 2000 コインを獲得しました。そして現在 2100 コインを持っています
print("現在、銀行には \(Bank.coinsInBank) コインしか残っていません")
// 現在銀行には 7900 コインしか残っていません





// 2025年11月26日[水]
// ここで、プレイヤーは 2,000 コインを獲得しました。
// プレイヤーの財布には 2,100 枚のコインがあり、銀行には 7,900 枚のコインしか残っていません。
playerOne = nil
print("PlayerOne はゲームから離れました")
// PlayerOne はゲームから離れました
print("現在、銀行には \(Bank.coinsInBank) コインがあります")
// 現在、銀行には 10000 コインがあります




// 2025年11月27日[木]





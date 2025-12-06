
// 2025年11月27日[木]
// オプショナルチェーン(Optional Chaining)
// アンラップせずにオプショナル値のメンバーにアクセスする。

// オプショナルチェーンは、nil になる可能性のあるオプショナルのプロパティ、メソッド、およびサブスクリプトを照会して呼び出すためのプロセスです。
// オプショナル値に値が含まれている場合、プロパティ、メソッド、またはサブスクリプトの呼び出しは成功します。
// オプショナル値が nil の場合、プロパティ、メソッド、またはサブスクリプトの呼び出しは nil を返します。
// 複数を一気にチェーンさせることができ、ある地点で nil が返ってきた場合、オプショナルチェーン全体が失敗します。

// 強制アンラップの代替としてのオプショナルチェーン(Optional Chaining as an Alternative to Forced Unwrapping)
// nil ではない場合に呼び出したいオプショナル値のプロパティ、メソッド、またはサブスクリプトの後に疑問符(?)を配置して、オプショナルチェーンを指定します。
// これは、オプショナル値の後に感嘆符(!)を配置して、その値を強制アンラップするのによく似ています。
// 主な違いは、オプショナル値が nil の場合、オプショナルチェーンが失敗するのに対し、強制アンラップは実行時エラーを引き起こすことです。

// まず、Person と Residence という 2 つのクラスが定義されています:
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}





// 2025年11月28日[金]
// 新しい Person インスタンスを作成する場合、その residence プロパティはオプショナルなため、
// デフォルトで nil で初期化されています。
// 下記のコードでは、john の residence プロパティは nil です。
let john = Person()




// 2025年11月29日[土]
// この人の residence の numberOfRooms プロパティにアクセスしようとすると、
// residence の後に感嘆符(!)を置いてその値を強制アンラップすると、residence に値がないため、実行時エラーが発生します。
let roomCount = john.residence!.numberOfRooms
// 実行時エラーが起きます

// 上記のコードは、john.residence の値が nil 以外の場合に成功し、
// roomCount に適切な部屋数を含む Int 値を設定します。
// ただし、上に示したように、このコードは、residence が nil の場合、常に実行時エラーを引き起こします。




// 2025年11月30日[日]
// オプショナルチェーンは、numberOfRooms の値にアクセスする別の方法を提供します。
// オプショナルチェーンを使用するには、感嘆符(!)の代わりに疑問符(?)を使用します:
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Unable to retrieve the number of rooms.

// これは、オプショナルの residence プロパティを「チェーン」し、
// residence が存在する場合は numberOfRooms の値を取得するように Swift に指示します。





// 2025年12月1日[月]
// Residence インスタンスを john.residence に割り当てて、nil 値を持たないようにすることができます。
john.residence = Residence()




// 2025年12月2日[火]
// john.residence には、nil ではなく Residence インスタンスが含まれるようになりました。
// 以前と同じオプショナルチェーンを使用して numberOfRooms にアクセスすると、numberOfRooms のデフォルト値 1 を含んだ Int? が返されます:
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// John's residence has 1 room(s).




// 2025年12月3日[水]
// オプショナルチェーンモデルのクラスの定義(Defining Model Classes for Optional Chaining)
// １階層以上の深さのプロパティ、メソッド、およびサブスクリプトの呼び出しにもオプショナルチェーンを使用できます。
// これにより、複雑なモデル内の関連する型のサブプロパティまで掘り下げて、
// それらのプロパティ、メソッド、およびサブスクリプトにアクセスできるかどうかを確認できます。

// Person クラスは、以前と同じ方法で定義されています:
class Person {
    var residence: Residence?
}



// 2025年12月4日[木]
// Residence クラスは以前よりも複雑になっています。
// 今回、Residence クラスは、[Room] 型の空の配列で初期化される rooms と呼ばれる変数プロパティを定義します:
class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}




// 2025年12月5日[金]
// rooms 配列に使用される Room クラスは、name という 1 つのプロパティと、
// そのプロパティを適切な部屋名に設定するイニシャライザを持つシンプルなクラスです:
class Room {
    let name: String
    init(name: String) { self.name = name }
}




// 2025年12月6日[土]
// このモデルの最後のクラスは Address と呼ばれます。このクラスには、String? 型の 3 つのオプショナルプロパティがあります。
// 最初の 2 つのプロパティ buildingName と buildingNumber は、特定の建物を住所の一部として識別する別の方法です。
// 3 番目のプロパティ street は、その住所の通りに名前を付けるために使用されます。
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber, let street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}




// 2025年12月7日[日]
// オプショナルチェーンを通したプロパティへのアクセス(Accessing Properties Through Optional Chaining)
// Optional Chaining as an Alternative to Forced Unwrapping(強制アンラップの代替としてのオプショナルチェーン)で示されているように、
// オプショナルチェーンを使用してオプショナル値のプロパティにアクセスし、アクセスが成功したかどうかを確認できます。

// 上で定義したクラスを使用して新しい Person インスタンスを作成し、以前と同じように numberOfRooms プロパティにアクセスしてみます:
let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Unable to retrieve the number of rooms.




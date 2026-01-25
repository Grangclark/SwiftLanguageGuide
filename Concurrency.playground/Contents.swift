
// 2026年01月12日[月]
// 並行処理(Concurrency)
// Swift の言語サポートを使用せずに並行処理を書くことは可能ですが、そのコードは読みにくくなる傾向があります。
// 例えば、次のコードは写真名のリストをダウンロードし、そのリストの最初の写真をダウンロードし、その写真をユーザに表示します。
listPhotos(inGallery: "夏休み") { photoNames in
    let sortedNames = photoNames.sorted()
    let name = sortedNames[0]
    downloadPhoto(named: name) { photo in
        show(photo)
    }
}




// 2026年01月13日[火]
// 非同期関数の定義と呼び出し(Defining and Calling Asynchronous Functions)
// 関数またはメソッドが非同期だということを示すには、
// エラーをスローすることを示すために throws を使用するのと同様に、
// パラメータの後に async キーワードをその宣言に書きます。
// 関数またはメソッドが値を返す場合は、戻り値の型の矢印(->)の前に async を書いてください。
// 例えば、ギャラリ内の写真の名前を取得する方法が次のとおりです:
func listPhotos(inGallery name: String) async -> [String] {
    let result = // ... ある非同期のネットワークコード...
    return result
}



// 2026年01月14日[水]
// 例えば、下記のコードは、ギャラリ内の全ての写真名を取得し、最初の写真を表示します:
let photoNames = await listPhotos(inGallery: "夏休み")
let sortedNames = photoNames.sorted()
let name = sortedNames[0]
let photo = await downloadPhoto(named: name)
show(photo)




// 2026年01月16日[金]
func listPhotos(inGallery name: String) async throws -> [String] {
    try await Task.sleep(for: .seconds(2))
    return ["IMG001", "IMG99", "IMG0404"]
}




// 2026年01月17日[土]
// 上記のコードのバージョンの listPhotos(inGallery:) は、Task.sleep(until:tolerance:clock:) がエラーをするため、
// 非同期かつ throwing です。このバージョンの listPhotos(inGallery:) を呼び出す際は、try と await 両方書きます。
let photos = try await listPhotos(inGallery: "雨の週末")




// 2026年01月18日[日]
// 非同期関数は throwing 関数といくつか似ている点があります。
// 非同期や throwing 関数を定義する際は、async と throws を付け、呼び出し側は await と try を付けます。
// throwing 関数は他の throwing 関数を呼び出すことができるのと同じように、非同期関数は他の非同期関数を呼び出すことができます。

// しかし、重要な違いがあります。エラーをハンドリングをするために、
// エラーをスローするコードを do-catch ブロックで囲めたり、
// 他の場所でエラーをハンドリングするために、
// コードで起こったエラー保持するために Result を使うことができます。
// これらのアプローチは、エラーをスローしない関数から throwing 関数を呼び出せるようにします。 例えば、
func availableRainyWeekendPhotos() -> Result<[String], Error> {
    return Result {
        try listDownloadedPhotos(inGallery: "雨の週末")
    }
}





// 2026年01月19日[月]
// 非同期シーケンス(Asynchronous Sequences)
// 前のセクションのの listPhotos(inGallery:) は、非同期に、全ての配列の要素が取得できてから配列全体を一度にまとめて返します。
// もう 1 つの方法として、非同期シーケンス(asynchronous sequence)を使用して、
// コレクションの要素を 1 つずつ待機することができます。
// 下記では非同期シーケンスを使って配列の要素を 1 つ 1 つ取得しています:
import Foundation

let handle = FileHandle.standardInput
for try await line in handle.bytes.lines {
    print(line)
}




// 2026年01月20日[火]
// 非同期関数を並列に呼び出す(Calling Asynchronous Functions in Parallel)
// await を使用して非同期関数を呼び出すと、一度に 1 つのコードしか実行されません。
// 非同期コードが実行されている間、呼び出し側は、次のコード行を実行する前にそのコードが終了するのを待ちます。
// 例えば、ギャラリから最初の 3 つの写真を取得するには、
// 次のように downloadPhoto(named:) 関数を 3 回呼び出して、結果を待つことができます:
let firstPhoto = await downloadPhoto(named: photoNames[0])
let secondPhoto = await downloadPhoto(named: photoNames[1])
let thirdPhoto = await downloadPhoto(named: photoNames[2])

let photos = [firstPhoto, secondPhoto, thirdPhoto]
show(photos)




// 2026年01月21日[水]
// 非同期関数を並行に実行するには、let の前に async を書き、この定数を使用する度に await を書きます。
async let firstPhoto = downloadPhoto(named: photoNames[0])
async let secondPhoto = downloadPhoto(named: photoNames[1])
async let thirdPhoto = downloadPhoto(named: photoNames[2])

let photos = await [firstPhoto, secondPhoto, thirdPhoto]
show(photos)




// 2026年01月22日[木]
// タスクとタスクグループ(Tasks and Task Groups)
// タスク(task)は、プログラムの一部として非同期に実行できる作業単位です。
// 全ての非同期コードはいくつかのタスクの一部として実行されます。
// タスク自体は一度に 1 つのことしか行いませんが、複数のタスクを作成した際、
// Swift はそれらのタスクを同時に実行するためにスケジューリングします。
await withTaskGroup(of: Data.self) { group in
    let photoNames = await listPhotos(inGallery: "夏休み")
    for name in photoNames {
        group.addTask { await downloadPhoto(named: name) }
    }

    for await photo in group {
        show(photo)
    }
}




// 2026年01月23日[金]
// 上のコードリストでは、各写真はダウンロードされてから表示されるので、タスクグループは結果を返しません。
// 結果を返すタスクグループの場合は、withTaskGroup(of:returning:body:) に渡すクロージャの中に結果を蓄積するコードを追加します。
let photos = await withTaskGroup(of: Data.self) { group in
    let photoNames = await listPhotos(inGallery: "夏休み")
    for name in photoNames {
        group.addTask {
            return await downloadPhoto(named: name)
        }
    }

    var results: [Data] = []
    for await photo in group {
        results.append(photo)
    }

    return results
}




// 2026年01月24日[土]
// タスクキャンセル(Task Cancellation)
// Swift の並行処理では、協調キャンセルモデルを使用します。
// 各タスクは、実行中の適切な時点でキャンセルされたかどうかをチェックし、キャンセルに適切に応答します。
// タスクがどのような作業をしているかに応じて、キャンセルに応答することは、通常、次のいずれかを意味します:
let photos = await withTaskGroup { group in
    let photoNames = await listPhotos(inGallery: "夏休み")
    for name in photoNames {
        let added = group.addTaskUnlessCancelled {
            Task.isCancelled ? nil : await downloadPhoto(named: name)
        }
        guard added else { break }
    }

    var results: [Data] = []
    for await photo in group {
        if let photo { results.append(photo) }
    }
    return results
}




// 2026年01月25日[日]
// キャンセルの即時通知が必要な作業には、Task.withTaskCancellationHandler(operation:onCancel:))メソッドを使用します。たとえば:
let task = await Task.withTaskCancellationHandler {
    // ...
} onCancel: {
    print("キャンセルされた!")
}

// ... 少し経って...
task.cancel()  // Prints "キャンセルされた!"




// 2026年01月26日[月]
// 非構造化並行処理(Unstructured Concurrency)
// 前のセクションで説明されている構造化された並行処理のアプローチに加えて、
// Swift は非構造化並行処理(unstructured concurrency)もサポートしています。
// タスクグループの一部のタスクとは異なり、非構造化タスク(unstructured task)には親タスクがありません。
// どんな方法で使われたとしても、非構造化タスクを完全に柔軟に管理することができます。
// しかし、それらの正しい動作を保証することは完全に開発者の責任です。
let newPhoto = // ... ある写真データ ...
let handle = Task {
    return await add(newPhoto, toGalleryNamed: "Spring Adventures")
}
let result = await handle.value






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




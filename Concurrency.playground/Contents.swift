
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




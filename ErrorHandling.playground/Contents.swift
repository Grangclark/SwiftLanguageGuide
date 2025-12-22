
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




// 2025年12月21日[日]
// エラーをスローすると、予期しないことが発生し、通常の実行フローを続行できないことを示すことができます。
// エラーをスローするには、throw 文を使用します。
// 例えば、次のコードはエラーをスローして、自動販売機で 5 枚の追加のコインが必要だということを示します。
throw VendingMachineError.insufficientFunds(coinsNeeded: 5)




// 2025年12月22日[月]
// エラー処理(Handling Errors)
// スロー関数を使用したエラーの伝播(Propagating Errors Using Throwing Functions)
// 関数、メソッド、またはイニシャライザがエラーをスローできることを示すには、関数の宣言のパラメータの後に throws キーワードを記述します。
// throws でマークされた関数は、スロー関数と呼ばれます。
// 関数が戻り値の型を指定する戻り矢印 (->) の前に throws キーワードを記述します:
func canThrowErrors() throws -> String

func cannotThrowErrors() -> String




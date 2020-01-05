// ### 注意 ###
// このファイルは直接編集しないでください。
// 文言を追加・修正したい場合はLocalizable.csvを編集してから
// Localizer.appを実行してください。


internal enum Localizable {
    /// ホーム / Home 
    case home
    /// ダッシュボード / Dashboard 
    case Dash_board
    /// 現在(%@) / Today(%@) 
    case Today(String)
    /// %@から%@に変更します。\nよろしいですか？ / Change from %@ to %@. Will you? 
    case change(String, String)
    /// 処理中... (%d/%d) / Processing... (%d/%d) 
    case Progress(Int, Int)
    /// インフォメーション / Information 
    case Information
    /// 一般 / General 
    case General
    /// エラー
    case error(Error)
    /// 非推奨：ローカライズ可能な文言
    case any(String)
    /// ローカライズ済み、またはローカライズ不要の文言
    case localized(String)

    internal var localize: String {
        switch self {
        case .home: return "home".localize
        case .Dash_board: return "Dash board".localize
        case .Today(let x1): return "Today".localize(arguments: [x1])
        case .change(let x1, let x2): return "change".localize(arguments: [x1, x2])
        case .Progress(let x1, let x2): return "Progress".localize(arguments: [x1, x2])
        case .Information: return "Information".localize
        case .General: return "General".localize
        case .error(let x1): return x1.localizedDescription
        case .any(let x1): return x1.localize
        case .localized(let x1): return x1
        }
    }
}

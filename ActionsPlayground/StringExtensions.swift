//
//  StringExtensions.swift
//  ActionsPlayground
//
//  Created by 福田走 on 2020/01/04.
//  Copyright © 2020 福田走. All rights reserved.
//

import Foundation

fileprivate let failure = NSUUID().uuidString

extension String {
    var localize: String {
        let localized = NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: failure, comment: "")
        
        if localized == failure {
            print("言語変換に失敗しました: \(self)")
            return self
        }
        return localized
    }
    
    func localize(arguments: [CVarArg]) -> String {
        String(format: localize, arguments: arguments)
    }
    
}

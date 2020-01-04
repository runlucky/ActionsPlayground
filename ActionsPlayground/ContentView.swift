//
//  ContentView.swift
//  ActionsPlayground
//
//  Created by 福田走 on 2020/01/04.
//  Copyright © 2020 福田走. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(Localizable.home.localize)
            Text(Localizable.change("A", "B").localize)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

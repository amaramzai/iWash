//
//  CheckMarkPop.swift
//
//  Created by Amar Amzari on 17/04/23.
//

import SwiftUI

//create a function that could call/show the pop up checkmark whenever we need

struct CheckMarkPop: View {
    var body: some View {
        //Symbols called from "SymbolsVault" enum
        Symbols.checkmark.font(.system(.largeTitle, design: .rounded).bold())
//            .padding()
//            .foregroundColor(.white)
//            .background(.green).cornerRadius(100)
    }
}

struct CheckMarkPop_Previews: PreviewProvider {
    static var previews: some View {
        CheckMarkPop()
            .previewLayout(.sizeThatFits)
    }
}

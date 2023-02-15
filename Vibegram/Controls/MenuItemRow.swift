//
//  MenuRowItem.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct MenuItemRow: View {
    var image = "creditcard"
    var text = "My Account"
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Text(text)
                .font(.headline)
            Spacer()
        }
    }
}

struct MenuItemRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow()
    }
}

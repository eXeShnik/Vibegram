//
//  MenuTogglerButton.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct MenuToggleButton: View {
    
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        ZStack {
            Button(action: {
                self.isMenuShowing.toggle()
            }){
                HStack {
                    Spacer()
                    Image(systemName: "list.dash")
                        .foregroundColor(Color.black)
                }
                .padding(.trailing, 20)
                .frame(width: 90, height: 60)
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

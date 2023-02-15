//
//  MenuView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    var menuData = menuitems
    
    let blurEffectStyle: UIBlurEffect.Style
    
    @Binding var isMenuShowing: Bool
    
    init(_ isMenuShowing: Binding<Bool>, _ blurEffectStyle: UIBlurEffect.Style = .regular) {
        self._isMenuShowing = isMenuShowing
        self.blurEffectStyle = blurEffectStyle
    }
    
    var body: some View {
        ZStack {
            BlurView(style: blurEffectStyle)
            VStack(alignment: .leading, spacing: 20) {
                ForEach(menuData){
                    MenuItemRow(image: $0.icon, text: $0.title)
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(30)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 20)
        .rotation3DEffect(Angle(degrees: isMenuShowing ? 0 : 60), axis: (x: 0, y: 10, z: 0))
        .animation(.spring())
        .offset(x: isMenuShowing ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.isMenuShowing.toggle()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(.constant(true))
    }
}

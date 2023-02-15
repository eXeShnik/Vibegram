//
//  HomeView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var isMenuShowing = false
    @State var isProfileShowing = false
    
    var body: some View {
        return ZStack {
            
            ContentView()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 20)
                .animation(.spring(response: 0.55, dampingFraction: 0.725, blendDuration: 0))
                .offset(y: isProfileShowing ? 40 : UIScreen.main.bounds.height)
            
            MenuToggleButton($isMenuShowing)
                .offset(x: -30, y: isProfileShowing ? 0 : 80)
                .animation(.spring(response: 0.55, dampingFraction: 0.725, blendDuration: 0))
            
            ZStack {
                HStack {
                    CircleActionButton(action: {
                        self.isProfileShowing.toggle()
                    }, image: "person.crop.circle")
                    
                    CircleActionButton(action: {
                        self.isMenuShowing.toggle()
                    }, image: "bell.fill")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .animation(.spring(response: 0.55, dampingFraction: 0.725, blendDuration: 0))
            .offset(x: -16, y: isProfileShowing ? 0 : 88)
            
            
            MenuView($isMenuShowing, .extraLight)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

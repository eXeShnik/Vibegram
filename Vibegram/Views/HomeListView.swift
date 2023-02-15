//
//  HomeListView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 14.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct HomeListView: View {
    
    @State var popOverState = false
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Gavno")
            })
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 3) { item in
                        GeometryReader{ geometry in
                            CourseView()
                        }
                        .frame(width: 246, height: 360)
                    }
                    
                }
            }
            Spacer()
            //            CourseView()
            //                .onTapGesture {
            //                    self.popOverState.toggle()
            //            }.popover(isPresented: self.$popOverState, content: {
            //                ContentView()
            //            })
        }
    }
}

struct HomeListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}

struct CourseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Build an app with SwiftUI")
                .font(.title)
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .lineLimit(4)
                .padding(20)
                .frame(width: 150)
            Spacer()
            Image("Illustration1")
                .renderingMode(.original)
        }
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color("backgroundShadow3") ,radius: 20, x: 0, y: 20)
    }
}

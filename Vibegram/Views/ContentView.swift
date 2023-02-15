//
//  ContentView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 05.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var showText = false
    @State var bottomTextState = CGSize.zero
    
    var body: some View {
        ZStack {
            
            TitleView()
                .blur(radius: showText ? 20 : 0)
                .animation(.default)
            
            CardBlue()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
                .animation(.spring())
                .blendMode(.hardLight)
            
            CardBlue()
                .offset(x: 0, y: -20)
                .scaleEffect(0.90)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
                .blendMode(.hardLight)
                .animation(.spring())
            
            CertificatedView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .animation(.spring())
                .onTapGesture {
                    self.show.toggle()
            }
            
            CradBottomView()
                .offset(y: 600)
                .animation(.spring())
                .onTapGesture {
                    self.showText.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardBlue: View {
    var body: some View {
        VStack{
            Text("Text")
        }
        .frame(width: 340, height: 220)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

struct CertificatedView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello, World!")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Placeholder")
                        .foregroundColor(.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(.horizontal)
            Spacer()
            Image("Background")
        }
        .frame(width: 340, height: 220)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 20)
    }
}

struct TitleView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Title")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Spacer()
            }
            Image("Illustration5")
            Spacer()
        }.padding()
    }
}

struct CradBottomView: View {
    var body: some View {
        VStack(spacing: 20){
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3)
                .opacity(0.1)
            
            Text("This certifica dasdjkasdjkaskdaks daksjd lkasjdklsajdaskjdljasjdalsjdkasjl djaskdjlasjdlkasjdkljas ldjasljdklasj")
                .lineLimit(10)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
    }
}

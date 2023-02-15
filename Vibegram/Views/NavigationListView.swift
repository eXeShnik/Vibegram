//
//  MenuListView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 19.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    @State var isSheetShowing = false
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<25) { item in
                    NavigationLink(destination: Text("1"), label: {
                        Text("Navigation")
                    })
                }
            }
            .navigationBarTitle("Test")
            .navigationBarItems(leading: EditButton(), trailing:
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        self.isSheetShowing.toggle()
            })
        }.sheet(isPresented: $isSheetShowing, onDismiss: {
            self.isSheetShowing = false
        }, content: {ContentView()})
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

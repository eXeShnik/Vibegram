//
//  HomeTabView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 27.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem({
                    Image(systemName: "minus")
                    Text("Home")
                })
                .tag(0)
            ContentView()
                .tabItem({
                    Image(systemName: "plus")
                    Text("Main")
                })
                .tag(1)
            SettingsView()
                .tabItem({
                    Image(systemName: "divide")
                    Text("Main")
                })
                .tag(2)
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
        //            .environment(\.colorScheme, .dark)
    }
}

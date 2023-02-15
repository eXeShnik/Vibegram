//
//  Menu.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import Foundation

struct Menu : Identifiable {
    var id = UUID()
    var title: String
    var icon: String
}

let menuitems = [
    Menu(title: "My Account", icon: "person.crop.circle"),
    Menu(title: "Billing", icon: "creditcard"),
    Menu(title: "My Team", icon: "person.and.person"),
    Menu(title: "Sign out", icon: "arrow.uturn.down"),
]

//
//  CircleActionButton.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 08.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct CircleActionButton: View {
    var action: () -> Void = { }
    var image = ""
    var body: some View {
        Button(action: action){
            HStack {
                Image(systemName: image)
                    .foregroundColor(Color.black)
            }
            .frame(width: 40, height: 40)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
        }
    }
}

struct CircleActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleActionButton()
    }
}

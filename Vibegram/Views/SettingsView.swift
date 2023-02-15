//
//  SettingsView.swift
//  Vibegram
//
//  Created by Vitalii Overchuk on 27.09.2020.
//  Copyright © 2020 Vitalii Overchuk. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @State var receiveNotification = false
    @State var maxNotificationCount = 10
    @State var selectedPanos = 1
    @State var date = Date()
    @State var email = ""
    @State var isAlertShowing = false
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $receiveNotification){
                    Text("Receive notifications")
                }
                Stepper(value: $maxNotificationCount, in: 1...20, label: {
                    Text("Maximum notifications \(maxNotificationCount)")
                })
                Picker(selection: $selectedPanos, label: Text("Panos 3"), content: {
                    Text("1").tag(1)
                    Text("2").tag(2)
                })
                DatePicker(selection: $date){
                    Text("Panos 4")
                }
                Section (header: Text("Panos section")
                    .font(.system(size: 20))
                    .fontWeight(.bold)){
                    TextField("Email", text: $email)
                }
                Button(action: {self.isAlertShowing.toggle()}){
                    Text("Submit")
                }
            }
            .alert(isPresented: $isAlertShowing, content: {
                Alert(title: Text("Success"))
            })
                .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

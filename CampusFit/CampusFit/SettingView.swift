//
//  SettingView.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/21/23.
//

import SwiftUI

struct SettingView: View {
    
    
    
    @State private var toggleNotifications = true
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account")) {
                    NavigationLink(destination: AccountView()) { Label("User", systemImage: "person.circle.fill")}
                    HStack {
                        Spacer()
                        Button("Log Out") {
                            ContentView()
                        }.foregroundColor(.red).fontWeight(.bold)
                        Spacer()
                    }
                }
                
                Section(header: Text("Notification")) {
                    Toggle("Enable", isOn: $toggleNotifications)
                    NavigationLink(destination: NotificationView()) {
                        Label("Notification", systemImage: "bell.and.waves.left.and.right")
                    }
                    }
                


            }.navigationTitle("Setting")
            
        }
    }
}


struct AccountView : View {
    
    var body: some View {
        NavigationView {
            Form {
                
            }
        }.navigationTitle("Account")
    }
}


struct NotificationView : View {
    var body: some View {
        NavigationView {
            Form {
                
            }
        }.navigationTitle("Notifcations")
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

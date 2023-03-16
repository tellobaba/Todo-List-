//
//  ContentView.swift
//  Todo List
//
//  Created by Oluwatomiwa on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            NavigationView{
                TaskListView()
            }
            .tabItem{
                    Image("Checked Checkbox")
                        .renderingMode(.template)
                }
            InboxView()
                .tabItem{
                    Image("Remainder")
                        .renderingMode(.template)
                }
            RemainderView()
                .tabItem{
                    Image("Timer")
                        .renderingMode(.template)
                }
            SettingsView()
                .tabItem{
                    Image("Settings")
                        .renderingMode(.template)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

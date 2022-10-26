//
//  Tabs.swift
//  NavigationView
//
//  Created by MubarakAlsaif on 26/10/2022.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            FirstScreen()
                .badge(1)
                .tabItem {
                    Label("First Screen", systemImage: "house")
                }
            SecondScreen()
                .badge("!")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}

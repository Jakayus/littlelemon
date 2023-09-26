//
//  Home.swift
//  LittleLemon
//
//  Created by Joel Sereno on 9/25/23.
//

import SwiftUI

struct Home: View {
    
    @State private var tabSelection = 1
    
    var body: some View {
        // Default TabView Template for now
        TabView(selection: $tabSelection) {
            Menu()
                .tabItem { Label("Menu", systemImage: "list.dash") }
                .tag(1)
            Text("Tab Content 2")
                .tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }
                .tag(2)
        }
        .navigationBarBackButtonHidden(true) // hide back button on home screen
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

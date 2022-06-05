//
//  ContentView.swift
//  AFL 4
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "Agents"
    
    var body: some View{
        TabView(selection: $selectedTab) {
            AgentsView()
                .tabItem(){
                    Label("Agents", systemImage: "star")
                }
            
            ProfilePage()
                .tabItem(){
                    Label("Profile", systemImage: "person")
                }
                .tag("Profile")
                }
            }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

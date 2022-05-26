//
//  TabViewUi.swift
//  AFL 4
//
//  Created by Macbook Pro on 26/05/22.
//

import SwiftUI

struct Agents: View {
    @State private var selectedTab = "Agents"
    @State private var searchText = ""
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Trending Now")
                    Spacer()
                    }
                ScrollView(.horizontal){
                    HStack{
                        Image("Frame 79")
                        Image("Frame 80")
                    }
                }
                HStack{
                    Text("Agents")
                    Spacer()
                }
                Text("Search \(searchText)")
                    .searchable(text: $searchText, prompt: "Search Agent")
                    .navigationTitle("Searchle Example")
                NavigationView{
                    
                }
                .background(.black)
             }
            }
                .padding(5)
    }
}





struct Agents_Previews: PreviewProvider {
    static var previews: some View {
        Agents()
    }
}

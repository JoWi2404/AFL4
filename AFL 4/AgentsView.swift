//
//  TabViewUi.swift
//  AFL 4
//
//  Created by Macbook Pro on 26/05/22.
//

import SwiftUI

struct AgentsView: View {
    @StateObject var viewModel = ViewModel()
    @State private var selectedTab = "Agents"
    @State private var searchText = ""
    var body: some View {
        NavigationView{
        ScrollView{
            VStack{
                HStack{
                    Text("Trending Now")
                        .font(.title)
                        .padding(3)
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
                        .font(.title2)
                        .padding()
                    Spacer()
                }
                ScrollView{
                    HStack {
                        TextField("Search Agent", text: $searchText)
                            }
                    .padding()
                    .background(Color(. systemGray3))
                    .cornerRadius(12)
                    .padding(.horizontal )
                    ForEach (viewModel.models.data, id: \.uuid){
                        num in
                        HStack{
                            AsyncImage(url: URL(string: num.displayIconSmall)){ image in
                                image.resizable()
                            } placeholder: {
                                Color.black
                            }
                            .frame(width: 64, height: 64)
                            .padding()
                            Text(num.displayName)
                            Spacer()
                            
                        }
                        Divider()
                            .background(Color(.systemGray4))
                            .padding(.leading)
                    }
                }
                .onAppear{
                    viewModel.fetch()
                }
//                    VStack {
//                        Text("Search \(searchText)")
//                            .searchable(text: $searchText)
//                        .navigationTitle("Searchle Example")
//                    }
                }
//                .background(.black)
             }
            
        .navigationBarTitle("Agents")
        .navigationBarHidden(true)
            }
    }
}





struct AgentsView_Previews: PreviewProvider {
    static var previews: some View {
        AgentsView()
    }
}

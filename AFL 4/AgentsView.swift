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
                        ForEach(viewModel.models.data.filter{agent in
                            agent.displayName.hasPrefix(searchText) || searchText == ""
                        }, id: \.uuid){
                            num in
                            NavigationLink{
                                ScrollView{
                                    VStack{
                                        AsyncImage(url: URL(string: num.fullPortraitV2 ?? "")){
                                            image in
                                            image.resizable()
                                                .frame(width: 400, height: 400)
                                        } placeholder: {
                                            Color.black
                                        }
                                        Text("Description")
                                            .font(.title)
                                        Text(num.description)
                                        Text("Role")
                                            .font(.title)
                                        HStack{
                                            AsyncImage(url: URL(string:num.role?.displayIcon ?? "")){
                                                image in
                                                image.resizable()
                                                    .frame(width: 50, height: 50)
                                            } placeholder: {
                                                Color.black
                                            }
                                            
                                            Text((num.role?.displayName.rawValue) ?? "")
                                        }
                                        VStack{
                                            Text("Abilities").font(.title)
                                            HStack{
                                                Text(num.abilities[0].displayName)
                                                AsyncImage(url: URL(string: num.abilities[0].displayIcon ?? "")){
                                                    image in
                                                    image.resizable()
                                                        .frame(width: 50, height: 50)
                                                } placeholder: {
                                                    Color.black
                                                }
                                            }
                                            Text(num.abilities[1].description)
                                            HStack{
                                                Text(num.abilities[1].displayName)
                                                AsyncImage(url: URL(string: num.abilities[1].displayIcon ?? "")){
                                                    image in
                                                    image.resizable()
                                                        .frame(width: 50, height: 50)
                                                } placeholder: {
                                                    Color.black
                                                }
                                            }
                                            Text(num.abilities[1].description)
                                            HStack{
                                                Text(num.abilities[2].displayName)
                                                AsyncImage(url: URL(string: num.abilities[2].displayIcon ?? "")){
                                                    image in
                                                    image.resizable()
                                                        .frame(width: 50, height: 50)
                                                } placeholder: {
                                                    Color.black
                                                }
                                            }
                                            Text(num.abilities[2].description)
                                            HStack{
                                                Text(num.abilities[3].displayName)
                                                AsyncImage(url: URL(string: num.abilities[3].displayIcon ?? "")){
                                                    image in
                                                    image.resizable()
                                                        .frame(width: 50, height: 50)
                                                } placeholder: {
                                                    Color.black
                                                }
                                            }
                                            Text(num.abilities[3].description)
                                        }
                                    }
                                    .background(.red)
                                }
                            } label: {
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

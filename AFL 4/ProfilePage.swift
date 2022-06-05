//
//  HomePage.swift
//  AFL 4
//
//  Created by Macbook Pro on 26/05/22.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        ScrollView{
            ZStack{
                Image("Logo")
                    .resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 400)
                Image("Sage_artwork(1)")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(radius: 20)
                    .offset(y : 90)
            }
            VStack{
                Text("JoWi")
                    .font(.title2)
                    .offset(y : 50)
            }
            HStack{
                Text("Account Information")
                    .offset(y: 70)
                    .padding(10)
                Spacer()
            }
            HStack{
                Text("Kills 128 Deaths 69 Assist 110")
                    .offset(y : 80)
            }
            HStack {
                Spacer()
                VStack{
                    Text("Current Rank")
                    Image("platinum")
                    Text("Platinum lll")
                }
                .offset(y : 100)
                VStack{
                    Text("Highest Rank")
                    Image("platinum")
                    Text("Platinum lll")
                    
                }
                .offset(y : 100)
                Spacer()
                
            }
            HStack{
                Text("Career")
                    .offset(y : 150)
                Spacer()
                    
            }
            ScrollView(.horizontal){
                HStack{
                    Image("Frame 77")
                    Image("Frame 78")
                        
                }
                .padding(.top, 150)
                
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}

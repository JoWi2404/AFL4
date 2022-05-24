//
//  HomePage.swift
//  AFL 4
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI



struct HomePage: View {
    
    @State private var search = ""
    var body: some View{
        VStack{
            HStack {
                NavigationView {
                    Form{
                        Section{
                            
                        }
                    }
                }
                Text("TRENDING NOW")
                Spacer()
            }
            .padding()
            ScrollView(.horizontal) {
                HStack{
                    Image("Frame 79")
                    Image("Frame 80")
                }
            }
            HStack(){
                Text("Agent")
                Spacer()
            }
            .padding()
            Spacer()
            HStack{
                Form {
                    
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

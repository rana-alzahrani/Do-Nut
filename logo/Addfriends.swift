
//
//  AddFriend-7View.swift
//  Do-nut(5-8)
//
//  Created by shorouq khallaf on 23/05/1444 AH.
//

import SwiftUI

struct Addfriends: View {
    @State private var searchText = ""
    let friends = ["Nawal"]
    var body: some View {
        NavigationView{
            List{
                
                ForEach(friends, id: \.self){ friend in
                    NavigationLink(destination: Text(friend)){
                        Text(friend)
                    }
                }
                Button("Add friend") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(width: 310, height: 53)
                .background(Color("Lbutton"))
                .foregroundColor(Color.white)
                .cornerRadius(22)
                
               
                
            }.navigationTitle("Add friends")
            .searchable(text: $searchText)
            
//                Color("backg")
//                    .ignoresSafeArea()
//                RoundedRectangle(cornerRadius: 0)
//                    .frame(width: 393, height: 150)
//                    .foregroundColor(Color.white)
//                    .padding(.bottom, 700)
//                    .ignoresSafeArea()
//                Text("Add friends")
//                    .font(.title)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(.black)
//                    .padding(.bottom, 800)
                
            
        }
    }
//    var results: [String]{
//        if searchText.isEmpty{
//            return friends
//        }else{
//            return friends.filter {$0 .contains(searchText)}
//        }
//    }
}

struct Addfriends_Previews: PreviewProvider {
    static var previews: some View {
        Addfriends()
    }
}

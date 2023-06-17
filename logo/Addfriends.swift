

//  AddFriend-7View.swift
//  Do-nut(5-8)

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
        }
    }
}

struct Addfriends_Previews: PreviewProvider {
    static var previews: some View {
        Addfriends()
    }
}

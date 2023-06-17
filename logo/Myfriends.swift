
//  MyFriends-6View.swift
//  Do-nut(5-8)


import SwiftUI

struct Myfriends: View {
    @State private var searchText = ""
    let friends = ["Nawal", "Hind", "Lina","Nawal","Lina","Ali"]
    var body: some View {
        NavigationView{
            List{
                ForEach(results, id: \.self){ friend in
                    NavigationLink(destination: Text(friend)){
                        Text(friend)
                    }
                }
                NavigationLink(destination: ChallenegFriend(), label: {Text("Challenge a friend")
                        .frame(width : 310, height: 53)
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .background(Color("Color2"))
                        .cornerRadius(22)
                    .padding(5)})
            }
            .navigationTitle("My friends")
            .searchable(text: $searchText)
            ZStack{
                Color("backg")
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 393, height: 120)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 650.0)
                    .ignoresSafeArea()
                Text("My friends")
                    .font(.title)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.bottom, 700.0)
                Button("Start a New Challange") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(width: 264, height: 53)
                .background(Color("Lbutton"))
                .foregroundColor(Color.white)
                .cornerRadius(22)
                .padding(.top, 550.0)
            }
        }
    }
    var results: [String]{
        if searchText.isEmpty{
            return friends
        }else{
            return friends.filter {$0 .contains(searchText)}
        }
    }
}

struct Myfriends_Previews: PreviewProvider {
    static var previews: some View {
        Myfriends()
    }
}


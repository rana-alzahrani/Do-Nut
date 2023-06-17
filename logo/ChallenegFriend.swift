

//  Atheerpage.swift
//  challengefriend

import SwiftUI

struct ChallenegFriend: View {
    @State private var  challenge: String = ""
    init() {
        UITabBar.appearance().backgroundColor = UIColor(.white)
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color.init("FirstColor").ignoresSafeArea()
                ZStack{
                    RoundedRectangle(cornerRadius:10 ).fill(.white)
                        .frame(width: 2000, height: 200)
                        .offset(x:-100,y:-400)
                    HStack{
                        Text("Challange My friend")
                            .font(.system(size:20))
                            .offset(x:45,y:-330)
                        NavigationLink(destination: Settings(), label: {Image("settings")
                                .resizable()
                                .frame(width: 70, height: 70)
                        }).offset(x:65, y:-350)
                    }
                }
                ZStack{
                    Color.init("FirstColor")
                    TabView
                    {
                        //first page
                        VStack{
                            VStack{
                                Text("Days:21")
                                    .offset(y:-240)
                                ContentView()
                                    .frame(width:20, height: 30)
                                    .offset(y:-150)
                                Text("User Name 1")
                                    .fontWeight(.thin)
                                    .offset(y:-70)
                            }
                            Divider()
                                .offset(y:-50)
                            VStack{
                                ContentView()
                                    .frame(width: 30, height: 30)
                                .offset(y:70)}
                            Text("User Name 2")
                                .fontWeight(.thin)
                                .offset(y:150)
                        }    // end of first page
                        //start second page
                        newPage()
                        //end second page
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .cornerRadius(30)
                
                .frame(width: 380, height: 650)
                .padding(10)
                .offset(x:-00,y:70)
            }.ignoresSafeArea()
        }
    }
}
struct ChallenegFriend_Previews: PreviewProvider {
    static var previews: some View {
        ChallenegFriend()
    }
}








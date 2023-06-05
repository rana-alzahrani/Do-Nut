//
//  ContentView.swift
//  Do-nut(5-8)

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("backg")
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 393, height: 120)
                    .foregroundColor(Color.white)
                    .ignoresSafeArea()
                    .padding(.bottom, 700.0)
                    .ignoresSafeArea()
                Text("My profile")
                    .font(.system(size:30))
                    .font(.title)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.bottom, 700.0)
                VStack{
                    Text("Username")
                        .padding(.bottom, 550)
                }
                VStack{
                    Image("Donut")
                        .resizable()
                        .frame(width:200 ,height: 200)
                        .shadow(color: Color.gray.opacity(10),
                                radius: 8,x: 0,y: 2)
                }
                .padding(.bottom, 200.0)
                VStack{
                    NavigationLink(destination:  Myfriends() , label: {
                        Text("My friends")
                            .frame(width: 264, height: 53)
                            .background(Color("Lbutton"))
                            .foregroundColor(Color.white)
                        .cornerRadius(22)})
                    NavigationLink(destination: MyAchievements() , label: {
                        Text("My achievements")
                            .frame(width: 264, height: 53)
                            .background(Color("Lbutton"))
                            .foregroundColor(Color.white)
                            .cornerRadius(22)
                    })
                }.padding(.top, 200.0)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}


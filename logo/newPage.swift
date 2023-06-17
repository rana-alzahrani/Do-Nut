

//  newPage.swift
//  dountFinal


import SwiftUI

struct newPage: View {
    var body: some View {
        Color.init("gray1").ignoresSafeArea()
            .overlay (Text(" Start a new challange").fontWeight(.thin)
                .font(.system(size: 25))
                .offset(x:00,y:-90)
            )
            .overlay(Button("+") {
            }.foregroundColor(.init("orange1"))
            ).fontWeight(.bold)
            .font(.system(size: 60)
            )
            .shadow(radius:1)
    }}
struct newPage_Previews: PreviewProvider {
    static var previews: some View {
        newPage()
    }
}

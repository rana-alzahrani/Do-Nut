
//  ContentView.swift
//  challengefriend

import SwiftUI

struct ContentView: View {
    var body: some View {
        home()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct home : View {
    let colors = [Color("Color"),Color("Color1")]
    @State var progress : CGFloat = 0
    var body: some View {
        VStack {
            Meter(progess: self.$progress)
            HStack(spacing: 25){
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)){
                        if self.progress != 100{
                            self.progress += 10
                        }
                    }
                }) {
                    Text("Update")
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width  - 100) / 2)
                }
                .background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing),lineWidth: 2))
                .offset(x:10,y:10)
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)){
                        self.progress = 0
                    }
                }){
                    Text("Reset")
                        .padding(.vertical ,10)
                        .frame(width: (UIScreen.main.bounds.width  - 100) / 2)
                }
                .background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing),lineWidth: 2))
                .offset(x:10,y:10)
            }
            .padding(.top, 55)
        }
    }
}

struct Meter : View {
    let colors = [Color("Color"),Color("Color1")]
    @Binding var progess : CGFloat
    var body: some View{
        ZStack{
            ZStack{
                Circle()
                    .trim( from: 0, to: 0.5)
                    .stroke(Color.black.opacity(0.1), lineWidth: 20)
                    .frame(width: 200, height: 200)
                Circle()
                    .trim( from: 0, to: self.setProgress())
                    .stroke(AngularGradient (gradient: .init(colors: self.colors), center: .center, angle: .init(degrees: 180)) ,lineWidth: 20)
                    .frame(width: 200, height: 200)
            }
            .rotationEffect(.init( degrees: 180))
            ZStack(alignment: .bottom) {
                self.colors[1]
                    .frame(width: 2 , height: 95 )
                Image("final2")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50,height: 50)
            }
            .offset(y: -35)
            .rotationEffect(.init(degrees: -90))
            .rotationEffect(.init(degrees: self.setArrow()))
        }
        .padding(.bottom, -140)
    }
    func setProgress()->CGFloat{
        let temp = self.progess / 2
        return temp * 0.01
    }
    func setArrow()->Double{
        let temp = self.progess / 100
        return Double(temp * 180)
    }
}

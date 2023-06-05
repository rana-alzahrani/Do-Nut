

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack{
                        NavigationLink(destination: Profile(), label: {Image("profile")
                                .resizable()
                                .frame(width: 70, height: 70)
                        }).offset(x:-35)
                        Text("Welcome")
                            .font(.largeTitle)
                            .padding(.trailing)
                            .offset(x:-60)
                    }.offset(x: -50,y:-120)
                    HStack{
                        Spacer()
                        Text("Take a small step every day")
                            .font(.title)
                        Image("Image")
                            .resizable()
                            .frame(width: 180 , height: 180)
                            .offset(x: -30,y: -30)
                    }
                    Text("Do-nut stop keep it up !")
                        .font(.title)
                        .foregroundColor(.orange)
                        .padding()
                    NavigationLink(destination: Challenge(), label: {Text("Challenge Myself")
                            .frame(width : 264, height: 53)
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .background(Color("Color2"))
                            .cornerRadius(22)
                        .padding(5)})
                    NavigationLink(destination: ChallenegFriend(), label: {Text("Challenge a friend")
                            .frame(width : 264, height: 53)
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .background(Color("Color2"))
                            .cornerRadius(22)
                        .padding(5)})
                }
            }
        }
    }
}
struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}


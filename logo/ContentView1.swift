

import SwiftUI

struct Logo: View {
    @State private var showMainView = false
    @State private var angle: Double = 360
    @State private var opacity: Double = 3
    @State private var scale: CGFloat = 1
    @State private var isActive = false
    
    var body: some View {
        Group {
            NavigationView {
                if showMainView {
                    Homepage()
                } else {
                    ZStack{
                        Color("background")
                            .edgesIgnoringSafeArea(.all)
                        Image("Image")
                            .resizable()
                            .frame(width: 180 , height: 180)
                            .rotation3DEffect(
                                .degrees(angle)
                                , axis: (x: 0.0, y: 1.0, z: 0.0))
                            .opacity(opacity)
                            .scaleEffect(scale)
                            .padding()
                        Text("Do-nut stop keep it up !")
                            .font(.title)
                            .foregroundColor(.orange)
                            .padding(.top, 350.0)
                    }.onAppear
                    {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0)
                        {
                            self.isActive = true
                        }
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+3){
                    withAnimation(.linear(duration: 20)){
                        angle = 0
                        scale = 3
                        opacity = 0
                        showMainView = true
                    }
                }
            }
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}


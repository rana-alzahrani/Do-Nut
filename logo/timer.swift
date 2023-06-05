
//
//  timer.swift
//  dountFinal
//
//  Created by leena alajlani on 20/12/2022.
//

import SwiftUI
import UserNotifications


struct timer: View {
    var body: some View {
        Home()
    }
}

struct timer_Previews: PreviewProvider {
    static var previews: some View {
        timer()
    }
}
struct Home : View {
    
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var timeRemaining = 1500
    @State var timer = Timer.publish(every:1 , on: .main, in: .common).autoconnect()
    
    func convertSecondsToTime(timerInSeconds : Int) ->
       String {
           let minutes = timerInSeconds  / 60
          let seconds = timerInSeconds  % 60
        return  String (format: "%02i:%02i" , minutes , seconds)
            
       }
    var body: some View{
        
        ZStack{
            
            Color.init("FirstColor").edgesIgnoringSafeArea(.all)
            
            VStack{
                
                
                
                
                
                ZStack{
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 280, height: 280)
    
                   
                        
                            Circle()
                                .trim(from: 0, to: self.to)
                                .stroke(Color.init("purple1"), style: StrokeStyle(lineWidth: 35, lineCap:.round))
                                .frame(width: 280, height: 280)
                                .rotationEffect(.init(degrees: -90))
                                .overlay(
                                              Image("final")
                                                .resizable()
                                                .frame(width: 50,height: 50)
                                                    .offset(y:-20)
                                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                                    .rotationEffect(Angle(degrees: 360 * Double(self.to)))                                            )
                            
                            
                      
                    
                    
                    
                                 VStack{
                      
                                    Text("\(convertSecondsToTime(timerInSeconds:count))")
                                    .font(.system(size: 65))
                                    .fontWeight(.bold)
                                     
                                     
                                     Text("Days:21")
                                         .offset(y:15)
                        
                        Text("of 25")
                            .font(.title)
                            .padding(.top)
                    }
                    
                } //ZStack-1
                HStack(spacing: 20){
                   Button(action: {
                        
                      if self.count == 1500 {
                         self.count = 0
                         withAnimation(.default){
                              self.to = 0
                          }
                       }
                        self.start.toggle()
                        
                    }){
                        HStack(spacing: 15){
                            
                            Image(systemName: self.start ? "pause.fill" : "play.fill")
                                .foregroundColor(.white)
                            Text(self.start ? "pause" : "play")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                        .background(Color.init("purple1"))
                        .clipShape(Capsule())
                        .shadow(radius: 6)
                    }
                    
                    
                    Button(action: {
                        
                        self.count = 0
                        withAnimation(.default){
                            self.to = 0
                        }
                        
                    }){
                        HStack(spacing: 15){
                            
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.init("purple1"))
                            
                            Text("Restart")
                                .foregroundColor(.init("purple1"))
                        }
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 55)

                        .background(
                            Capsule()
                                .stroke(Color.init("purple1"), lineWidth: 2)
                        )
                        .shadow(radius: 6)
                    }
                    
                }
                .padding(.top, 55)
            }
            
        }
        
        .onAppear(perform: {
            UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.sound,.alert]) { (_ ,  _) in
            }
        })
        
        .onReceive(self.timer) { ( _) in
            if self.start{
                if self.count != 1500{
                    
                    self.count += 1
                    print("hello")
                    withAnimation(.default){
                        self.to = CGFloat(self.count) / 1500
                    }
                }
                else{
             
                    self.start.toggle()
                    self.Notify()
                }
            }
     
        }//.on
    }
    func Notify(){
    
        let content = UNMutableNotificationContent()
        content.title = " Message"
        content.body = "Good Job for today!,Do-Nut Stop until you're proud"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let req = UNNotificationRequest(identifier: "MSG", content: content , trigger: trigger)
        
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
    
}


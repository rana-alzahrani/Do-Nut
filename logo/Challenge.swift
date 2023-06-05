//
//  ContentView.swift
//  dountFinal
//
//  Created by leena alajlani on 20/12/2022.
//

import SwiftUI

struct Challenge: View {
    
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
                      
                        
                        Text("Challange Myself")
                            .font(.system(size:20))
                            .offset(x:45,y:-330)
                        
                        NavigationLink(destination: Settings(), label: {Image("settings")
                                .resizable()
                                .frame(width: 70, height: 70)
                        }).offset(x:65, y:-350)
                        
                    }
                }//HStack-1
                ZStack{
                    Color.init("FirstColor")
                    
                    
                    TabView
                    {
                        
                        
                        //first page
                        timer()
                        // end of first page
                        //start second page
                        newPage()
                        //end second page
                        
                        
                        
                        
                        
                        
                    }}
                
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

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}


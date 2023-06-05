
//
//  ContentView.swift
//  page19-22
//
//  Created by Monirah aljarrah on 14/05/1444 AH.
//

import SwiftUI

struct Settings: View {
    @State var challangename: String = ""
    @State private var workIndex = 0
    @State private var breakIndex = 0
    @State var rewardename: String = ""
    @State private var challangedays: Int = 1
    var workOptions = ["10", "15","20", "25","30","35", "40","45","50", "55","60"]
    
    var breakOptions = ["0", "5","10", "15","20","25", "30"]
    
    
    var body: some View {
        
        ZStack{
            
            NavigationView {
                
                
                
                
                
                Form {
                    
                    TextField("Write your challange name", text: $challangename)
                    
                    
                    
                    Picker(selection: $workIndex, label: Text("Work interval")) {
                        ForEach(0 ..< workOptions.count) {
                            Text(self.workOptions[$0])
                        }
                    }
                    
                    Picker(selection: $breakIndex, label: Text("Shor Break")) {
                        ForEach(0 ..< breakOptions.count) {
                            Text(self.breakOptions[$0])
                        }
                    }
                    
                    Picker("Days", selection: $challangedays) {
                        ForEach(1...30, id: \.self) { challangedays in
                            Text("\(challangedays)")
                        }
                    }

                    TextField("Write your reward", text: $rewardename)
                    
                    Label("Delete Challange", systemImage: "trash")
                        .foregroundColor(.red)
                        .padding(.leading , 60)
                        .onTapGesture {
                            print("delete data from array")
                            challangename = ""
                            rewardename = ""
                        }
                    
                    NavigationLink(destination: Challenge(), label: {Text("Save")

                            .font(.title)
                            .foregroundColor(.blue)
                            .background(.white)
                            .cornerRadius(22)
                            .padding(.leading,120)
                    })
                    
                   
                }
                
                
                
                
                
            }.navigationBarTitle("Settings")
            
        }
        
        
        
    }
    
    
    
}








struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}


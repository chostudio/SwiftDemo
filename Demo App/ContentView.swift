//
//  ContentView.swift
//  Demo App
//
//  Created by Chris Ho on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showDetails = true
    
    
    var body: some View {
        VStack {
            Text("Whispr")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
            
            Button(action: {
                self.showDetails.toggle()
            }){
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .frame(width: 100,height: 100 )
                    .foregroundColor(Color.blue)
            }
//            TODO: when button clicked turn red
//            when button clicked remove text
            if showDetails {
                Text("Click to start recording")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            
        }
        .padding()
        //options where to send after recording
        HStack{
            Text("Send text via message")
//            message.fill
//            square.and.arrow.up
            Text("Send text via ")
            
            
        }
        //bottom bar
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "info.square")
                    Text("Info")
                }
            InfoView()
                .tabItem {
                    Image(systemName: "info.square")
                    Text("Info")
                }
        }
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

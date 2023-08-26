//
//  ContentView.swift
//  Demo App
//
//  Created by Chris Ho on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Whispr")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
            
            Image(systemName: "mic.circle.fill")
                .resizable()
//                .imageScale(.medium)
                .frame(width: 100,height: 100 )
                .foregroundColor(Color.blue)
                
                //when clicked turn red
            Text("Click to start recording")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding()
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
        //        info.square
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

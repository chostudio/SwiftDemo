//
//  RecordingView.swift
//  Demo App
//
//  Created by Chris Ho on 6/19/23.
//

import SwiftUI

struct RecordingView: View {
    
    @State var showDetails = false
    
    
    var body: some View {
        VStack {
            Text("iWhisper")
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
            if !showDetails {
                Text("Click to start recording")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            HStack{
                Text("Send text via message")
    //            message.fill
    //            square.and.arrow.up
                Text("Send text via ")
        }
        .padding()
        //options where to send after recording
        
            
            
        }
       
        
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
}

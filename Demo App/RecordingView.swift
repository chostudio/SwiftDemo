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
                //better way to change color?
                if !showDetails{
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .frame(width: 100,height: 100 )
                    .foregroundColor(Color.blue)
                }
                else{
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .frame(width: 100,height: 100 )
                    .foregroundColor(Color.red)
                }
                    
            }
//
            if !showDetails {
                Text("Click to start recording")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            else{
                Text("Click to stop recording")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            //options where to send after recording
            HStack(spacing: 0){
                
                VStack{
                    Image(systemName: "plus.message.fill")
                        .padding()
                    Text("Send text as message")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        
                }
                .padding()
                
                VStack{
                    Image(systemName: "square.and.arrow.up")
                        .padding()
                    Text("All Sharing Options")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .padding()
                
                VStack{
                    Image(systemName: "note.text.badge.plus")
                        .padding()
                    Text("Save text to notes")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
        .padding()
        
        
            
            
        }
       
        
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
}

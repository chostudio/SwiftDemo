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
		  
		  Button(action: {
			// Code to be executed when the button is tapped
			print("Button tapped!")
		  }) {
			Image(systemName: "link")
			  .resizable()
			  .frame(width: 32.0, height: 32.0)
			  .padding()
			Text("Copy text")
			  .font(.caption)
			  .multilineTextAlignment(.center)
			  .padding(.trailing)
		  }
		  .frame(maxWidth: .infinity)
		  .overlay(
			RoundedRectangle(cornerRadius: 10)
			  .stroke(Color.blue, lineWidth: 2)
		  )
		  
		  
		  Button(action: {
			// Code to be executed when the button is tapped
			print("Button tapped!")
		  }) {
			Image(systemName: "magnifyingglass")
			  .resizable()
			  .frame(width: 32.0, height: 32.0)
			  .padding()
			Text("Google Search text")
			  .font(.caption)
			  .multilineTextAlignment(.center)
			  .padding(.trailing)
		  }
		  .frame(maxWidth: .infinity)
		  .overlay(
			RoundedRectangle(cornerRadius: 10)
			  .stroke(Color.blue, lineWidth: 2)
		  )
		  
		}
		
		.padding()
		
		VStack{
		  
		  Button(action: {
			// Code to be executed when the button is tapped
			print("Button tapped!")
		  }) {
			Image(systemName: "plus.message.fill")
			  .resizable()
			  .frame(width: 32.0, height: 32.0)
			  .padding()
			Text("Send text as message")
			  .font(.caption)
			  .multilineTextAlignment(.center)
			  .padding(.trailing)
		  }
		  .frame(maxWidth: .infinity)
		  .overlay(
			RoundedRectangle(cornerRadius: 10)
			  .stroke(Color.blue, lineWidth: 2)
		  )
		  
		  Button(action: {
			// Code to be executed when the button is tapped
			print("Button tapped!")
		  }) {
			Image(systemName: "note.text.badge.plus")
			  .resizable()
			  .frame(width: 32.0, height: 32.0)
			  .padding()
			Text("Save text to notes")
			  .font(.caption)
			  .multilineTextAlignment(.center)
			  .padding(.trailing)
		  }
		  .frame(maxWidth: .infinity)
		  .overlay(
			RoundedRectangle(cornerRadius: 10)
			  .stroke(Color.blue, lineWidth: 2)
		  )
		  
		  
		}
		.padding()
	  }
	  
	}
	
	
  }
}

struct RecordingView_Previews: PreviewProvider {
  static var previews: some View {
	RecordingView()
  }
}

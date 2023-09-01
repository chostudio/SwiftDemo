//
//  Demo_AppApp.swift
//  Demo App
//
//  Created by Chris Ho on 6/19/23.
//

import SwiftUI


struct ContentView: View {
  var body: some View {
	
	//bottom bar
	TabView{
	  RecordingView()
		.tabItem {
		  Image(systemName: "mic.circle.fill")
		  Text("Recording")
		}
	  InfoView()
		.tabItem {
		  Image(systemName: "info.square")
		  Text("Info")
		}
	  SettingsView()
		.tabItem {
		  Image(systemName: "gearshape.fill")
		  Text("Settings")
		}
	}
	
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
	ContentView()
  }
}

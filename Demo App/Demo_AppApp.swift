//
//  Demo_AppApp.swift
//  Demo App
//
//  Created by Chris Ho on 6/19/23.
//

import SwiftUI

@main
struct Demo_AppApp: App {
    var body: some Scene {
        WindowGroup {
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
                        Image(systemName: "settings")
                        Text("Settings")
                    }
            }
        }
    }
}

struct Previews_Demo_AppApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

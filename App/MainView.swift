//
//  MainView.swift
//  Africa
//
//  Created by Hassan Assiry on 02/04/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                        Text("Browse")
                }
            VideoListView()
                        .tabItem {
                            Image(systemName: "play.rectangle")
                                Text("Watch")
                        }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                        Text("Location")

                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                        Text("Gallery")

                }
                }//: TABVIEW
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
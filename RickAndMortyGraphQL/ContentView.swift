//
//  ContentView.swift
//  RickAndMortyGraphQL
//
//  Created by mahesh lad on 15/07/2024.
//

import SwiftUI
import Apollo

struct ContentView: View {
    
    @StateObject private var dataModel = DataModelObject()
    var body: some View {
        VStack {
            if  !dataModel.episodes.isEmpty {
                Text("Episodes count: \(dataModel.episodes.count)")
                
                List(dataModel.episodes, id: \.self) { episode in
                    Text(episode)
                }
                
            } else {
                Text("Loading episodes data...")
            }
        }
        .onAppear {
            Task {
                dataModel.fetchEpisodes()
            }
        }
    }
    
}

#Preview {
    ContentView()
}

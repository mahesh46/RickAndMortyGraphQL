//
//  DataModel.swift
//  RickAndMortyGraphQL
//
//  Created by mahesh lad on 20/07/2024.
//

import Foundation
import RICKANDMORTYAPI


class DataModelObject: ObservableObject {
    
    @Published var episodes = [String]()
    
    init() {}
    
    func fetchEpisodes() {
        let query = AllEpisodesQuery()
        Network.shared.apolloClient.fetch(query: query) { [weak self] result in
            switch result {
            case .success(let value):
                self?.episodes = value.data?.episodes?.results?.compactMap({ $0?.name}) ?? []
                debugPrint(self?.episodes)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}

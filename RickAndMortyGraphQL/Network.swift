//
//  Network.swift
//  RickAndMortyGraphQL
//
//  Created by mahesh lad on 15/07/2024.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    let apolloClient = ApolloClient(url: URL(string: "https://rickandmortyapi.com/graphql")!)
 
}

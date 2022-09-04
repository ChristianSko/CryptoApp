//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 24/8/22.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataservice()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubcribers()
    }
    
    func addSubcribers() {
        
        // updates all coins
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowerCasedText = text.lowercased()
        
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowerCasedText) || coin.symbol.lowercased().contains(lowerCasedText) || coin.id.lowercased().contains(lowerCasedText)
        }
    }
}

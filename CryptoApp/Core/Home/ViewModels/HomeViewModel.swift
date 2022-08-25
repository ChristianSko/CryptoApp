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
    
    private let dataService = CoinDataservice()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubcribers()
    }
    
    func addSubcribers() {
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)

    }
}

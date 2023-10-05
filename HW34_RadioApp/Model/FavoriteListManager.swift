//
//  FavoriteListManager.swift
//  HW34_RadioApp
//
//  Created by Dawei Hao on 2023/10/2.
//

import Foundation

class FavoritesManager {

    static let shared = FavoritesManager()

    private init() {}
    
    var selectedIndex: Int?
    var receivedDataArray: [Int] = []
}

//
//  ProductListItemViewModel.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation

final class ProductListItemViewModel {
    
    // MARK: - Public Properties
    
    var name: String {
        return "\(product.productName) \(product.name)"
    }
    
    var offersCountDescription: String {
        return "\(product.offersCount) ofertas"
    }
    
    var canDisplayOffersCount: Bool {
        return product.offersCount > 0
    }
    
    var noOffersDescription: String {
        return "Sem ofertas disponíveis"
    }
    
    var canDisplayOffers: Bool {
        return product.offersCount == 0
    }
    
    var priceDescription: String? {
        let price = Double(product.lowestPrice ?? "0")
        return price?.currencyDescription
    }
    
    var substancy: String? {
        return product.substance
    }
    
    var canDisplaySubstancy: Bool {
        return !(product.substance?.isEmpty ?? true)
    }
    
    var factory: String? {
        return product.factory
    }
    
    // MARK: - Private Properties
    
    private let product: Product
    
    // MARK: - Public Methods
    
    init(_ product: Product) {
        self.product = product
    }
    
}

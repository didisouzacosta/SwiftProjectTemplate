//
//  Variant.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation

public struct Product: Codable {
    let id: String
    let productId: String
    let productName: String
    let name: String
    let classification: String?
    let sku: Int
    let factory: String?
    let substance: String?
    let image: URL?
    let lowestPrice: String?
    let offersCount: Int
    let type: String?
    let category: String?
    
    public init(
        id: String,
        productId: String,
        productName: String,
        name: String,
        classification: String? = nil,
        sku: Int,
        factory: String? = nil,
        substance: String? = nil,
        image: URL? = nil,
        lowestPrice: String? = nil,
        offersCount: Int,
        type: String? = nil,
        category: String? = nil
    ) {
        self.id = id
        self.productId = productId
        self.productName = productName
        self.name = name
        self.classification = classification
        self.sku = sku
        self.factory = factory
        self.substance = substance
        self.image = image
        self.lowestPrice = lowestPrice
        self.offersCount = offersCount
        self.type = type
        self.category = category
    }
}

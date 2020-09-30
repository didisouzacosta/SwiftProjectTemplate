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
}

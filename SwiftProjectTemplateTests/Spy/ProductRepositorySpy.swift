//
//  ProductRepositorySpy.swift
//  SwiftProjectTemplateTests
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import SwiftProjectTemplate

final class ProductRepositorySpy: ProductRepositoryProtocol {
    
    var products: [Product]?
    var error: Error?
    
    func getAll() -> Result<[Product], Error> {
        if let products = products {
            return .success(products)
        } else if let error = error {
            return .failure(error)
        } else {
            return .failure("getAll error")
        }
    }
    
}

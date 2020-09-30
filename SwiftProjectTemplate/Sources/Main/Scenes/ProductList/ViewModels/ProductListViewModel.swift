//
//  ProductListViewModel.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import RxSwift

final class ProductListViewModel {
    
    // MARK: - Public Properties
    
    var title: String {
        return "Lista de produtos"
    }
    
    // MARK: - Private Properties
    
    private let repository: ProductRepositoryProtocol
    
    // MARK: - Public Methods
    
    init(repository: ProductRepositoryProtocol) {
        self.repository = repository
    }
    
    func getProducts() -> Observable<[ProductListItemViewModel]> {
        do {
            let result = try repository.getAll().get()
            let items = result.map { ProductListItemViewModel($0) }
            return .just(items)
        } catch {
            return .error(error)
        }
    }
    
}

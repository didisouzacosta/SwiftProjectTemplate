//
//  ProductListItemViewModelTests.swift
//  SwiftProjectTemplateTests
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import XCTest
import Nimble

@testable import SwiftProjectTemplate

class ProductListItemViewModelTests: XCTestCase {

    private let product = Product(
        id: "991",
        productId: "00q",
        productName: "Teste",
        name: "500mg",
        sku: 002,
        lowestPrice: "44.3",
        offersCount: 1
    )
    
    func testEnsureProductNameConsistency() throws {
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.name) == "Teste 500mg"
    }
    
    func testEnsureNoOffersDescriptionConsistency() throws {
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.noOffersDescription) == "Sem ofertas disponíveis"
    }
    
    func testEnsurePriceDescriptionConsistency() throws {
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.priceDescription) == "R$ 44,30"
    }
    
    func testShouldDisplayOffersWhenOffersIsGreatherThanZero() throws {
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.canDisplayOffers) == true
    }
    
    func testShouldNotDisplaySubstrancWhenSubstanceIsEmpty() throws {
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.canDisplaySubstancy) == false
    }
    
    func testShouldDisplaySubstrancWhenSubstanceIsNotEmpty() throws {
        let product = Product(
            id: "991",
            productId: "00q",
            productName: "Teste",
            name: "500mg",
            sku: 002,
            substance: "Ibuprofeno",
            lowestPrice: "44.3",
            offersCount: 1
        )
        
        let viewModel = ProductListItemViewModel(product)
        expect(viewModel.canDisplaySubstancy) == true
    }

}

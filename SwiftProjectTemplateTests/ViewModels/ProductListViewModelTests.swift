//
//  ProductListViewModelTests.swift
//  SwiftProjectTemplateTests
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import XCTest
import Nimble
import RxSwift

@testable import SwiftProjectTemplate

class ProductListViewModelTests: XCTestCase {

    private let disposeBag = DisposeBag()
    
    func testEnsureTitleConsistency() throws {
        let productRepositorySpy = ProductRepositorySpy()
        let viewModel = ProductListViewModel(repository: productRepositorySpy)
        expect(viewModel.title) == "Lista de produtos"
    }
    
    func testReturnItemIfGetAllSuccess() throws {
//        let productRepositorySpy = ProductRepositorySpy()
//        productRepositorySpy.products = (0...10).map { index in
//            return Product(
//                id: "\(index)",
//                productId: "\(index)",
//                productName: "Produto \(index)",
//                name: "\(index)mg",
//                sku: index,
//                offersCount: index
//            )
//        }
//        
//        let viewModel = ProductListViewModel(repository: productRepositorySpy)
//        
//        viewModel.getProducts().subscribe(onNext: { (products) in
//            expect(products.count) == 11
//            expect(products.first?.name) == "Produto 0 0mg"
//            expect(products.last?.name) == "Produto 10 10mg"
//        }, onError: { (error) in
//            fail(error.localizedDescription)
//        }).disposed(by: disposeBag)
    }
    
    func testThrowErrorIfGetAllFail() throws {
//        let productRepositorySpy = ProductRepositorySpy()
//        productRepositorySpy.error = "Simulação de erro ao carregar produtos"
//
//        let viewModel = ProductListViewModel(repository: productRepositorySpy)
//
//        viewModel.getProducts().subscribe(onNext: { (products) in
//            fail()
//        }, onError: { (error) in
//            expect(error.localizedDescription) == "Simulação de erro ao carregar produtos"
//        }).disposed(by: disposeBag)
    }

}

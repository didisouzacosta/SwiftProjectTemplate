//
//  LoadProductRepository.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation

public final class ProductRepository {
    
    // MARK: - Private Properties
    
    private let productList = """
    [
        {
          "id": "5488ac9a4661623f65ff9b00",
          "productId": "5488ab2b4661623f65ae2900",
          "productName": "Aclasta",
          "name": "5mg/100mL, caixa com frasco com 100mL de solução de uso intravenoso",
          "classification": "reference",
          "sku": 7896261010451,
          "factory": "Novartis",
          "substance": "Ácido Zoledrônico (5mg/mL)",
          "image": "https://uploads-staging.consultaremedios.com.br/product_images_configuration/a77cc193d0a08f5a08425bd9d435125898c3e6abBOX-CR-VERMELHO.png?1522262849",
          "lowestPrice": "10.00",
          "offersCount": 27,
          "offersUpdatedAt": "2020-09-02T15:24:22-03:00",
          "type": "medicine",
          "category": "Doenças dos Ossos"
        },
        {
          "id": "5488b1bc4661623f65548701",
          "productId": "5488abcf4661623f65f56100",
          "productName": "Ibuprofeno Gotas",
          "name": "100mg/mL, caixa contendo 1 frasco gotejador com 20mL de suspensão de uso oral",
          "classification": "generic",
          "sku": 7896422519830,
          "factory": "Medley",
          "substance": "Ibuprofeno",
          "image": "https://uploads-staging.consultaremedios.com.br/product_variation_images/large/d14c5e9cd38d0a215b30b980cc3d66eb58b4cde9.jpg?1566324746",
          "lowestPrice": "5.13",
          "offersCount": 19,
          "offersUpdatedAt": "2020-09-02T15:24:22-03:00",
          "type": "medicine",
          "category": "Analgésico e Antitérmico"
        },
        {
          "id": "5b7cc0815a7326001809f71f",
          "productId": "5b48d2a6c5265a05cb2b5b68",
          "productName": "Atrofem",
          "name": "400mg, caixa com 10 cápsulas liquidas",
          "classification": "similar",
          "sku": 7896094914971,
          "factory": "Cosmed",
          "substance": "Ibuprofeno",
          "image": "https://uploads-staging.consultaremedios.com.br/product_variation_images/large/ab7ede24e4c5b84dc740be111137a4b200b77d55.jpg?1568119768",
          "lowestPrice": "13.89",
          "offersCount": 17,
          "offersUpdatedAt": "2020-09-03T17:16:58-03:00",
          "type": "medicine",
          "category": "Analgésico e Antitérmico"
        },
        {
          "id": "5488b4df4661623f659eeb01",
          "productId": "5ab902ae90365c00084e62cd",
          "productName": "Paracetamol",
          "name": "200mg/mL, caixa com 1 frasco gotejador com 15mL de solução de uso oral",
          "classification": "generic",
          "sku": 7896422505390,
          "factory": "Medley",
          "substance": "Paracetamol",
          "image": "https://uploads-staging.consultaremedios.com.br/product_variation_images/large/e85f101a8efa7f544112e931e9f532c72b6399b6.jpg?1543517304",
          "lowestPrice": "3.65",
          "offersCount": 16,
          "offersUpdatedAt": "2020-09-03T17:16:58-03:00",
          "type": "medicine",
          "category": "Analgésico e Antitérmico"
        },
        {
          "id": "5488b1bc4661623f654e8701",
          "productId": "5488abcf4661623f65f56100",
          "productName": "Ibuprofeno Gotas",
          "name": "50mg/mL, caixa com 1 frasco gotejador com 30mL de suspensão de uso oral",
          "classification": "generic",
          "sku": 7896422519793,
          "factory": "Medley",
          "substance": "Ibuprofeno",
          "image": "https://uploads-staging.consultaremedios.com.br/product_variation_images/large/9a61498283d41217f8967266e21c6602c760956a.jpg?1566324732",
          "lowestPrice": "7.27",
          "offersCount": 17,
          "offersUpdatedAt": "2020-09-02T15:24:22-03:00",
          "type": "medicine",
          "category": "Analgésico e Antitérmico"
        },
        {
          "id": "5488b4e04661623f65abeb01",
          "productId": "5ab902ae90365c00084e62cd",
          "productName": "Paracetamol",
          "name": "750mg, caixa com 20 comprimidos revestidos﻿",
          "classification": "generic",
          "sku": 7896422504911,
          "factory": "Medley",
          "substance": "Paracetamol",
          "image": "https://uploads-staging.consultaremedios.com.br/product_images/large/2e3bdf7abcd5536554dabb92fca94dcd802a019e.?1562735110",
          "lowestPrice": "7.10",
          "offersCount": 15,
          "offersUpdatedAt": "2020-09-02T15:24:22-03:00",
          "type": "medicine",
          "category": "Analgésico e Antitérmico"
        }
    ]
    """
    
    // MARK: - Private Methods
    
    private func getData() throws -> [Product] {
        return try JSONDecoder().decode(
            [Product].self,
            from: productList.data(using: .utf8)!
        )
    }
    
}

extension ProductRepository: ProductRepositoryProtocol {
    
    public func getAll() -> Result<[Product], Error> {
        do {
            let result = try getData()
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
    
}

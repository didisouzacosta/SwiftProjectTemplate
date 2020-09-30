//
//  ProductViewCell.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import UIKit

final class ProductViewCell: UITableViewCell {
    
    // MARK: - Public Variables
    
    static var reuseIdentifier: String {
        return "ProductViewCell"
    }
    
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: Bundle.main)
    }
    
    // MARK: - Private Variables
    
    @IBOutlet private weak var productImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var offersCountLabel: UILabel!
    
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var noOffersLabel: UILabel!
    
    @IBOutlet private weak var factoryLabel: UILabel!
    @IBOutlet private weak var substanceLabel: UILabel!
    
    // MARK: - Public Methods
    
    func setup(_ product: Product) {
        setupImage(product)
        setupName(product)
        setupOffersCount(product)
        setupNoOffersCount(product)
        setupPrice(product)
        setupFactory(product)
        setupSubstancy(product)
    }
    
    // MARK: - Private Methods
    
    private func setupImage(_ product: Product) {
        productImage.load(from: product.image)
    }
    
    private func setupName(_ product: Product) {
        nameLabel.text = "\(product.productName) \(product.name)"
    }
    
    private func setupOffersCount(_ product: Product) {
        offersCountLabel.text = "\(product.offersCount) ofertas"
        offersCountLabel.isHidden = product.offersCount > 0
    }
    
    private func setupNoOffersCount(_ product: Product) {
        noOffersLabel.text = "Sem ofertas disponíveis"
        noOffersLabel.isHidden = product.offersCount > 0
    }
    
    private func setupPrice(_ product: Product) {
        let price = Double(product.lowestPrice ?? "0")
        priceLabel.text = price?.currencyDescription
        priceLabel.isHidden = product.lowestPrice == nil
    }
    
    private func setupFactory(_ product: Product) {
        factoryLabel.text = product.factory
    }
    
    private func setupSubstancy(_ product: Product) {
        substanceLabel.text = product.substance
        substanceLabel.isHidden = product.substance?.isEmpty ?? true
    }
    
}

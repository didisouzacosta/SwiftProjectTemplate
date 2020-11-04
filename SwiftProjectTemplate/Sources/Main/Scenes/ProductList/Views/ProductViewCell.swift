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
    
    func setup(_ viewModel: ProductListItemViewModel) {
        setupImage(viewModel)
        setupName(viewModel)
        setupOffersCount(viewModel)
        setupNoOffersCount(viewModel)
        setupPrice(viewModel)
        setupFactory(viewModel)
        setupSubstancy(viewModel)
    }
    
    // MARK: - Private Methods
    
    private func setupImage(_ viewModel: ProductListItemViewModel) {
        productImage.load(from: viewModel.imageURL)
    }

    private func setupName(_ viewModel: ProductListItemViewModel) {
        nameLabel.text = viewModel.name
    }

    private func setupOffersCount(_ viewModel: ProductListItemViewModel) {
        offersCountLabel.text = viewModel.offersCountDescription
        offersCountLabel.isHidden = !viewModel.canDisplayOffers
    }

    private func setupNoOffersCount(_ viewModel: ProductListItemViewModel) {
        noOffersLabel.text = viewModel.noOffersDescription
        noOffersLabel.isHidden = viewModel.canDisplayOffers
    }

    private func setupPrice(_ viewModel: ProductListItemViewModel) {
        priceLabel.text = viewModel.priceDescription
        priceLabel.isHidden = !viewModel.canDisplayPrice
    }

    private func setupFactory(_ viewModel: ProductListItemViewModel) {
        factoryLabel.text = viewModel.factory
    }

    private func setupSubstancy(_ viewModel: ProductListItemViewModel) {
        substanceLabel.text = viewModel.substancy
        substanceLabel.isHidden = !viewModel.canDisplaySubstancy
    }
    
}

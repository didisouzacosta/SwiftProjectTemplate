//
//  ProductListViewController.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

final class ProductListViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let repository: ProductRepositoryProtocol
    private let products = BehaviorSubject<[Product]>(value: [])
//    private let products = BehaviorSubject<[ProductListItemViewModel]>(value: [])
//    private let viewModel: ProductListViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: Actions
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Public Methods
    
    init(repository: ProductRepositoryProtocol) {
        self.repository = repository
        super.init(nibName: nil, bundle: nil)
    }
    
//    init(viewModel: ProductListViewModel) {
//        self.viewModel = viewModel
//        super.init(nibName: nil, bundle: nil)
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitle()
        setupTableView()
        
        bindProducts()
        
        loadData()
    }
    
    // MARK: - Private Methods
    
    private func setupTitle() {
        navigationItem.title = "List de produtos"
    }
    
//    private func setupTitle() {
//        navigationItem.title = viewModel.title
//    }
    
    private func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 60
        tableView.estimatedSectionHeaderHeight = 60
        tableView.tableFooterView = UIView.tableViewFooter
        tableView.keyboardDismissMode = .onDrag
        
        tableView.register(
            ProductViewCell.nib,
            forCellReuseIdentifier: ProductViewCell.reuseIdentifier
        )
    }
    
    private func bindProducts() {
        products.bind(to: tableView.rx.items(
            cellIdentifier: ProductViewCell.reuseIdentifier,
            cellType: ProductViewCell.self
        )) { _, model, cell in
            cell.setup(model)
        }.disposed(by: disposeBag)
    }
    
    private func loadData() {
        do {
            let result = try repository.getAll().get()
            products.onNext(result)
        } catch {
            show(error)
        }
    }
    
//    private func loadData() {
//        viewModel.getProducts()
//            .do(onError: { [weak self] (error) in
//                self?.show(error)
//            })
//            .bind(to: products2)
//            .disposed(by: disposeBag)
//    }
    
}

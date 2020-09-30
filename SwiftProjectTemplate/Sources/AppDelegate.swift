//
//  AppDelegate.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 12/08/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        return true
    }
    
    // MARK: - Private Methods
    
    private func setupWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let productListController = makeProductListViewController()
        let navigationController = UINavigationController(rootViewController: productListController)
        
        self.window = window
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
    
    private func makeProductListViewController() -> ProductListViewController {
        let repository = ProductRepository()
        return ProductListViewController(repository: repository)
    }

}

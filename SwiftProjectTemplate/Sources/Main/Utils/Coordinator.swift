//
//  Coordinator.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }
    
    func start()
    func start(coordinator: Coordinator)
    func didFinish(coordinator: Coordinator)
    func removeChildCoordinators()
}

protocol TabBarCoordinator: Coordinator {
    func setupTabBarItem()
}

class BaseCoordinator: Coordinator {
    var navigationController = UINavigationController()
    var childCoordinators = [Coordinator]()
    var parentCoordinator: Coordinator?
    
    func start() {
        fatalError("Start method should be implemented.")
    }
    
    func start(coordinator: Coordinator) {
        childCoordinators += [coordinator]
        coordinator.navigationController = navigationController
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
    func removeChildCoordinators() {
        childCoordinators.forEach { $0.removeChildCoordinators() }
        childCoordinators.removeAll()
    }
    
    func didFinish(coordinator: Coordinator) {
        guard let index = childCoordinators
            .firstIndex(where: { $0 === coordinator }) else {
                return
        }
        childCoordinators.remove(at: index)
    }
}

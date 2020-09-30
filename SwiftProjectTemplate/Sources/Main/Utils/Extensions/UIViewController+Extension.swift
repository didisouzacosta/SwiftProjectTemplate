//
//  UIViewController+Extension.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func show(_ error: Error) {
        alert(title: "Houve um erro", message: error.localizedDescription)
    }
    
    func alert(
        title: String?,
        message: String?,
        actionHandler: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Ok",
            style: .default,
            handler: { _ in actionHandler?() }
        )
        
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
}

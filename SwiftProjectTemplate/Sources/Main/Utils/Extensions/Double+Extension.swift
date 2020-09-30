//
//  Double+Extension.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation

public extension Double {
    
    var currencyDescription: String? {
        return currencyDescription(with: Locale(identifier: "pt_br"))
    }
    
    func currencyDescription(with locale: Locale) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .currency
        
        return formatter.string(from: self as NSNumber)
    }
    
}

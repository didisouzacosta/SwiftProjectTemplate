//
//  LoadProductRepositoryProtocol.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation

public protocol ProductRepositoryProtocol {
    func getAll() -> Result<[Product], Error>
}

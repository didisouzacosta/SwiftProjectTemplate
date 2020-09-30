//
//  UIImageView+Extension.swift
//  SwiftProjectTemplate
//
//  Created by Adriano Souza Costa on 30/09/20.
//  Copyright © 2020 Experiments. All rights reserved.
//

import Foundation
import Kingfisher

public extension UIImageView {
    
    func load(from url: URL?) {
        guard let url = url else { return }
        
        self.kf.setImage(
            with: url,
            options: [
                .transition(.fade(1)),
                .cacheOriginalImage
            ]
        )
    }
    
}

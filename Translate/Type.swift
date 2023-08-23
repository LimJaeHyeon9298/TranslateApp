//
//  Type.swift
//  Translate
//
//  Created by 임재현 on 2023/08/21.
//

import UIKit

enum ButtonType {
    case source
    case target
    
    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return .mainTintColor
        }
    }
    
    
}

//
//  BookmarkTextStackView.swift
//  Translate
//
//  Created by 임재현 on 2023/08/21.
//

import UIKit
import SnapKit

final class BookmarkStackView: UIStackView {
    private let type: ButtonType
    private let language:Language
    private let text:String
    
    
    private lazy var languageLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13.0,weight: .medium)
        label.textColor = type.color
        label.text = language.title
        return label
        
        
    }()
    private lazy var textLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16.0,weight: .bold)
        label.textColor = type.color
        label.text = text
        label.numberOfLines = 0
        return label
        
    }()
    
    init(language:Language,text:String,type:ButtonType) {
        self.language = language
        self.text = text
        self.type = type
        super.init(frame: .zero)
        setup()
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        axis = .vertical
        distribution = .equalSpacing
        spacing = 4.0
        
        
        [languageLabel,textLabel].forEach {addArrangedSubview($0)}
    }
    
    
}

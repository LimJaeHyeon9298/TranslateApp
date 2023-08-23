//
//  BookmarkCollectionViewCell.swift
//  Translate
//
//  Created by 임재현 on 2023/08/21.
//

import SnapKit
import UIKit

final class BookmarkCollectionViewCell:UICollectionViewCell {
    
    static let identifier = "BookmarkCollectionViewCell"
    
    private var sourceBookmarkTextStackView: BookmarkStackView!
    private var targetBookmarkTextStackView: BookmarkStackView!
    
    private lazy var stackView:UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        stackView.layoutMargins = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        stackView.isLayoutMarginsRelativeArrangement = true
        
     
        
        
        return stackView
    }()
    
    
    
    
    func setup(from bookmark:Bookmark) {
        backgroundColor = .systemBackground
        layer.cornerRadius = 12.0
        
        sourceBookmarkTextStackView = BookmarkStackView(language: bookmark.sourceLanguage, text: bookmark.sourceText, type: .source)
        targetBookmarkTextStackView = BookmarkStackView(language: bookmark.translateLanguage, text: bookmark.translateddText, type: .target)
        
        stackView.subviews.forEach {$0.removeFromSuperview()}
        
        [sourceBookmarkTextStackView,targetBookmarkTextStackView]
             .forEach{stackView.addArrangedSubview($0) }
        
        addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(UIScreen.main.bounds.size.width - 32.0)
        }
        
       layoutIfNeeded()
        
        
    }
    
    
    
    
}

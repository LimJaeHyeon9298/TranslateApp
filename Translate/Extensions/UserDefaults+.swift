//
//  UserDefaults+.swift
//  Translate
//
//  Created by 임재현 on 2023/08/21.
//

import Foundation

extension UserDefaults {
    enum Key:String {
        case bookmarks
    }
    
    
    var bookmarks:[Bookmark] {
        get {
            guard let data = UserDefaults.standard.data(forKey: Key.bookmarks.rawValue) else {return []}
            
            return (try? PropertyListDecoder().decode([Bookmark].self, from: data)) ?? []
        }
        set {
          

            UserDefaults.standard.setValue(try? PropertyListEncoder().encode(newValue), forKey: Key.bookmarks.rawValue)
        }
        
        
        
    }
    
    
}

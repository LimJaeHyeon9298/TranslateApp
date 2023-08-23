//
//  TranslateResponseModel.swift
//  Translate
//
//  Created by 임재현 on 2023/08/23.
//

import Foundation

struct TranslateResponseModel :Decodable {
   
    let message: Message
    
    var translatedText:String { message.result.translatedText}
    
    struct Message: Decodable {
        let result:Result
    }
    
    struct Result:Decodable {
        let translatedText:String
    }
}


//
//  TrnaslatorManager.swift
//  Translate
//
//  Created by 임재현 on 2023/08/23.
//

import Foundation
import Alamofire


struct TranslatorManager {
    
    var sourceLanguage:Language = .ko
    var targetLanguage: Language = .en
    
    
    func translate(from text:String,completionHanlder:@escaping (String)-> Void) {
        guard let url = URL(string: "https://openapi.naver.com/v1/papago/n2mt") else {return}
        
        let requsetModel = TranslateRequestModel(source: sourceLanguage.languageCode, target: targetLanguage.languageCode, text: text)
        
        let headers:HTTPHeaders = [
        
            "X-Naver-Client-Id":"zn5oxTSxm9XMzi3CA3jV",
            "X-Naver-Client-Secret":"qzCVOa6hXx"
        
        
        ]
        
        AF.request(url,method: .post,parameters: requsetModel,headers: headers).responseDecodable(of: TranslateResponseModel.self) {response in
            switch response.result {
            case .success(let result) :
                completionHanlder(result.translatedText)
            case .failure(let error) :
                print(error.localizedDescription)
            }
        }
        .resume()
        
    }
}

//
//  SceneDelegate.swift
//  Translate
//
//  Created by 임재현 on 2023/08/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = UIColor.mainTintColor
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }

    


}


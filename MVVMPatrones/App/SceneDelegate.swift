//
//  SceneDelegate.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
        let splashViewController = SplashViewController()
        splashViewController.viewModel = SplashViewModel(viewDelegate: splashViewController)
        let navigationController = UINavigationController()
        
        splashViewController.viewModel = SplashViewModel(viewDelegate: splashViewController)
        
        navigationController.setViewControllers([splashViewController], animated: true)
        
        window.rootViewController = navigationController // le damos el inicio de la app al navigation
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
            }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
      
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}


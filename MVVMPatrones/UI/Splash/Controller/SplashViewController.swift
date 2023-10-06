//
//  SplashViewController.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import UIKit

// MARK: - Protocol
protocol SplashViewProtocol: AnyObject {  
    func showLoading(_ show: Bool)  // Funcion para mostrar elementos de la pantalla (activityIndicator)
    func navigateToHome()    // Funcion para navegar a la home
}

// MARK: - Class
class SplashViewController: UIViewController {
    
    var viewModel: SplashViewModelProtocol? // Declaro la variable con el protocolo
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel = SplashViewModel(viewDelegate: self) // Instancio la variable con la clase. Me lo llevo a scene delegate que es desde donde navego, ya que es el inicio de la app. Interesa hacerlo así para testear.
        viewModel?.onViewsLoaded()

        
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating() // Para asegurarme de que cuando vaya a desaparecer que lo pare.
    }

}

// Extension
extension SplashViewController: SplashViewProtocol {
    func showLoading(_ show: Bool) {  // Método para cargar activity indicator
        switch show {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    
    func navigateToHome() {   // Navegar a la home
        let nextVC = HomeTableTableViewController()  // Creo la vista
        let nextVM = HomeViewModel(viewDelegate: nextVC)  // Creo viewModel
        nextVC.viewModel = nextVM  
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    
    

}

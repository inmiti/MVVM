//
//  SplashViewController.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import UIKit

// MARK: - Protocol
protocol SplashViewProtocol: AnyObject {  
    func showLoading(_ show: Bool)  
    func navigateToHome()
}

// MARK: - Class
class SplashViewController: UIViewController {
    
    var viewModel: SplashViewModelProtocol?
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()

        
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }

}

// MARK: - Extension
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
    
    func navigateToHome() {
        let nextVC = HomeTableTableViewController()  // Creo la vista
        let nextVM = HomeViewModel(viewDelegate: nextVC)  // Creo viewModel
        nextVC.viewModel = nextVM  
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    
    

}

//
//  File.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import Foundation
import UIKit

// MARK: - Protocolo   (Incluimos métodos visibles para la vista)
protocol SplashViewModelProtocol {
    func onViewsLoaded()
}

// MARK: - Clase
final class SplashViewModel {
    
    private weak var viewDelegate: SplashViewProtocol?
    
    init(viewDelegate: SplashViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {   
        viewDelegate?.showLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            self?.viewDelegate?.showLoading(false)
            self?.viewDelegate?.navigateToHome()
        }
        
    }
}


// MARK: - Extension

extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoaded() {
        loadData()
    }
    
}

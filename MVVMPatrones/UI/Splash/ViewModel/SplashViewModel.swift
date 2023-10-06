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
    
    private weak var viewDelegate: SplashViewProtocol? //Creo variable del tipo protocolo de la vista
    
    init(viewDelegate: SplashViewProtocol?) {  // Gracias al init podré pasar al viewModel la vista delegada asociada.
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {  // Funcion para cargar datos:  
        viewDelegate?.showLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            self?.viewDelegate?.showLoading(false)
            self?.viewDelegate?.navigateToHome()
        }
        
    }
}


// MARK: - Extension

extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoaded() {   //Las vistas se han cargado, la vista comunica que está cargada y el modelo decide cargar los datos.
        loadData()
    }
    
}

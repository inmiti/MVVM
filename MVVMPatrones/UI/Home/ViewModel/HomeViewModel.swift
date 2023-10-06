//
//  NewViewModel.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import Foundation

//MARK: - Protocol
protocol HomeViewModelProtocol {
    
    var dataCount: Int {get}
    func onViewsLoaded()
    func data(at index: Int) -> CharacterModel?
    func onItemSelected(at index: Int)
    
    
}

//MARK: - Class

final class HomeViewModel{
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = CharactersModel()
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleCharacterData //CARGAR DATOS: llamada a la api iría aquí
        viewDelegate?.updateViews()
        
        
        
        
        
    }
    
}

//MARK: - Extension
extension HomeViewModel: HomeViewModelProtocol {
    
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else {
            return
        }
        viewDelegate?.navigateToDetail(with: data)
        //Notificar a la vista que navegue al detalle
    }
    
    func data(at index: Int) -> CharacterModel? {
        guard index < dataCount else {return nil}
        return viewData[index]
        
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    
}

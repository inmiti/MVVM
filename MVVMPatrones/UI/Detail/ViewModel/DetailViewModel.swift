//
//  DetailViewModel.swift
//  MVVMPatrones
//
//  Created by ibautista on 7/10/23.
//

import Foundation

// MARK: - Protocol
protocol DetailViewModelProtocol {
    func onViewsLoaded()
}


// MARK: - Class

final class DetailViewModel {
    
    private weak var viewDelegate: DetailViewProtocol?
    private var character: CharacterModel?
    
    init(viewDelegate: DetailViewProtocol? = nil, character: CharacterModel) {
        self.viewDelegate = viewDelegate
        self.character = character
        
    }
    
    
    
//    init(character: CharacterModel?) {
//        self.character = character
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    @available(*, unavailable)
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    private func loadData(){
        viewDelegate?.updateView(name: character?.name, image: character?.image, description: character?.description)
    }
    
    
}


// MARK: - Extension
extension DetailViewModel: DetailViewModelProtocol {
    func onViewsLoaded() {
        loadData()
    }
    
    
}

//
//  DetailViewController.swift
//  MVVMPatrones
//
//  Created by ibautista on 7/10/23.
//

import UIKit

// MARK: - Protocol

protocol DetailViewProtocol: AnyObject {
    func updateView(name: String?, image: String?, description: String?)
}

// MARK: - Class
class DetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var nameCharacterLabel: UILabel!
    @IBOutlet weak var descriptionCharacterTextView: UITextView!
    
    var viewModel: DetailViewModelProtocol?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()    
    }
    
    private func update(name: String?) {
        nameCharacterLabel.text = name ?? ""
    }
    private func update(image: String?) {
        detailImageView.image = UIImage(named: image ?? "")
    }

    private func update(description: String?) {
        descriptionCharacterTextView.text = description ?? ""
    }
}

// MARK: - Extension
extension DetailViewController: DetailViewProtocol {
    func updateView(name: String?, image: String?, description: String?) {
        update(name: name)
        update(image: image)
        update(description: description)
    }
}

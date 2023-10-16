//
//  HomeCellTableViewCell.swift
//  MVVMPatrones
//
//  Created by ibautista on 6/10/23.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameCellHome: UILabel!
    @IBOutlet weak var imageCellHome: UIImageView!
    @IBOutlet weak var viewCellHome: UIView!
    

    override func prepareForReuse() {
        super.prepareForReuse()
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    func updateView(data: CharacterModel?) {
        update(name: data?.name)
        update(image: data?.image)
    }
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
    
}

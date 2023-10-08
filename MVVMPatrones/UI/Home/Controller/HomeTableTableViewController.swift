//
//  HomeTableTableViewController.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import UIKit
// MARK: - Protocol
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(with data: CharacterModel?)
    func updateViews()
}
    
//MARK: - Class
class HomeTableTableViewController: UITableViewController {
    
    var viewModel: HomeViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewsLoaded()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.dataCount ?? 0
    }
    
    //Update views
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateView(data: data)
        }
        return cell
    }
    
    // Select item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
    
    
}

    //MARK: - Extension
extension HomeTableTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: CharacterModel?) {
        let nextVC = DetailViewController()
        guard let data else {return}
        nextVC.viewModel = DetailViewModel(viewDelegate: nextVC, character: data)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    
}
    


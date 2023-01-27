//
//  ViewController.swift
//  AppStoreDesign
//
//  Created by Sevval Alev on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        registerCell()
    }
    
    func registerCell() {
        let nib = UINib(nibName: "GameCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: GameCell.identifier)
    }
    
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: GameCell.identifier,for: indexPath) as? GameCell {
            return cell
        }
        return UITableViewCell()
    }
    
}


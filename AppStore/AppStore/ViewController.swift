//
//  ViewController.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let customCellNib: UINib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(customCellNib, forCellReuseIdentifier: "tableViewCell")
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
}

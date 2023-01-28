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
        
        let secondCustomCellNib: UINib = UINib(nibName: "SecondTableViewCell", bundle: nil)
        tableView.register(secondCustomCellNib, forCellReuseIdentifier: "secondTableViewCell")
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell {
                return cell
            }
        }else if indexPath.section == 1 {
            if let cell2 = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath) as? SecondTableViewCell {
                return cell2
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionHeader = ""
            if section == 0 {
                sectionHeader = ""
            } else if section == 1 {
                sectionHeader = "What We're Playing"
            }else if section == 2 {
                sectionHeader = "Must-Play Games"
            }
            return sectionHeader
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}
//
//  DetailVC.swift
//  NCHomework
//
//  Created by Sevval Alev on 16.01.2023.
//

import UIKit

class DetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func homePageTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}

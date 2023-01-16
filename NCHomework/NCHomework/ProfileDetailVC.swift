//
//  ProfileDetailVC.swift
//  NCHomework
//
//  Created by Sevval Alev on 16.01.2023.
//

import UIKit

class ProfileDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func detailTapped(_ sender: Any) {
        performSegue(withIdentifier: "goDetailVC", sender: nil)
    }
    
}

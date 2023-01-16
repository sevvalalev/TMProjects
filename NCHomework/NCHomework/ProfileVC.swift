//
//  ProfileVC.swift
//  NCHomework
//
//  Created by Sevval Alev on 16.01.2023.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func profileDetailTapped(_ sender: Any) {
        performSegue(withIdentifier: "goProfilDetailVC", sender: nil)
    }
    
}

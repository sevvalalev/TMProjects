//
//  SettingsVC.swift
//  NCHomework
//
//  Created by Sevval Alev on 16.01.2023.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func settingsDetailTapped(_ sender: Any) {
        performSegue(withIdentifier: "goSettingsDetail", sender: nil)
    }
    
}

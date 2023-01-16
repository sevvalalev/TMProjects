//
//  ViewController.swift
//  NCHomework
//
//  Created by Sevval Alev on 16.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goProfileTapped(_ sender: Any) {
        performSegue(withIdentifier: "goProfileVC", sender: nil)
    }
    
    @IBAction func goSettingsTapped(_ sender: Any) {
        performSegue(withIdentifier: "goSettingsVC", sender: nil)
    }

}


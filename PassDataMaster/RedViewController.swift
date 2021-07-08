//
//  RedViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 09.06.2021.
//

import UIKit

class RedViewController: UIViewController {

    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = userDefaults.colorForKey(key: "red")
        self.view.backgroundColor = color
    }
}

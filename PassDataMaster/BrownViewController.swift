//
//  BrownViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 08.06.2021.
//

import UIKit

class BrownViewController: UIViewController {

    weak var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color
    }
  
}


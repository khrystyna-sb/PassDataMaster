//
//  PurpleViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 09.06.2021.
//

import UIKit

class PurpleViewController: UIViewController {

    var completionHandler: (() -> (UIColor))?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let color = completionHandler?()
        view.backgroundColor = color
    }
}

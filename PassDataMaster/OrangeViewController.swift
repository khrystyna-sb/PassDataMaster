//
//  OrangeViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 09.06.2021.
//

import UIKit

class OrangeViewController: UIViewController {

    var delegate: GetColorProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = delegate?.getColor()
    }
}

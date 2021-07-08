//
//  BlueViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 13.06.2021.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(gotNotification), name: .notificationFromMainViewController, object: nil)
    }
    
    @objc private func gotNotification(notification: Notification) {
        guard let userInfo = notification.userInfo else { return }
        guard let color = userInfo["color"] as? UIColor else { return }
        self.view.backgroundColor = color
    }
}


extension Notification.Name {
    static let notificationFromMainViewController = Notification.Name(rawValue: "notificationFromMainViewController")
}

//
//  MainViewController.swift
//  PassDataMaster
//
//  Created by Roma Test on 08.06.2021.
//

import UIKit

class MainViewController: UIViewController {

    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func brownUIButton(_ sender: UIButton) {
        let brownVC = BrownViewController()
        brownVC.color = .brown
        
        present(brownVC, animated: true) {
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                self.dismiss(animated: true)
            }
        }
    }
    
    
    @IBAction func orangeUIButton(_ sender: UIButton) {
        let orangeVC = OrangeViewController()
        orangeVC.delegate = self
        
        present(orangeVC, animated: true) {
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                self.dismiss(animated: true)
            }
        }
    }
    

    @IBAction func purpleUIButton(_ sender: UIButton) {
        let purpleVC = PurpleViewController()
        purpleVC.completionHandler = {
            return .purple
        }
        
        present(purpleVC, animated: true) {
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                self.dismiss(animated: true)
            }
        }
    }
    

    @IBAction func redUIButton(_ sender: UIButton) {
        let redVC = RedViewController()
        let color: UIColor = .red
        userDefaults.setColor(color: color, forKey: "red")
        
        present(redVC, animated: true) {
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                self.dismiss(animated: true)
            }
        }
    }
}


protocol GetColorProtocol: AnyObject {
    func getColor() -> UIColor
}


extension MainViewController: GetColorProtocol {
    func getColor() -> UIColor {
        return UIColor.orange
    }
    
}

extension UserDefaults {
func colorForKey(key: String) -> UIColor? {
    var colorReturnded: UIColor?
    if let colorData = data(forKey: key) {
      do {
        if let color = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(colorData) as? UIColor {
          colorReturnded = color
        }
      } catch {
        print("Error UserDefaults")
      }
    }
    return colorReturnded
  }
  
func setColor(color: UIColor?, forKey key: String) {
    var colorData: NSData?
    if let color = color {
      do {
        let data = try NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: false) as NSData?
        colorData = data
      } catch {
        print("Error UserDefaults")
      }
    }
    set(colorData, forKey: key)
  }
}

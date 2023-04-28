//
//  ViewController.swift
//  UITableView
//
//  Created by Chinara on 4/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTap(_ sender: UIButton) {
        let login = login.text
        if login == "" {
            self.login.layer.borderColor = UIColor.red.cgColor
            self.login.layer.borderWidth = 1
            self.login.placeholder = "Zapolnite"
        } else {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
}


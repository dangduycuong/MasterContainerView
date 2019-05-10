//
//  UnderViewController.swift
//  PassDataUsingClosure1
//
//  Created by duycuong on 5/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class UnderViewController: UIViewController {
    
    @IBOutlet weak var underTextField: UITextField!
    
    var fillText: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func passDataButton(sender: Any) {
        fillText?(underTextField.text)
    }

}

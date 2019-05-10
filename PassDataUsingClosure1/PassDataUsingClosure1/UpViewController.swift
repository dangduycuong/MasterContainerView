//
//  UpViewController.swift
//  PassDataUsingClosure1
//
//  Created by duycuong on 5/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class UpViewController: UIViewController {
    
    @IBOutlet weak var upLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fillText(text: String?) {
        upLabel.text = text
    }

}

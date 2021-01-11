//
//  UnderViewController.swift
//  MasterContainerView
//
//  Created by duycuong on 5/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class UnderViewController: UIViewController {
    
    @IBOutlet weak var underTextField: UITextField!

    var delegate: FillText?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - ACTION
    @IBAction func passTextButton(sender: UIButton) {
        delegate?.upLabel.text = underTextField.text
        
        
    }

}

//
//  UpViewController.swift
//  MasterContainerView
//
//  Created by duycuong on 5/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

protocol FillText {
    var upLabel: UILabel! { get set }
}

class UpViewController: UIViewController, FillText {
    
    
    @IBOutlet weak var upLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

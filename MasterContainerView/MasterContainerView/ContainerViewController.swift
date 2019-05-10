//
//  ViewController.swift
//  MasterContainerView
//
//  Created by duycuong on 5/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

enum SegueIdentifier: String {
    case upSegue = "upSegue"
    case underSegue = "underSegue"
}

class ContainerViewController: UIViewController {
    
    var upVC: UpViewController?
    
    var underVC: UnderViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        underVC?.delegate = upVC
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case SegueIdentifier.upSegue.rawValue:
            upVC = segue.destination as? UpViewController
        case SegueIdentifier.underSegue.rawValue:
            underVC = segue.destination as? UnderViewController
        default:
            return
        }
    }

}


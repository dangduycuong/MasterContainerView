////
////  UIViewController.swift
////  MasterContainerView
////
////  Created by Dang Duy Cuong on 1/11/21.
////  Copyright © 2021 duycuong. All rights reserved.
////
//
//import UIKit
//
//extension UIViewController {
//    func add(_ parent: UIViewController) {
//        parent.addChild(self)
//        parent.view.addSubview(view)
//        didMove(toParent: parent)
//    }
//
//    func remove() {
//        guard parent != nil else { return }
//
//        willMove(toParent: nil)
//        removeFromParent()
//        view.removeFromSuperview()
//    }
//}

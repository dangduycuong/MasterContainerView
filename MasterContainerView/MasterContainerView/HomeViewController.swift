//
//  HomeViewController.swift
//  MasterContainerView
//
//  Created by Dang Duy Cuong on 1/11/21.
//  Copyright © 2021 duycuong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var display: Int = 0 {
        didSet {
            switch display {
            case 0:
                remove(asChildViewController: redViewController)
                add(asChildViewController: greenViewController)
            case 1:
                remove(asChildViewController: greenViewController)
                add(asChildViewController: redViewController)
            default:
                break
            }
        }
    }
    
    private lazy var redViewController: RedViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var greenViewController: GreenViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    // Viết thêm hàm hỗ trợ chuyển View Controller
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)
        
        // Add Child View as Subview
        view.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }
    
    // Removing a Child View Controller
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParent()
    }
    
    private func updateView() {
        display = segmentedControl.selectedSegmentIndex
    }
    
    
    @IBAction func tapChangeSegment(_ sender: Any) {
        updateView()
    }
    
}

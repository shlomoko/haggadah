//
//  ViewControllerExtension.swift
//  Passover Hagadah
//
//  Created by Shana on 18/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import Foundation
import UIKit

private let swizzling: (UIViewController.Type) -> () = { viewController in
    
    let originalSelector = #selector(viewController.viewDidLoad)
    let swizzledSelector = #selector(viewController.proj_viewDidLoad)
    
    let originalMethod = class_getInstanceMethod(viewController, originalSelector)
    let swizzledMethod = class_getInstanceMethod(viewController, swizzledSelector)
    
    method_exchangeImplementations(originalMethod, swizzledMethod) }

extension UIViewController {
    
    open override class func initialize() {
        // make sure this isn't a subclass
        guard self === UIViewController.self else { return }
        swizzling(self)
    }
    
    // MARK: - Method Swizzling
    
    func proj_viewDidLoad() {
        self.proj_viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap)
        
    }
    
    func canPerformSegue(id: String) -> Bool {
        let segues = self.value(forKey: "storyboardSegueTemplates") as? [NSObject]
        let filtered = segues?.filter({ $0.value(forKey: "identifier") as? String == id })
        if let filt = filtered, filt.count > 0 {
            return true
        }
        return false
    }
    
    func doubleTapped() {
        let seg = "toMenu"
        if self.canPerformSegue(id: seg) {
            performSegue(withIdentifier: seg, sender: self)
        }
//        let modalViewController = PopupViewController()
//        modalViewController.modalPresentationStyle = .overCurrentContext
//        present(modalViewController, animated: true, completion: nil)
    }
}

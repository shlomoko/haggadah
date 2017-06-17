//
//  mainPageViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 17/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//



import UIKit

protocol menuDelegate {
    func moveToPage(page: Int)
}

class mainPageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedViewControllers.last {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
            self.newViewController(webPage: "End"),
            self.newViewController(webPage: "Gadya"),
            self.newViewController(webPage: "WhoKnowsOne"),
            self.newViewController(webPage: "Shfoch"),
            /*self.newViewController(webPage: "Betzet"),*/
            self.newViewController(webPage: "Tzafoon"),
            self.newViewController(webPage: "ShulchanOrech"),
            self.newViewController(webPage: "Rachtza"),
            self.newViewController(webPage: "Plagues"),
            self.newViewController(webPage: "Banim"),
            self.newViewController(webPage: "MaNishtana"),
            self.newViewController(webPage: "Arami"),
            self.newViewController(webPage: "Yachatz"),
            self.newViewController(webPage: "Karpas"),
            self.newViewController(webPage: "Urchatz"),
            self.newViewController(webPage: "Kadesh"),
            self.newViewController(webPage: "Cover")]
    }()
    
    private func newViewController(webPage: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "\(webPage)ViewController")
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension mainPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    
    
}

extension mainPageViewController: menuDelegate {
    func moveToPage(page: Int) {
        self.setViewControllers([orderedViewControllers[page]], direction: UIPageViewControllerNavigationDirection.forward, animated: true) { _ in
            
            DispatchQueue.main.async(execute: {
                self.setViewControllers([self.orderedViewControllers[page]], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
            })
        }
    }
    
    
}

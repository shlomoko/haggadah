//
//  mainPageViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 17/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//



import UIKit

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
        
        NotificationCenter.default.addObserver(self, selector: #selector(mainPageViewController.moveToPage(notification:)), name: Notification.Name("menuNotification"), object: nil)

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
            self.newViewController(webPage: "Shfoch"),//3
            self.newViewController(webPage: "Hallel"),
            /*self.newViewController(webPage: "Betzet"),*/
            self.newViewController(webPage: "Barech"),
            self.newViewController(webPage: "Tzafoon"),
            self.newViewController(webPage: "ShulchanOrech"),
            self.newViewController(webPage: "Rachtza"),//8
            self.newViewController(webPage: "Dayenu"),
            self.newViewController(webPage: "Plagues"),
            self.newViewController(webPage: "Banim"),//11
            self.newViewController(webPage: "Arami"),
            self.newViewController(webPage: "MaNishtana"),
            self.newViewController(webPage: "Yachatz"),
            self.newViewController(webPage: "Karpas"),//15
            self.newViewController(webPage: "Urchatz"),
            self.newViewController(webPage: "Kadesh"),
            self.newViewController(webPage: "Menu"),
            self.newViewController(webPage: "Cover")]//19
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

extension mainPageViewController {
    func moveToPage(notification: NSNotification) {
        self.setViewControllers([orderedViewControllers[notification.object as! Int]], direction: UIPageViewControllerNavigationDirection.forward, animated: true) { _ in
            
            DispatchQueue.main.async(execute: {
                self.setViewControllers([self.orderedViewControllers[notification.object as! Int]], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
            })
        }
    }
    
    
}

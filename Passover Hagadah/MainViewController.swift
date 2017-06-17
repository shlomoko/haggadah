//
//  MainViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 26/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//
import WebKit
import UIKit

class MainViewController: UIViewController, WKNavigationDelegate, UIScrollViewDelegate {

    init(resource: String) {
        super.init(nibName: nil, bundle: nil)
        self.resource = resource
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var resource : String!
    var webView : WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = URL(fileURLWithPath: Bundle.main.path(forResource: resource, ofType: "html")!)
        
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
        
        // init and load request in webview.
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        webView.scrollView.delegate = self
        webView.scrollView.bounces = false
        webView.loadFileURL(fileURL, allowingReadAccessTo: fileURL)
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK:- WKNavigationDelegate
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start to load")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollView.pinchGestureRecognizer?.isEnabled = false
    }
    
    
}

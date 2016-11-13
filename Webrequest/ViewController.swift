//
//  ViewController.swift
//  Webrequest
//
//  Created by Lewis Jones on 23/01/2016.
//  Copyright © 2016 Rodrigo Pena. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        loadRequest("http://www.buzzfeed.com/")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        func loadRequest(urlStr: String) {
            
            let url = NSURL(string: urlStr)!
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
        
        
        
    }


    @IBAction func loadNetflix(sender: AnyObject) {
    loadRequest("http://www.netflix.com/")
    }
    @IBAction func loadBuzzfeed(sender: AnyObject) {
        loadRequest("http://www.buzzfeed.com/")

    }
    
    @IBAction func loadFacebook(sender: AnyObject) {
        loadRequest("https://www.facebook.com/")
    }
}
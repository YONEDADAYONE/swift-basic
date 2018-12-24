//
//  ViewController.swift
//  stv_project_2.1.6
//
//  Created by 米田大弥 on 2018/12/21.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet private weak var mywebView: UIWebView!
    
    @IBAction func tapButton(_ sender: UIButton) {
        let url = URL(string: "https://www.yahoo.co.jp/")
        let urlRequest = URLRequest(url: url!)
        mywebView.loadRequest(urlRequest)
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        mywebView.goBack()
    }
    
    @IBAction func goForward(_ sender: UIButton) {
        mywebView.goForward()
    }
    
    @IBAction func reload(_ sender: UIButton) {
        
        mywebView.reload()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mywebView.delegate = self
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}
//
//  WebSearchViewController.swift
//  WebViewPractice
//
//  Created by 강민혜 on 7/28/22.
//

import UIKit
import WebKit

class WebSearchViewController: UIViewController, ViewPresentableProtocol {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var closeButton: UIBarButtonItem!
    @IBOutlet weak var goBackButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    @IBOutlet weak var goForwardButton: UIBarButtonItem!
    
    
    var destinationURL: String = "https://www.daum.net"
    var backgroundColor: UIColor = .systemGray5
    static let identifiers: String = "WebSearchViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openWebPage(url: destinationURL)
        searchBar.delegate = self
        
        
    }
    
    // MARK: - 웹페이지 열기 메서드
    func openWebPage(url: String) {
        guard let url = URL(string: url) else {
            print("유효하지 않은 주소입니다!")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    // MARK: - tool bar item UI 설정
    func configureBarItem() {
        closeButton = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: nil)
        
        goBackButton = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(goBackButtonClicked))
        
        reloadButton = UIBarButtonItem(image: UIImage(systemName: "arrow.clockwise"), style: .plain, target: self, action: #selector(reloadButtonClicked))
        
        goForwardButton = UIBarButtonItem(image: UIImage(systemName: "arrow.right"), style: .plain, target: self, action: #selector(goForwardButtonClicked))
    }
    
    @objc
    func goBackButtonClicked() {
        
    }

    
    @objc
    func reloadButtonClicked() {
        
        
    }
    
    @objc
    func goForwardButtonClicked() {
        
        
    }
}


extension WebSearchViewController : UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        openWebPage(url: searchBar.text!)
    }
    
    
    
    
}










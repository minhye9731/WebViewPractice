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
//        configureBarItem()
        
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
    
    // MARK: - tool bar item 액션 설정
    
    @IBAction func closeButtonClicked(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goBackButtonClicked(_ sender: UIBarButtonItem) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func reloadButtonClicked(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    @IBAction func goForwardButtonClicked(_ sender: UIBarButtonItem) {
        if webView.canGoForward {
            webView.goForward()
        }
    }

}

// MARK: - search bar 액션 연결
extension WebSearchViewController : UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        openWebPage(url: searchBar.text!)
    }
    
}










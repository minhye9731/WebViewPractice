//
//  ViewController.swift
//  WebViewPractice
//
//  Created by 강민혜 on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnTapped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: WebSearchViewController.identifiers) as! WebSearchViewController
        
        vc.modalPresentationStyle = .pageSheet
        
        self.present(vc, animated: true, completion: nil)
    }

}


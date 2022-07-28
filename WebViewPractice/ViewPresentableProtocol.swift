//
//  ViewPresentableProtocol.swift
//  WebViewPractice
//
//  Created by 강민혜 on 7/28/22.
//

import Foundation
import UIKit

protocol ViewPresentableProtocol {
    
    var backgroundColor: UIColor { get }
    static var identifiers: String { get }

}

//
//  KeyBoardDismisser.swift
//  StartApp
//
//  Created by ziad on 10/10/2021.
//

import Foundation
import UIKit
extension UIViewController{
    func dismissKeyboard(){
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view?.addGestureRecognizer(tap)
    }
    

}


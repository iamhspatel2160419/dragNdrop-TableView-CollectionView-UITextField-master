//
//  TextFieldCollectionViewCell.swift
//  Lecture 11 - dragNdrop TableView CollectionView
//
//  Created by Michel Deiman on 12/01/2018.
//  Copyright © 2018 Michel Deiman. All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
            textField.clearsOnBeginEditing = true
        }
    }
    
    var resignationHandler: (()-> Void)?
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
//        textField
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

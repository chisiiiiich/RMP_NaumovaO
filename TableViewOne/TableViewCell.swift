//
//  TableViewCell.swift
//  TableViewOne
//
//  Created by admin on 09.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
  
 
    let textField: UITextField = {
        let tf = UITextField()
           tf.translatesAutoresizingMaskIntoConstraints = false
           tf.backgroundColor = .lightGray
        tf.textColor = .blue
            tf.borderStyle = UITextField.BorderStyle.roundedRect
            return tf
        }()

    
    func TF(with placeholder: String){
        textField.placeholder = placeholder
        if placeholder == "password" {
            textField.isSecureTextEntry = true
       }
       
        
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        setYP()
    }
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    
  func setYP(){
         addSubview(textField)
             NSLayoutConstraint.activate([
               textField.heightAnchor.constraint(equalToConstant: 56),
                textField.topAnchor.constraint(equalTo: topAnchor, constant: 4),
                 textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
                 textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
                 textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
             ])
    
    }
     
}

//
//  TableViewCell.swift
//  TableViewOne
//
//  Created by admin on 09.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

protocol TextFieldTableViewDelegate: AnyObject {
    func placeholderChangedInCell(cell: TextFieldViewCell,  placeholder: String)
}

class TextFieldViewCell: UITableViewCell,UserTableView {
   
    weak var delegate: TextFieldTableViewDelegate?
    
    lazy var textField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .lightGray
        tf.textColor = .blue
        tf.borderStyle = UITextField.BorderStyle.roundedRect
        return tf
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI(){
        self.contentView.addSubview(textField)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[textField]|", options: [], metrics: nil, views: ["textField": textField]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[textField]-|", options: [], metrics: nil, views: ["textField": textField]))                //Вот тут исправить
         }

    func config(type: CellTypes) {
        switch type {
            case .name:
                textField.placeholder = "Введите имя"
            case .email:
                textField.placeholder = "Введите email"
            case .password:
                textField.placeholder = "Введите пароль"
                textField.isSecureTextEntry = true
            default: break;
            }
}
    
    var cellIdentifier: String {
          return CellIdentifier.textFieldCell
      }
    
}


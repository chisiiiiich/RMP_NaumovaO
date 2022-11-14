//
//  button.swift
//  TableViewOne
//
//  Created by admin on 10.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit


protocol ViewDelegate: AnyObject {
    func viewTapped(_View: ButtonViewCell, param: UIButton)
}

class ButtonViewCell: UITableViewCell,UserTableView{
    var ViewDelegate: ViewDelegate?
    lazy var button: UIButton = {
        let bt = UIButton()
        bt.backgroundColor = .blue
      //  bt.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
        
     func setupUI() {
        self.contentView.addSubview(button)
        
          addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(5)-[button]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["button": button]))
              addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[button]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["button": button]))
    }

     func config(type: CellTypes) {
        switch type {
        case .registration:
            button.setTitle("Зарегистрироваться", for: .normal)
        case .login:
            button.setTitle("Войти", for: .normal)
        default: break;
        }
    }
    
    var cellIdentifier: String {
          return CellIdentifier.buttonCell
      }
    
  /*  @objc func buttonTapped(param: UIButton) {
        viewDelegate?.ViewTapped(_View: self, param: param)
    }*/
}

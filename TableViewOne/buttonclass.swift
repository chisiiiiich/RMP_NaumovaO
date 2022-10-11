//
//  button.swift
//  TableViewOne
//
//  Created by admin on 10.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

class buttonclass: UITableViewCell {

      override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
                         setYP()
        }
         required init?(coder: NSCoder) {
             fatalError("init(coder:) has not been implemented")
         }
        
     let button: UIButton = {
            let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
        //  bt.backgroundColor = .yellow
            return bt
        }()
        
        func  bt(wich text: String, colour:UIColor)  {
            button.setTitle(text, for: .normal)
            button.backgroundColor = colour
        }

    
    
     func setYP(){
         // addSubview(textField)
         addSubview(button)
       //textField.frame = bounds
      // button.frame = bounds
              NSLayoutConstraint.activate([
              
                button.heightAnchor.constraint(equalToConstant: 56),
                 button.topAnchor.constraint(equalTo: topAnchor, constant: 4),
                  button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
                 button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
                 button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
           
              ])

     
        }
     
}

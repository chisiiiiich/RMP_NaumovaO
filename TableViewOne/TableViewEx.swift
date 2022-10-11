//
//  TableViewEx.swift
//  TableViewOne
//
//  Created by admin on 08.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

class TableViewEx: UITableViewCell{
       
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: label.font.fontName, size: 25)
        label.textColor = .black
        label.textAlignment = .center
     //  label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    set()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
            
    override func prepareForReuse() {
           super.prepareForReuse()
       }

    func labelText (wich title: String){
        infoLabel.text = title
    }
    
    func color(colour :UIColor)  {
           backgroundColor = colour
    }
    
     func set() {
        //  selectionStyle = .none
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(infoLabel)
          NSLayoutConstraint.activate([
           
              infoLabel.heightAnchor.constraint(equalToConstant: 56),
              infoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
              infoLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
              infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
              infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
       
          ])
 
    }
 
}

     



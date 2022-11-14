//
//  TableViewEx.swift
//  TableViewOne
//
//  Created by admin on 08.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit



class LabelViewCell: UITableViewCell,UserTableView{
    
  lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
    label.font = UIFont(name: "Helvetica Neue", size: TextConst.size)
        label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()
    
    //private var model: TextModelInit?
   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
            
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    
    func config (type: CellTypes){
        switch type {
        case .textLabelReg:
           infoLabel.text = "Регистрация"
        case .textLabelLogin: infoLabel.text = "Уже есть аккаунт?"
    
        default:
            break;
        }
   }
    
     func setupUI() {
        self.contentView.addSubview(infoLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[infoLabel]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["infoLabel": infoLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[infoLabel]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["infoLabel": infoLabel]))
        
    }
  var cellIdentifier: String {
        return CellIdentifier.labelCell
    }
    
}

     



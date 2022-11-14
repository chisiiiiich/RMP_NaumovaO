//
//  ViewController.swift
//  TableViewOne
//
//  Created by admin on 08.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit




/*extension ViewController {
    func HideKeyboardOnTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}*/

protocol TabCell {
      var cellIdentifier: String{get}
      func config(type:CellTypes)
}

protocol UserTableView:UITableViewCell, TabCell{

}

class AuthViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate{
   
    var tableView = UITableView()
    
    private var datas:[CellTypes] = [.textLabelReg, .name, .email, .password, .registration,.textLabelLogin, .login]
    private var cellIdentifier:[String] =  [CellIdentifier.labelCell, CellIdentifier.textFieldCell, CellIdentifier.textFieldCell,CellIdentifier.textFieldCell, CellIdentifier.buttonCell, CellIdentifier.labelCell, CellIdentifier.buttonCell]
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = UIScreen.main.bounds.width
        let displayHeight: CGFloat = UIScreen.main.bounds.height
        tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        
        tableView.register(LabelViewCell.self, forCellReuseIdentifier: CellIdentifier.labelCell)
        tableView.register(TextFieldViewCell.self, forCellReuseIdentifier: CellIdentifier.textFieldCell)
        tableView.register(ButtonViewCell.self, forCellReuseIdentifier: CellIdentifier.buttonCell)
        
        self.view.addSubview(tableView)
        setupUI()
        setTableViewDelegate()

    }

    func register(){
       
        
    }
    
    func setupUI(){
        navigationItem.title = NavigationItemTitle.navTitle
        tableView.separatorStyle = .none
        
    }
    
    
    func setTableViewDelegate(){
        tableView.delegate  = self
        tableView.dataSource = self
     }
}

extension AuthViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell:  UserTableView = tableView.dequeueReusableCell(withIdentifier: (cellIdentifier[indexPath.row]), for: indexPath) as! UserTableView
        cell.config(type: datas[indexPath.row])
        return cell
    }
}



//
//  ViewController.swift
//  TableViewOne
//
//  Created by admin on 08.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

class ViewController: UIViewController{  //, UITextFieldDelegate {
     
    private var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        tableView.register(TableViewEx.self, forCellReuseIdentifier: NSStringFromClass(TableViewEx.self))
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TebView")
        tableView.register(buttonclass.self, forCellReuseIdentifier: "butclass")
       self.view.addSubview(tableView)
         set()
     setTableView()
        self.hideKeyboard()
    }
        
        func setTableView(){
          // tableView.delegate  = self
            tableView.dataSource = self
        }

 func set(){
    navigationItem.title = "First Lab"
        tableView.separatorStyle = .none
    }
    
}




extension ViewController: UITableViewDataSource, UITableViewDelegate{
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 8
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = NSStringFromClass(TableViewEx.self)
        let cell: TableViewEx = tableView.dequeueReusableCell(withIdentifier: identifier) as! TableViewEx
        let cell1 :TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TebView") as! TableViewCell
        let cell2 :buttonclass = tableView.dequeueReusableCell(withIdentifier: "butclass") as! buttonclass
        switch  indexPath.row {
        case 1:
            cell.labelText(wich: "Регистрация")
              return cell
        case 2:
            cell1.TF(with: "Email")
          
          return cell1
        case 3:
            cell1.TF(with: "name")
        return cell1
        case 4:
            cell1.TF(with: "password")
        return cell1
           case 5:
        cell2.bt(wich:"Зарегистрироваться",colour:.blue)
        return cell2
        case 6:
            cell.labelText(wich: "Уже есть аккаунт?")
        return cell
        case 7:
            cell2.bt(wich:"Войти",colour:.blue)
        return cell2
        default:
             return cell
        }

}
}
        
extension ViewController{
    func hideKeyboard () {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
   

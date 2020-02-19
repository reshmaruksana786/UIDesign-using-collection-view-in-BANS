//
//  ViewController.swift
//  UIDesign
//
//  Created by apple on 19/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var names = ["Ref-11500043123","Ref-11580280201","Ref-11580280201","Mohammad","Mohammad","Mohammad"]
    var dates = ["19-02-2020","20-02-2020","21-02-2020","22-02-2020","23-02-2020","24-02-2020"]
    var receivers = ["02 umrah","02 umrah","02 umrah","Acting Haji","Acting Haji","Acting Haji"]
    var amount = ["1000.00 INR","6000.00 INR","12000.00 INR ","5000.00 INR","465.00 INR","6788.00 INR"]
    var transactionTypes = ["coupon","card","wallet","Referal","Referal","Referal"]
    var outputs = ["success","debited","debited","credited","credited","credited"]
    
    let cellSpace:CGFloat = 7
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {

        return cellSpace
    }
    


    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
         let tableViewWidth = tableView.bounds

               let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableViewWidth.size.width, height: tableView.sectionHeaderHeight))
               headerView.backgroundColor = UIColor.clear

                return headerView

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "567", for: indexPath) as! Custom2TableViewCell
        

        cell.nameAndID!.text = names[indexPath.section]

        
        cell.layer.borderWidth = 1
        let borderColor: UIColor =  .black
        
        cell.layer.borderColor = borderColor.cgColor
        
        cell.backgroundColor = .lightText

        cell.layer.cornerRadius = 20
        cell.clipsToBounds  = true
        cell.date?.text = dates[indexPath.section]
        cell.receiver?.text = receivers[indexPath.section]
        cell.amount?.text = amount[indexPath.section]
        cell.transactionType?.text = transactionTypes[indexPath.section]
        cell.output?.text = outputs[indexPath.section]

        navigationController?.navigationBar.backgroundColor = .green
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let target = storyboard?.instantiateViewController(identifier: "789") as! SecondViewController
        
        present(target, animated: true, completion: nil)
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    

    @IBOutlet weak var tableView3: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myviewv = UINib(nibName: "Custom2TableViewCell", bundle: nil)
        tableView3.register(myviewv, forCellReuseIdentifier: "567")
       
        tableView3.delegate = self
        tableView3.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }


}


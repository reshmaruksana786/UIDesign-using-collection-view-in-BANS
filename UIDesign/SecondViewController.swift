//
//  SecondViewController.swift
//  UIDesign
//
//  Created by apple on 19/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView3: UITableView!
    
    var names = ["Ref-11580280201","Ref-11050004323","Ref-11580280201","Ref-11580280201","Ref-11580280201","Ref-11580280201"]
       var dates = ["2020-02-05","2020-02-05","2020-02-05","2020-02-05","2020-02-05","2020-02-05"]
       var receivers = ["02 umrah","02 umrah","02 umrah","02 umrah","02 umrah","02 umrah"]
       var amount = ["4500.00 INR","6000.00 INR","6000.00 INR ","6000.00 INR","",""]
       var transactionTypes = ["wallet","Coupon","Card","Wallet","6000.00 INR","6000.00 INR"]
       var outputs = ["Credited","Success","Debited","Debited","Coupon","Coupon"]
        
    var cellSpace:CGFloat = 7
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return names.count
        }
        
        
        func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
            return cellSpace
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
             let tableViewWidth = tableView.bounds

                   let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableViewWidth.size.width, height: tableView.sectionHeaderHeight))
                   headerView.backgroundColor = UIColor.clear

                    return headerView

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

            return cell
        }
     
    
    @IBAction func dismiss(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            let target = storyboard?.instantiateViewController(identifier: "789") as! SecondViewController
            
            navigationController?.pushViewController(target, animated: true)
            
            
        }
        
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
            
        }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myviewv = UINib(nibName: "Custom2TableViewCell", bundle: nil)
         tableView3.register(myviewv, forCellReuseIdentifier: "567")
        
         tableView3.delegate = self
         tableView3.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

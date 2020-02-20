//
//  FiltDataViewController.swift
//  UIDesign
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class FiltDataViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var wallet = [String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
            
         if (DataManage.shared.transactionValue == 0){
                 
                return DataManage.shared.wallet.count
                 
             }
             if (DataManage.shared.transactionValue == 1){
                 
               return  DataManage.shared.coupon.count
             }
             if (DataManage.shared.transactionValue == 2){
                 
                return DataManage.shared.card.count
             }
            
                 
               return   DataManage.shared.referal.count
              
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "567", for: indexPath) as! Custom2TableViewCell
                

        //        cell.nameAndID!.text = names[indexPath.section]

                
                cell.layer.borderWidth = 1
                let borderColor: UIColor =  .black
                
                cell.layer.borderColor = borderColor.cgColor
                
                cell.backgroundColor = .lightText
                print(DataManage.shared.names)
                cell.layer.cornerRadius = 20
                cell.clipsToBounds  = true
                cell.nameAndID.text = DataManage.shared.names[indexPath.section]
                cell.date.text = DataManage.shared.dates[indexPath.section]
                cell.receiver?.text = DataManage.shared.receivers[indexPath.section]
                cell.amount?.text = DataManage.shared.amount[indexPath.section]
                cell.output?.text = DataManage.shared.outputs[indexPath.section]
        
        
        
        if(DataManage.shared.transactionValue == 0){
            
            cell.transactionType.text = DataManage.shared.wallet[indexPath.section]
            
            return cell
        }
        if(DataManage.shared.transactionValue == 1){
            cell.transactionType.text = DataManage.shared.coupon[indexPath.section]
            return cell
        }
        if(DataManage.shared.transactionValue == 2){
            cell.transactionType.text = DataManage.shared.card[indexPath.section]
            
            return cell
        }
        cell.transactionType.text = DataManage.shared.referal[indexPath.section]
        
        return cell
    }
    

    @IBOutlet weak var viewTable: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTable.delegate = self
        viewTable.dataSource = self

        let myviewv = UINib(nibName: "Custom2TableViewCell", bundle: nil)
               viewTable.register(myviewv, forCellReuseIdentifier: "567")
        
        
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

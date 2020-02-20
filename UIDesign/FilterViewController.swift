//
//  FilterViewController.swift
//  UIDesign
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return transactionTypes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "444", for: indexPath)
        
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 50))
        title.text = transactionTypes[indexPath.row]
        title.font = UIFont(name: "AvenirNext-Bold", size: 15)
        title.textColor = .white
        title.textAlignment = .center
        title.frame = CGRect(x: 10, y: 30, width: 150, height: 20)
        cell.contentView.addSubview(title)
        
        
        let title2 = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 50))
        title2.text = transactionTypes[indexPath.row]
        title2.font = UIFont(name: "AvenirNext-Bold", size: 15)
        title2.textColor = .white
        title2.textAlignment = .center
        title2.frame = CGRect(x: 10, y: 60, width: 150, height: 10)
        cell.contentView.addSubview(title2)
    
        
        cell.contentView.layer.cornerRadius = 15
        cell.contentView.clipsToBounds = true
        
        
        cell.contentView.backgroundColor = .lightGray
        
        
        
//        cell.textLabel?.text = transactionTypes[indexPath.row]
               
               if(indexPath.row == 0){

                title2.text = "\(DataManage.shared.wallet.count)"

                   return cell

               }
               if(indexPath.row == 1){

                   title2.text = "\(DataManage.shared.coupon.count)"

                   return cell

               }
               if(indexPath.row == 2){

                   title2.text = "\(DataManage.shared.card.count)"
                   return cell

               }
                title2.text = "\(DataManage.shared.referal.count)"
               
               return cell
        
        
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
//
//
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        
        return CGSize(width: 170, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         DataManage.shared.transactionValue =  indexPath.item
               
               print(DataManage.shared.transactionValue!)
               
               let target = storyboard?.instantiateViewController(identifier: "acc") as! FiltDataViewController
               
               present(target, animated: true, completion: nil)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    var transactionTypes = ["wallet Payments","Coupon Payments","Card Payments","Referal Payments"]
  
    @IBOutlet weak var filterTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

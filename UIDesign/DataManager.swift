//
//  DataManager.swift
//  UIDesign
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation


class DataManage: NSObject {
    
    
    static var shared = DataManage()
    
    
         var names = [String]()
          var dates = [String]()
          var receivers = [String]()
          var amount = [String]()
          var transactionTypes = [String]()
          var outputs = [String]()
    
    var wallet = [String]()
    var card = [String]()
    var referal = [String]()
    var coupon = [String]()
    
    
    var transactionValue:Int!
    
    
}

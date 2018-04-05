//
//  BMIHistoryVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 03/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class BMIHistoryVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var bMIHistoryVCView: UIView!
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var navImageView: UIImageView!
    @IBOutlet weak var bMIHistoryTableView: UITableView!
    
    //MARK:--> IBActions
    //==================
    @IBAction func backBtn(_ sender: Any) {
    }
    
    //MARK:--> VC life cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTable()
        self.registerNibs()
    }
    
    override func viewDidLayoutSubviews() {
        self.setLayout()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension BMIHistoryVC{
    
    //MARK:--> Register Nib
    //=====================
    func registerNibs(){
        self.bMIHistoryTableView.register(UINib(nibName: "BMIHistoryCell", bundle: nil), forCellReuseIdentifier: "BMIHistoryCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setLayout(){
        self.bMIHistoryVCView.backgroundColor = AppColors.themeBlackColor
    }
}

//MARK:--> Table view methods
//===========================
extension BMIHistoryVC: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.bMIHistoryTableView.dataSource = self
        self.bMIHistoryTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.bMIHistoryTableView.dequeueReusableCell(withIdentifier: "BMIHistoryCellID", for: indexPath) as! BMIHistoryCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

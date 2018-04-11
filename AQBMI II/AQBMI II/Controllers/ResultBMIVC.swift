//
//  ResultBMIVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 06/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ResultBMIVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var resultBMIBackView: UIView!
    @IBOutlet weak var resultBMINavView: UIView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var navTitleLabel: UILabel!
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var bMIStatsBtn: UIButton!
    @IBOutlet weak var resultBMITableView: UITableView!
    
    //MARK:--> IBActions
    //==================
    @IBAction func backBtn(_ sender: UIButton) {
    }
    @IBAction func shareBtn(_ sender: Any) {
    }
    @IBAction func bMIStatsBtn(_ sender: Any) {
    }
    
    //MARK:--> VC life cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTable()
        self.registerNib()
    }
    
    override func viewDidLayoutSubviews() {
        self.setLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        statusBarView.backgroundColor = AppColors.themeBlackColor
        view.addSubview(statusBarView)
        return UIStatusBarStyle.lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ResultBMIVC{
    
    //MARK:--> Register Nib
    //=====================
    func registerNib(){
        self.resultBMITableView.register(UINib(nibName: "TipsHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "TipsHeaderCellID")
        self.resultBMITableView.register(UINib(nibName: "TipsCell", bundle: nil), forCellReuseIdentifier: "TipsCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setLayout(){
        self.resultBMITableView.backgroundColor = AppColors.themeBlackColor
        self.resultBMINavView.backgroundColor = AppColors.darkGreyThreeColor
        self.navTitleLabel.font = AppFonts.Poppins_Medium.withSize(16.0)
        self.navTitleLabel.textColor = AppColors.whiteColor
        self.navTitleLabel.text = StringConstants.K_BMI_Result
    }
}

//MARK:--> Table view methods
//===========================
extension ResultBMIVC: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.resultBMITableView.dataSource = self
        self.resultBMITableView.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 2
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        let row = indexPath.row
        if section == 0{
            switch row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ResultBMIID", for: indexPath) as! ResultBMI
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ResultBodyFatID", for: indexPath) as! ResultBodyFat
                return cell
            }
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TipsCellID", for: indexPath) as! TipsCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = indexPath.row
        let section = indexPath.section
        if section == 0{
            switch row {
            case 0:
                return 327
            case 1:
                return 312
            default:
                return 0.0
            }
        }
        else{
            return 110
        }
        
    }
    
    //Header methods
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            return UITableViewCell()
        }
        else{
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TipsHeaderCellID") as! TipsHeaderCell
            return headerView
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0.001
        }
        else{
            return 52.0
        }
    }
    
    //Footer methods
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 1{
            let footer = UITableViewCell()
            footer.backgroundColor = .clear
            return footer
        }
        else{
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 1{
            return 15
        }
        else{
            return 0.001
        }
    }
}

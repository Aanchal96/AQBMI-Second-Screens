//
//  ResultPreviewVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 04/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ResultPreviewVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var resultPreviewVCView: UIView!
    @IBOutlet weak var resultPreviewTableView: UITableView!
    
    //MARK:--> VC life cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNibs()
        self.setTable()
    }
    
    override func viewDidLayoutSubviews() {
        self.setLayout()
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        //        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        //        statusBarView.backgroundColor = AppColors.darkGreyFourColor
        //        view.addSubview(statusBarView)
        return UIStatusBarStyle.lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ResultPreviewVC{
    
    //MARK:--> Register Nib
    //=====================
    func registerNibs(){
        self.resultPreviewTableView.register(UINib(nibName: "BMIResultFirstCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "BMIResultFirstCellID")
        self.resultPreviewTableView.register(UINib(nibName: "BMIResultCell", bundle: nil), forCellReuseIdentifier: "BMIResultCellID")
        self.resultPreviewTableView.register(UINib(nibName: "SectionsHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "SectionsHeaderCellID")
        self.resultPreviewTableView.register(UINib(nibName: "OtherStatsCell", bundle: nil), forCellReuseIdentifier: "OtherStatsCellID")
        self.resultPreviewTableView.register(UINib(nibName: "TipsCell", bundle: nil), forCellReuseIdentifier: "TipsCellID")
        self.resultPreviewTableView.register(UINib(nibName: "BMIResultCell", bundle: nil), forCellReuseIdentifier: "BMIResultCellID")
        self.resultPreviewTableView.register(UINib(nibName: "ShareBarCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "ShareBarCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setLayout(){
        self.resultPreviewTableView.backgroundColor = AppColors.themeBlackColor
    }
}

//MARK:--> Table view methods
//===========================
extension ResultPreviewVC: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.resultPreviewTableView.dataSource = self
        self.resultPreviewTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 0
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        switch section {
        case 1:
            let cell = self.resultPreviewTableView.dequeueReusableCell(withIdentifier: "BMIResultCellID", for: indexPath) as! BMIResultCell
            return cell
        case 2:
            let cell = self.resultPreviewTableView.dequeueReusableCell(withIdentifier: "OtherStatsCellID", for: indexPath) as! OtherStatsCell
            return cell
        case 3:
            let cell = self.resultPreviewTableView.dequeueReusableCell(withIdentifier: "TipsCellID", for: indexPath) as! TipsCell
            return cell
        case 4:
            let cell = self.resultPreviewTableView.dequeueReusableCell(withIdentifier: "BodyImproveCellID", for: indexPath) as! BodyImproveCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
        switch section {
        case 1:
            return 94
        case 2:
            return 158
        case 3:
            return 110
        case 4:
            return 70
        default:
            return 0.001
        }
    }
    
    //Header methods
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "BMIResultFirstCellID") as! BMIResultFirstCell
            return headerView
        default:
            let sectionHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: "SectionsHeaderCellID") as! SectionsHeaderCell
            sectionHeader.populateData(index: section)
            return sectionHeader
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 128
            
        default:
            return 65
        }
    }
    
    //Footer Methods
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 4{
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ShareBarCellID") as! ShareBarCell
            return footer
        }
        else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 4{
            return 50
        }
        else{
            return 0.001
        }
    }
}

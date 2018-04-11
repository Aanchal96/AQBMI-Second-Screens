//
//  SurveyHistoryVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 03/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SurveyHistoryVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var surveyHistoryVCView: UIView!
    @IBOutlet weak var surveyHistoryTableView: UITableView!
    
    //MARK:--> VC life cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTable()
    }
    
    override func viewDidLayoutSubviews() {
        self.setLayout()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SurveyHistoryVC{
    
    //MARK:--> Layouts
    //================
    func setLayout(){
        self.surveyHistoryVCView.backgroundColor = AppColors.themeBlackColor
    }
}

//MARK:--> Table view methods
//===========================
extension SurveyHistoryVC: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.surveyHistoryTableView.dataSource = self
        self.surveyHistoryTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.surveyHistoryTableView.dequeueReusableCell(withIdentifier: "SurveyHistoryCellID", for: indexPath) as! SurveyHistoryCell
        cell.populateData(index: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SurveyAnswersID") as! SurveyAnswersVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

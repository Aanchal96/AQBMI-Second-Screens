//
//  SurveyAnswersVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 09/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SurveyAnswersVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var surveyAnswersVCBackView: UIView!
    @IBOutlet var navView: UIView!
    @IBOutlet var navTitleLabel: UILabel!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var surveyAnswersTableView: UITableView!
    
    //MARK:--> IBActions
    //==================
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    //MARK:--> VC life cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTable()
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

extension SurveyAnswersVC{
    
    //MARK:--> Layouts
    //================
    func setLayout(){
        self.surveyAnswersVCBackView.backgroundColor = AppColors.themeBlackColor
        self.navTitleLabel.font = AppFonts.Poppins_Medium.withSize(16.0)
        self.navTitleLabel.textColor = AppColors.whiteColor
        self.navTitleLabel.text = StringConstants.K_Survey
    }
}

//MARK:--> Table view methods
//===========================
extension SurveyAnswersVC: UITableViewDelegate,UITableViewDataSource{
    
    func setTable(){
        self.surveyAnswersTableView.dataSource = self
        self.surveyAnswersTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SurveyAnswersCellID", for: indexPath) as! SurveyAnswersCell
        cell.populateData(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

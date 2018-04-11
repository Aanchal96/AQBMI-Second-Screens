 //
 //  HistoryScrollVC.swift
 //  AQBMI II
 //
 //  Created by Appinventiv on 10/04/18.
 //  Copyright © 2018 Appinventiv. All rights reserved.
 //
 
 import UIKit
 
 class HistoryScrollVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var backView: UIView!
    @IBOutlet var navView: UIView!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var navImageView: UIImageView!
    @IBOutlet var tabBarView: UIView!
    @IBOutlet var bMIHistoryBtn: UIButton!
    @IBOutlet var surveyHistoryBtn: UIButton!
    @IBOutlet var historyScrollView: UIScrollView!
    
    //MARK:--> IBActions
    //==================
    @IBAction func backBtn(_ sender: Any) {
    }
    
    @IBAction func bMIHistoryBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.1, animations:{
            self.historyScrollView.contentOffset = CGPoint(x:0, y:0)
        })
    }
    
    @IBAction func surveyHistoryBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.1, animations:{
            self.historyScrollView.contentOffset = CGPoint(x:self.view.bounds.width, y:0)
        })
    }
    
    //MARK:--> VC Life Cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadVC()
        self.historyScrollView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        statusBarView.backgroundColor = AppColors.themeBlackColor
        view.addSubview(statusBarView)
        return UIStatusBarStyle.lightContent
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.setLayouts()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 }
 
 extension HistoryScrollVC{
    
    //MARK:--> Instantiating VCs
    //==========================
    func loadVC(){
        let bMI:BMIHistoryVC = (self.storyboard?.instantiateViewController(withIdentifier: "BMIHistoryID") as? BMIHistoryVC)!
        self.historyScrollView.addSubview(bMI.view)
        self.addChildViewController(bMI)
        bMI.didMove(toParentViewController: self)
        
        let survey:SurveyHistoryVC = (self.storyboard?.instantiateViewController(withIdentifier: "SurveyHistoryID") as? SurveyHistoryVC)!
        
        survey.view.frame = CGRect(x: view.frame.width, y: 0, width: view.frame.width, height: view.frame.height)
        
        self.historyScrollView.addSubview(survey.view)
        self.addChildViewController(survey)
        survey.didMove(toParentViewController: self)
    }
    
    //MARK:--> Layouts
    //================
    func setLayouts(){
        self.backView.backgroundColor = AppColors.themeBlackColor
        
        self.historyScrollView.contentSize = CGSize(width: 2 * view.frame.width, height: historyScrollView.frame.height)
    
        self.bMIHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(24.0)
        self.bMIHistoryBtn.setTitleColor(AppColors.whiteColor, for: .normal)
        self.surveyHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(19.0)
        self.surveyHistoryBtn.setTitleColor(AppColors.battleshipGreyColor, for: .normal)
//        self.bMIHistoryBtn.titleLabel?.text = StringConstants.K_BMI_History
//        self.surveyHistoryBtn.titleLabel?.text = StringConstants.K_Survey_History
    }
 }
 
 extension HistoryScrollVC: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //historyScrollView.contentOffset.y = 0
        let offset = self.historyScrollView.contentOffset.x
        if offset == 0{
            UIView.animate(withDuration: 0.0, animations:{
                self.bMIHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(24.0)
                self.bMIHistoryBtn.setTitleColor(AppColors.whiteColor, for: .normal)
                self.surveyHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(19.0)
                self.surveyHistoryBtn.setTitleColor(AppColors.battleshipGreyColor, for: .normal)
            })
        }
        else if offset == self.view.bounds.width{
            UIView.animate(withDuration: 0.0, animations:{
                self.surveyHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(24.0)
                self.surveyHistoryBtn.setTitleColor(AppColors.whiteColor, for: .normal)
                self.bMIHistoryBtn.titleLabel?.font = AppFonts.Poppins_SemiBold.withSize(19.0)
                self.bMIHistoryBtn.setTitleColor(AppColors.battleshipGreyColor, for: .normal)
            })
        }
    }
 }

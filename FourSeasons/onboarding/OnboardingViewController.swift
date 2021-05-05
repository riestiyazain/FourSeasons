//
//  OnboardingViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 04/05/21.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var getStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }  
    // logic untuk onboarding sekali aja munculnya
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //hide nav bar on self
        navigationController?.setNavigationBarHidden(true, animated: animated)
        //hide back button
//            navigationItem.hidesBackButton = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //show nav bar on other views
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}

//
//  OnboardingViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 04/05/21.
//

import UIKit

class OnboardingViewController: UIPageViewController {
    @IBOutlet weak var getStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func getStartedTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSeason", sender: sender)
    }
    
    
}

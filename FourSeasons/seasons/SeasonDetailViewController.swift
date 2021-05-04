//
//  SeasonDetailViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 01/05/21.
//

import UIKit

class SeasonDetailViewController: UIViewController {
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var currentName: String?
    var currentDesc: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        seasonLabel.text = currentName
        descLabel.text = currentDesc
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

}

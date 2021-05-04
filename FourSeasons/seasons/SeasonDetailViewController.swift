//
//  SeasonDetailViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 01/05/21.
//

import UIKit

class SeasonDetailViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var seasonImage: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    var currentName: String?
    var currentDesc: String?
    var currentTime: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = currentName
        timeLabel.text = currentTime
        descLabel.text = currentDesc
        seasonImage.image = UIImage(named: currentName!)
        seasonImage.contentMode = .scaleAspectFill
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        super.viewWillAppear(animated)
        //hide nav bar on self
        navigationController?.isNavigationBarHidden = true

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //show nav bar on other views
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func backTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}

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
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var seasonImage: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var holidayView: UIView!
    //generate programmatically
    @IBOutlet weak var alertIcon: UIImageView!
    @IBOutlet weak var weatherAlert: UILabel!
    @IBOutlet weak var buttonStackView: UIStackView!
    
    var currentName: String?
    var currentDesc: String?
    var currentTime: String?
    var holidaysArray: [Holiday] = []
    var holidaysName: [String] = []
    var currentWeather: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        generateHoliday()
        self.title = currentName
        timeLabel.text = currentTime
        seasonLabel.text = currentName
        seasonImage.image = UIImage(named: currentName!)
        seasonImage.contentMode = .scaleAspectFill
        weatherAlert.text = currentWeather[0]
        
        
        for item in holidaysArray.enumerated(){
            let oneBtn: UIButton = {
                let button = UIButton()
                print(item.element.Name)
                button.layer.cornerRadius = 14
                button.setTitle(item.element.Name, for: .normal)
                button.setTitleColor(UIColor.blue, for: .normal)
//                button.titleLabel?.numberOfLines = 2
//                button.titleLabel?.adjustsFontForContentSizeCategory = true
                button.titleLabel?.font = .systemFont(ofSize: 15)
                button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -100, bottom: -100, right: 0)
                
                button.translatesAutoresizingMaskIntoConstraints = false
//                button.frame.size = CGSize(width: 100, height: 80)
                
                button.setImage(UIImage(named: "SpringIcon"), for: .normal)
                button.imageView?.contentMode = .scaleAspectFit
                
//                button.imageView?.frame.size = CGSize(width: 100, height: 80)
                
                
                button.imageView?.clipsToBounds = true
                button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                //button.setBackgroundImage(UIImage(named: "summerIcon"), for: .normal)
                button.contentHorizontalAlignment = .center
                button.contentVerticalAlignment = .bottom
//                button.backgroundColor = UIColor.gray
                button.addTarget(self, action: #selector(holidayTapped), for: .touchUpInside)
                return button
            }()
            buttonStackView.addArrangedSubview(oneBtn)
            
        }
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
    
    @IBAction func holidayTapped(_ sender: UIButton) {
//        performSegue(withIdentifier: "goToHolidayDetail", sender: sender)
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "holidayDetail") as! HolidayViewController
        self.navigationController?.present(secondViewController, animated: true, completion: nil)
        
        
    }
    
    func generateHoliday() {
        holidaysArray.append(Holiday(holidayLoc: "Kyoto", name: "Gion Matsuri", description: "The Gion Matsuri is not just Kyoto’s biggest festival – it’s one of Japan’s biggest annual events. A huge summer block party in which locals and visitors gather to promenade in colorful yukata robes and gorge themselves on street food and beer. ", time: "1 July - 31 July", type: .Summer))
        holidaysArray.append(Holiday(holidayLoc: "Osaka", name: "Tenjin Matsuri", description: "The Gion Matsuri is not just Osaka's biggest festival – it’s one of Japan’s biggest annual events. A huge summer block party in which locals and visitors gather to promenade in colorful yukata robes and gorge themselves on street food and beer. ", time: "24 and 25 July", type: .Summer))
        holidaysArray.append(Holiday(holidayLoc: "Aomori", name: "Nebuta Matsuri", description: "The Nebuta Aomori Matsuri is not just Kyoto’s biggest festival – it’s one of Japan’s biggest annual events. A huge summer block party in which locals and visitors gather to promenade in colorful yukata robes and gorge themselves on street food and beer. ", time: "2 August - 7 August", type: .Summer))
    }

}

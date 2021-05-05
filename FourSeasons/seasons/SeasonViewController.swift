//
//  SeasonViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 01/05/21.
//

import UIKit

class SeasonViewController: UIViewController {
    @IBOutlet weak var SpringButton: UIButton!
    @IBOutlet weak var SummerButton: UIButton!
    @IBOutlet weak var AutumnButton: UIButton!
    @IBOutlet weak var WinterButton: UIButton!
    
    var seasonArray: [Season] = []
    var selectedSeason: String?
    var selectedSeasonDesc: String?
    var currentIndex: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateSeason()
        SpringButton.layer.cornerRadius = 14
        SummerButton.layer.cornerRadius = 14
        AutumnButton.layer.cornerRadius = 14
        WinterButton.layer.cornerRadius = 14
        SummerButton.imageView?.contentMode = .scaleAspectFit
                
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //hide nav bar on self
        navigationController?.isNavigationBarHidden = true
        //hide back button
//            navigationItem.hidesBackButton = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //show nav bar on other views
        navigationController?.isNavigationBarHidden = false
    }
    


    @IBAction func SpringTapped(_ sender: UIButton) {
        currentIndex = 0
        performSegue(withIdentifier: "goToSeasonDetail", sender: sender)
    }
    @IBAction func SummerTapped(_ sender: UIButton) {
        currentIndex = 1
        performSegue(withIdentifier: "goToSeasonDetail", sender: sender)
    }
    @IBAction func AutumnTapped(_ sender: UIButton) {
        currentIndex = 2
        performSegue(withIdentifier: "goToSeasonDetail", sender: sender)
    }
    @IBAction func WinterTapped(_ sender: UIButton) {
        currentIndex = 3
        performSegue(withIdentifier: "goToSeasonDetail", sender: sender)
    }
    
    func generateSeason() {
        seasonArray.append(Season(name: "Spring", description: "Most famous for the Sakura peak season", time: "March - May", type: .Spring, weatherAlert: ["Cool temperature, 4 - 18 C"]))
        seasonArray.append(Season(name: "Summer", description: "Beach, anyone?", time: "June - August", type: .Summer, weatherAlert: ["Warm to hot temperature, 21 to 32 C","Kick off Typhoon Season in June", "High rain intensity on June"]))
        seasonArray.append(Season(name: "Autumn", description: "Romantic season is here", time: "September - November", type: .Autumn, weatherAlert: ["Mild temperature, 17 - 18 C", "Winter kickoff on November, 6 - 12 C"]))
        seasonArray.append(Season(name: "Winter", description: "Onsen and skiing", time: "December - February", type: .Winter, weatherAlert: ["Coldest temperature, ranging from 6 - 7 C, lowest at -24 C usually in December"]))

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let newVC = segue.destination as? SeasonDetailViewController else { return }
        newVC.currentName = seasonArray[currentIndex].Name
        newVC.currentDesc = seasonArray[currentIndex].Description
        newVC.currentTime = seasonArray[currentIndex].Time
        newVC.currentWeather = seasonArray[currentIndex].weather_alert
    }
    func setSeason() {
        
    }
}

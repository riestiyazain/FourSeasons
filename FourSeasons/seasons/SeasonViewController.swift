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
        

        // Do any additional setup after loading the view.
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
        seasonArray.append(Season(name: "Spring", description: "Most famous for the Sakura peak season", time: "March - May", type: .Spring))
        seasonArray.append(Season(name: "Summer", description: "Beach, anyone?", time: "June - August", type: .Summer))
        seasonArray.append(Season(name: "Autumn", description: "Romantic season is here", time: "September - November", type: .Autumn))
        seasonArray.append(Season(name: "Winter", description: "Onsen and skiing", time: "December - February", type: .Winter))

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let newVC = segue.destination as? SeasonDetailViewController else { return }
        newVC.currentName = seasonArray[currentIndex].Name
        newVC.currentDesc = seasonArray[currentIndex].Description
        
    }
    func setSeason() {
        
    }
}
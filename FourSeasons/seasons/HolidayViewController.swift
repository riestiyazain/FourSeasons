//
//  HolidayViewController.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 05/05/21.
//

import UIKit

class HolidayViewController: UIViewController {
    @IBOutlet weak var holidayImage: UIImageView!
    @IBOutlet weak var holidayTitle: UILabel!
    @IBOutlet weak var holidayDate: UILabel!
    @IBOutlet weak var holidayLocation: UILabel!
    @IBOutlet weak var holidayDesc: UILabel!
    @IBOutlet weak var tagStackView: UIStackView!
    
    var currentHoliday: Holiday?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        holidayTitle.text = currentHoliday?.Name
        holidayDate.text = currentHoliday?.Time
        holidayDesc.text = currentHoliday?.Description
        holidayLocation.text = currentHoliday?.holidayLocation
        holidayImage.image = UIImage(named: currentHoliday!.Name)
        
        if let currentHolidayTag = currentHoliday?.holiday_tag {
            for element in currentHolidayTag{
                let oneLabel: UILabel = {
                    let label = UILabel()
                    label.text = element
                    label.textColor = .label
                    label.layer.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.8823529412, blue: 0.9411764706, alpha: 1)
                    label.layer.cornerRadius = 14
                    label.font = .systemFont(ofSize: 15)
                    label.textAlignment = .center
                    
                    return label
                }()
                tagStackView.addArrangedSubview(oneLabel)
            }
        }

        // Do any additional setup after loading the view.
    }
    
 

}

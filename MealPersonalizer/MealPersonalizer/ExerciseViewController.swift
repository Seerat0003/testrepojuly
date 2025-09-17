//
//  ExerciseViewController.swift
//  MealPersonalizer
//
//  Created by Akshit Goyal on 07/08/25.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    var selectedMood: Mood?

    @IBOutlet weak var activityButton1: UIButton!
    @IBOutlet weak var activityButton2: UIButton!
    @IBOutlet weak var activityButton3: UIButton!
    @IBOutlet weak var activityButton4: UIButton!
    
    
    @IBOutlet weak var activityLabel1: UILabel!
    @IBOutlet weak var activityLabel2: UILabel!
    @IBOutlet weak var activityLabel3: UILabel!
    @IBOutlet weak var activityLabel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Select Your Activity Level"
        updateUI()
    }
    
    func updateUI() {
        activityButton1.setTitle(meals[0].activity.type, for: .normal)
        activityButton2.setTitle(meals[1].activity.type, for: .normal)
        activityButton3.setTitle(meals[2].activity.type, for: .normal)
        activityButton4.setTitle(meals[3].activity.type, for: .normal)
        
        activityLabel1.text = meals[0].activity.text
        activityLabel2.text = meals[1].activity.text
        activityLabel3.text = meals[2].activity.text
        activityLabel4.text = meals[3].activity.text
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ActivityToResult", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        guard let selectedButton = sender as? UIButton else{return}
        
        switch selectedButton {
        case activityButton1:
            resultVC.selectedActivity = meals[0].activity
        case activityButton2:
            resultVC.selectedActivity = meals[1].activity
        case activityButton3:
            resultVC.selectedActivity = meals[2].activity
        case activityButton4:
            resultVC.selectedActivity = meals[3].activity
        default:
            break
        }
        resultVC.selectedMood = selectedMood
    }
}

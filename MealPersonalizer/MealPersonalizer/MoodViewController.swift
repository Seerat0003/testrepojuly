//
//  MoodViewController.swift
//  MealPersonalizer
//
//  Created by Akshit Goyal on 07/08/25.
//

import UIKit

class MoodViewController: UIViewController {

    @IBOutlet weak var moodButton1: UIButton!
    @IBOutlet weak var moodButton2: UIButton!
    @IBOutlet weak var moodButton3: UIButton!
    @IBOutlet weak var moodButton4: UIButton!
    
    @IBOutlet weak var moodLabel1: UILabel!
    @IBOutlet weak var moodLabel2: UILabel!
    @IBOutlet weak var moodLabel3: UILabel!
    @IBOutlet weak var moodLabel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Select Your Current Mood"
        updateUI()
    }
    
    func updateUI() {
        moodButton1.setTitle(meals[0].mood.type, for: .normal)
        moodButton2.setTitle(meals[4].mood.type, for: .normal)
        moodButton3.setTitle(meals[8].mood.type, for: .normal)
        moodButton4.setTitle(meals[12].mood.type, for: .normal)
        
        moodLabel1.text = meals[0].mood.text
        moodLabel2.text = meals[4].mood.text
        moodLabel3.text = meals[8].mood.text
        moodLabel4.text = meals[12].mood.text
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MoodToActivity", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let activityVC = segue.destination as? ExerciseViewController else{
            return
        }
        
        guard let selectedButton = sender as? UIButton else{return}
        
        switch selectedButton {
        case moodButton1:
            activityVC.selectedMood = meals[0].mood
        case moodButton2:
            activityVC.selectedMood = meals[4].mood
        case moodButton3:
            activityVC.selectedMood = meals[8].mood
        case moodButton4:
            activityVC.selectedMood = meals[12].mood
        default:
            break
        }
    }
}

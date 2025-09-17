//
//  ResultViewController.swift
//  MealPersonalizer
//
//  Created by Akshit Goyal on 07/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var selectedMood: Mood?
    var selectedActivity: Activity?

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for meal in meals {
            guard let selectmood = selectedMood, let selectactivity = selectedActivity else {return}
            if (selectmood.text == meal.mood.text && selectactivity.text == meal.activity.text) {
                resultLabel.text = "Meal Suggested: \(meal.suggestedMeal) \n Current Mood: \(selectmood.text) (\(selectmood.type)) \n Current Activity: \(selectactivity.text) (\(selectactivity.type))"
            }
        }
    }
}

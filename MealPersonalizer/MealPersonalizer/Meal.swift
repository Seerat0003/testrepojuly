//
//  Meal.swift
//  MealPersonalizer
//
//  Created by Akshit Goyal on 07/08/25.
//

import Foundation

struct Meal {
    var mood: Mood
    var activity: Activity
    var suggestedMeal: String
}

var meals: [Meal] = [
    Meal(mood: Mood(text: "happy", type: "☺️" ), activity: Activity(text: "sedentary", type: "🪑"), suggestedMeal: "Meal 1"),
    Meal(mood: Mood(text: "happy", type: "☺️" ), activity: Activity(text: "light", type: "🚶"), suggestedMeal: "Meal 2"),
    Meal(mood: Mood(text: "happy", type: "☺️" ), activity: Activity(text: "moderate", type: "🏃"), suggestedMeal: "Meal 3"),
    Meal(mood: Mood(text: "happy", type: "☺️" ), activity: Activity(text: "intense", type: "🏋🏻"), suggestedMeal: "Meal 4"),
    
    
    Meal(mood: Mood(text: "sad", type: "😢" ), activity: Activity(text: "sedentary", type: "🪑"), suggestedMeal: "Meal 5"),
    Meal(mood: Mood(text: "sad", type: "😢" ), activity: Activity(text: "light", type: "🚶"), suggestedMeal: "Meal 6"),
    Meal(mood: Mood(text: "sad", type: "😢" ), activity: Activity(text: "moderate", type: "🏃"), suggestedMeal: "Meal 7"),
    Meal(mood: Mood(text: "sad", type: "😢" ), activity: Activity(text: "intense", type: "🏋🏻"), suggestedMeal: "Meal 8"),
    
    
    Meal(mood: Mood(text: "stressed", type: "😫" ), activity: Activity(text: "sedentary", type: "🪑"), suggestedMeal: "Meal 9"),
    Meal(mood: Mood(text: "stressed", type: "😫" ), activity: Activity(text: "light", type: "🚶"), suggestedMeal: "Meal 10"),
    Meal(mood: Mood(text: "stressed", type: "😫" ), activity: Activity(text: "moderate", type: "🏃"), suggestedMeal: "Meal 11"),
    Meal(mood: Mood(text: "stressed", type: "😫" ), activity: Activity(text: "intense", type: "🏋🏻"), suggestedMeal: "Meal 12"),
    
    
    Meal(mood: Mood(text: "energetic", type: "⚡️" ), activity: Activity(text: "sedentary", type: "🪑"), suggestedMeal: "Meal 13"),
    Meal(mood: Mood(text: "energetic", type: "⚡️" ), activity: Activity(text: "light", type: "🚶"), suggestedMeal: "Meal 14"),
    Meal(mood: Mood(text: "energetic", type: "⚡️" ), activity: Activity(text: "moderate", type: "🏃"), suggestedMeal: "Meal 15"),
    Meal(mood: Mood(text: "energetic", type: "⚡️" ), activity: Activity(text: "intense", type: "🏋🏻"), suggestedMeal: "Meal 16"),
]

//enum moodType: Character {
//    case happy = "☺️", sad = "😢", stressed = "😫", energetic = "⚡️"
//    
//    var definition: String {
//        switch self {
//        case .happy:
//            return "Mood 1"
//        case .sad:
//            return "Mood 2"
//        case .stressed:
//            return "Mood 3"
//        case .energetic:
//            return "Mood 4"
//        }
//    }
//}
//
//enum activityType: Character {
//    case sedentary = "🪑", light = "🚶", moderate = "🏃", intense = "🏋🏻"
//    
//    var definition: String {
//        switch self {
//        case .sedentary:
//            return "Activity 1"
//        case .light:
//            return "Activity 2"
//        case .moderate:
//            return "Activity 3"
//        case .intense:
//            return "Activity 4"
//        }
//    }
//}

struct Mood {
    var text: String
    var type: String
}

struct Activity {
    var text: String
    var type: String
}

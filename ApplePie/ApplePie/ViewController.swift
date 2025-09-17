//
//  ViewController.swift
//  ApplePie
//
//  Created by Student on 22/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0 {
        didSet{
            newRound()
        }
    }
    var totalLoss = 0 {
        didSet{
            newRound()
        }
    }

    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
        
    @IBOutlet var letterButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    var currentGame: Game!
    
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesremaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
        
    }
    
    func enableLetterButtons(_ enable: Bool){
        for button in letterButton{
            button.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLoss)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesremaining)")
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesremaining == 0{
            totalLoss += 1
        } else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
}


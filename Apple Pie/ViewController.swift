//
//  ViewController.swift
//  Apple Pie
//
//  Created by RAQUEL SANTOS on 3/12/20.
//  Copyright © 2020 RAQUEL SANTOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["bill","swimming","dog","tv","program","spring"]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var currentGame: Game!
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining:incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
}


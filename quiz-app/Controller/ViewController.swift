//
//  ViewController.swift
//  quiz-app
//
//  Created by Alexander Shpin on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionText: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
    }

    @IBAction func optionChosen(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkForAnswer(userAnswer)
        
        if (userGotItRight) {
            sender.backgroundColor = UIColor.green
            quizBrain.updateScore()
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        updateUI()
        quizBrain.nextQuestion()
    }
    

    func updateUI() {
        questionText.text = quizBrain.getQuestionText()
        UIView.animate(withDuration: 0.2, animations: {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        })
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
}


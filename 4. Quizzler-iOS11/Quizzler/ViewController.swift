//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questionsAndAnswers = QuestionBank()
    var userAnswer: Bool = false
    var numberOfQuestion: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            userAnswer = true
        } else if sender.tag == 2{
            userAnswer = false
        }
        
        checkAnswer()
        numberOfQuestion += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = String(numberOfQuestion + 1) + "/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(numberOfQuestion + 1)
    }
    

    func nextQuestion() {
        
        
        if numberOfQuestion <= 12 {
            
            let displayedQuestion = questionsAndAnswers.list[numberOfQuestion].question
            questionLabel.text = displayedQuestion
            updateUI()
            
        }else if numberOfQuestion >= 13 {
            
            let alert = UIAlertController(title: "You complited quiz, Your score is : \(score)/13", message: "Do you want to try again?", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: NSLocalizedString("Yes", comment: "Default action"), style: .default, handler: { _ in
                self.startOver()
            }))
            alert.addAction(UIAlertAction(title: NSLocalizedString("No(quit action missing)", comment: "Default action"), style: .default, handler: { _ in
                NSLog("Sadsa")
            }))
            
            self.present(alert, animated: true, completion: nil)

        }
    }
    
    
    func checkAnswer() {
        
        if userAnswer == questionsAndAnswers.list[numberOfQuestion].answer {
            score += 1
            print("corret answer")
            ProgressHUD.showSuccess("Corret")
            
        } else {
            print("wrong answer")
            ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
        
        numberOfQuestion = 0
        score = 0
        nextQuestion()
        
    }

}

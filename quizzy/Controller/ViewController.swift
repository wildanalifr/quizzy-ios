//
//  ViewController.swift
//  quizzy
//
//  Created by Wildan on 22/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var soalText: UILabel!
    
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizzBase = QuizzBase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


    @IBAction func clickAnswer(_ sender: UIButton) {
        quizzBase.updateAnswer()
        let checkAnswerBool = quizzBase.checkAnswer(userAnswer: (sender.titleLabel?.text)!)
        
        if checkAnswerBool {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        print(quizzBase.numberQuestion)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        soalText.text = quizzBase.questions[quizzBase.numberQuestion].question
        progressBar.progress = quizzBase.getProgressBar()
        scoreText.text = "Score: \(quizzBase.score)"
        
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
    }
}


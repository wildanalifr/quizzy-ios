//
//  QuizzBase.swift
//  quizzy
//
//  Created by Wildan on 23/02/25.
//

struct QuizzBase {
    var numberQuestion: Int = 0
    var score: Int = 0
    
    let questions: [Quizz] = [
        Quizz(q: "A slug's blood is green.", a: "True"),
        Quizz(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Quizz(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Quizz(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Quizz(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Quizz(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Quizz(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Quizz(q: "Google was originally called 'Backrub'.", a: "True"),
        Quizz(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Quizz(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Quizz(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Quizz(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    mutating func getProgressBar() -> Float {
        return Float(numberQuestion+1) / Float(questions.count)
    }
    
    mutating func updateAnswer() {
        if numberQuestion < self.questions.count - 1 {
            self.numberQuestion += 1
        } else {
            self.numberQuestion = 0
            self.score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == self.questions[self.numberQuestion].answer {
            score += 1
            return true
        }else {
            return false
        }
    }
}

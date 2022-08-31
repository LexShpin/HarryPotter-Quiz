//
//  QuizBrain.swift
//  quiz-app
//
//  Created by Alexander Shpin on 30.08.2022.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "The first Hogwarts letter posted to Privet Drive arrived in June", a: "False"),
        Question(q: "Mr and Mrs Mason came for dinner at the Dursleys when it was also Harry’s birthday", a: "True"),
        Question(q: "When Harry visited Diagon Alley in Chamber of Secrets, Gilderoy Lockhart was signing copies of his autobiography on the same day between 1pm and 3pm", a: "False"),
        Question(q: "Harry, Hermione, the Weasleys and the Diggorys used an old kettle as a Portkey to travel to the Quidditch World Cup", a: "False"),
        Question(q: "Bulgaria scored 160 points at the Quidditch World Cup", a: "True"),
        Question(q: "In the Order of the Phoenix book, Harry and Dudley were attacked by two Dementors when walking home on a summer evening", a: "True"),
        Question(q: "On Harry’s first evening at Grimmauld Place, Molly made a roast chicken dinner for everyone", a: "False"),
        Question(q: "When playing two-a-side Quidditch at The Burrow during the summer before sixth-year, Hermione was Harry’s teammate", a: "True"),
        Question(q: "In Prisoner of Azkaban, Florean Fortescue would give Harry a free sundae every half hour as Harry worked on his homework outside the ice-cream parlour", a: "True"),
        Question(q: "When Harry took the Knight Bus to London, Stan Shunpike told him it would cost three Galleons to get there", a: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getScore() -> Int {
        return score
    }
    
    mutating func updateScore() -> Int {
        score += 1
        return score
    }
    
    mutating func nextQuestion() -> Int {
        if (questionNumber + 1 == quiz.count) {
            questionNumber = 0
            score = 0
            return questionNumber
        }
        
        print(questionNumber)
        
        questionNumber += 1
        return questionNumber
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func checkForAnswer(_ userAnswer: String) -> Bool {
        if (userAnswer == quiz[questionNumber].answer) {
            return true
        } else {
            return false
        }
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
}

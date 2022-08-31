//
//  Question.swift
//  quiz-app
//
//  Created by Alexander Shpin on 30.08.2022.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}

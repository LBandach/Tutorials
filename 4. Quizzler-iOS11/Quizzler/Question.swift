//
//  Question.swift
//  Quizzler
//
//  Created by user on 27.06.2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let question: String
    let answer: Bool
    
    init(text : String, correctAnswer : Bool) {
        question = text
        answer = correctAnswer
    }
    
}

//
//  Question.swift
//  multiplicate
//
//  Created by Jack Lingle on 12/29/23.
//

import Foundation

struct Question {
    var equation: [Int]
    var answer: Int {
        return equation[0] * equation[1]
    }
    var equationString: String {
        return "\(equation[0]) * \(equation[1]) = "
    }
}

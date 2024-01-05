//
//  GameView.swift
//  multiplicate
//
//  Created by Jack Lingle on 1/5/24.
//

import SwiftUI

struct GameView: View {
    @State var index = 0
    @State var guess = ""
    @State var score = 0
    var questions: [Question]
    var body: some View {
        Form {
            HStack {
                Text("\(questions[index].equationString)")
                TextField("?", text: $guess)
                    .onSubmit {
                        if(questions[index].answer == Int(guess)) {
                            score += 1
                        }
                        if(index < questions.count - 1) {
                            index += 1
                        } else {
                            // show end screen
                        }
                        guess = ""
                    }
                    .keyboardType(.numberPad)
            }
            Text("Score: \(score)")
        }
    }
}

#Preview {
    let questions = [Question(equation: [1, 4]), Question(equation: [1,5])]
    return GameView(questions: questions)
}

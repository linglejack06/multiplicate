//
//  ContentView.swift
//  multiplicate
//
//  Created by Jack Lingle on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var amtOfQuestions = 5
    @State var showingGame = false
    @State var multiplier = 1
    @State var gameQuestions: [Question] = []
    @State var questionsGenerated = false
    var body: some View {
        NavigationStack {
            if (showingGame && questionsGenerated) {
                GameView(questions: gameQuestions)
            } else {
                StartView(amtOfQuestions: $amtOfQuestions, multiplier: $multiplier, showingGame: $showingGame)
            }
        }
        .padding()
        .onChange(of: showingGame) {
            generateQuestions()
        }
    }
    func generateQuestions () {
        for _ in 0..<amtOfQuestions {
            gameQuestions.append(Question(equation: [multiplier, Int.random(in: 1...12)]))
        }
        questionsGenerated = true
    }
}

#Preview {
    ContentView()
}

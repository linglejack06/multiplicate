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
    var body: some View {
        NavigationStack {
            if (showingGame) {
                
            } else {
                StartView(amtOfQuestions: $amtOfQuestions, multiplier: $multiplier, showingGame: $showingGame)
            }
            // tests
            Text("\(amtOfQuestions)")
            Text("\(showingGame.description)")
            ForEach(0..<gameQuestions.count, id: \.self) { q in
                Text("\(gameQuestions[q].equationString)")
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
    }
}

#Preview {
    ContentView()
}

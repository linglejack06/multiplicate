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
    var body: some View {
        NavigationStack {
            if (showingGame) {
                
            } else {
                StartView(amtOfQuestions: $amtOfQuestions, showingGame: $showingGame)
            }
            Text("\(amtOfQuestions)")
            Text("\(showingGame.description)")
        }
        .padding()
        .onChange(of: showingGame) {
            // generate question array
        }
    }
}

#Preview {
    ContentView()
}

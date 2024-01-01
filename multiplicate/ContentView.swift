//
//  ContentView.swift
//  multiplicate
//
//  Created by Jack Lingle on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            StartView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

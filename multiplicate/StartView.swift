//
//  StartView.swift
//  multiplicate
//
//  Created by Jack Lingle on 1/1/24.
//

import SwiftUI

struct StartView: View {
    var multipliers = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
    @Binding var amtOfQuestions: Int
    @Binding var showingGame: Bool
    var body: some View {
        VStack {
            ForEach(0..<multipliers.count, id: \.self) { i in
                MultiplierRow(multipliersForRow: multipliers[i])
            }
            Text("Questions to be asked")
            Picker("How Many Questions", selection: $amtOfQuestions) {
                Text("5").tag(5)
                Text("10").tag(10)
                Text("20").tag(20)
            }
            .pickerStyle(.segmented)
            Button ("Start Game") {
                showingGame = true
            }
        }
    }
}

struct MultiplierRow: View {
    var multipliersForRow: [Int]
    var body: some View {
        HStack {
            ForEach(0..<multipliersForRow.count, id: \.self) { num in
                Text("\(multipliersForRow[num])")
            }
        }
    }
}
#Preview {
    @State var b = 5
    @State var a = false
    return StartView(amtOfQuestions: $b, showingGame: $a)
}

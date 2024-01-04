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
    @Binding var multiplier: Int
    @Binding var showingGame: Bool
    var body: some View {
        VStack {
            ForEach(0..<multipliers.count, id: \.self) { i in
                MultiplierRow(multipliersForRow: multipliers[i], multiplier: $multiplier)
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
    @Binding var multiplier: Int
    var body: some View {
        HStack {
            ForEach(0..<multipliersForRow.count, id: \.self) { num in
                Button("\(multipliersForRow[num])") {
                    multiplier = multipliersForRow[num]
                }
                .background(multiplier == multipliersForRow[num] ? .black : .white)
            }
        }
    }
}
#Preview {
    @State var b = 5
    @State var a = false
    @State var multiplier = 1
    return StartView(amtOfQuestions: $b, multiplier: $multiplier, showingGame: $a)
}

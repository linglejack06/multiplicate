//
//  StartView.swift
//  multiplicate
//
//  Created by Jack Lingle on 1/1/24.
//

import SwiftUI

struct StartView: View {
    var multipliers = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
    var body: some View {
        VStack {
            ForEach(0..<multipliers.count, id: \.self) { i in
                MultiplierRow(multipliersForRow: multipliers[i])
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
    StartView()
}

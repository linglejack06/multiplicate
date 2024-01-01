//
//  StartView.swift
//  multiplicate
//
//  Created by Jack Lingle on 1/1/24.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            ForEach(0..<3) { _ in
                HStack {
                    ForEach(0..<4) { _ in
                        Text("check")
                    }
                }
            }
        }
    }
}

#Preview {
    StartView()
}

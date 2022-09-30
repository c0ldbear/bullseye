//
//  PointsView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct PointsView: View {
    
    var body: some View {
        VStack {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: String(kkk))
        }
        .padding()
        .frame(maxWidth: 300.0)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(game: .constant(Game()))
        PointsView(game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}

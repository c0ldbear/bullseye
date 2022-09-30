//
//  PointsView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct PointsView: View {
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let points = game.points(sliderValue: Int(sliderValue))
        VStack {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: "\(Int(sliderValue))")
            BodyText(string: "You scored \(points)\n🎉 🎉 🎉")
            NewRoundButton(game: $game, points: points)
        }
        .padding()
        .frame(maxWidth: 300.0)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

private struct NewRoundButton: View {
    @Binding var game: Game
    var points: Int
    
    var body: some View {
        Button(action: {
            game.startNewRound(points: points)
        }) {
            ButtonText(string: "Start new round")
        }
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(sliderValue: .constant(50.0), game: .constant(Game()))
        PointsView(sliderValue: .constant(50.0), game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}

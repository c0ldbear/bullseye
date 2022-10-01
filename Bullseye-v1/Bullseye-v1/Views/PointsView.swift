//
//  PointsView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct PointsView: View {
    @Binding var game: Game
    @Binding var sliderValue: Double
    @Binding var alertIsVisible: Bool
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        VStack {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: "\(roundedValue)")
            BodyText(string: "You scored \(points)\n🎉 🎉 🎉")
            NewRoundButton(game: $game, alertIsVisible: $alertIsVisible, points: points)
        }
        .padding()
        .frame(maxWidth: 300.0)
        .background(Color("BackgroundColor"))
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .shadow(radius: 10, x: 5, y: 5)
        .transition(.scale)
    }
}

private struct NewRoundButton: View {
    @Binding var game: Game
    @Binding var alertIsVisible: Bool
    var points: Int
    
    var body: some View {
        Button(action: {
            withAnimation {
                alertIsVisible = false
            }
            game.startNewRound(points: points)
        }) {
            ButtonText(string: "Start new round")
        }
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var game = Binding.constant(Game())
    static private var sliderValue = Binding.constant(50.0)
    static private var alertIsVisible = Binding.constant(false)
    
    static var previews: some View {
        PointsView(game: game, sliderValue: sliderValue, alertIsVisible: alertIsVisible)
        PointsView(game: .constant(Game()), sliderValue: .constant(50.0), alertIsVisible: .constant(true))
            .preferredColorScheme(.dark)
    }
}

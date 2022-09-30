//
//  ContentView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}

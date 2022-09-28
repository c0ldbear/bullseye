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
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .font(.headline)
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.headline)
            }
            Button(action: {
                print("button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello, there!"), message: Text("The slider value is \(roundedValue).\n" + "You scored  \(game.points(sliderValue: roundedValue)) points this round.") , dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

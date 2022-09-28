//
//  HitMeButton.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct HitMeButton: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("button pressed!")
            self.alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue: Int = Int(self.sliderValue.rounded())
            return Alert(title: Text("Hello, there!"), message: Text("The slider value is \(roundedValue).\n" + "You scored  \(game.points(sliderValue: roundedValue)) points this round.") , dismissButton: .default(Text("Awesome!")))
        })
    }
}

//struct HitMeButton_Previews: PreviewProvider {
//    static var previews: some View {
//        HitMeButton()
//    }
//}

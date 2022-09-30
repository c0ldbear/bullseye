//
//  BackgroundView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        TopView(game: $game)
            .padding()
            .background(
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
            )
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            RoundedImageView(systemName: "arrow.counterclockwise", isStroke: true)
            Spacer()
            RoundedImageView(systemName: "list.dash")
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}

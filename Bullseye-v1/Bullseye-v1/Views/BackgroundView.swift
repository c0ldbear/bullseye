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
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
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

struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

private struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
            VStack {
                Text(title.uppercased())
                    .font(.caption)
                    .bold()
                RoundedRectangle(cornerRadius: 20.0)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 68.0, height: 56.0)
                    .overlay(content: {
                        Text(text)
                            .font(.title2)
                            .bold()
                    })
            }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
        BackgroundView(game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}

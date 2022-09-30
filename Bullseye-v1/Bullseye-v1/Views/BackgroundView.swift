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
            VStack {
                Text("Score".uppercased())
                    .font(.caption)
                    .bold()
                RoundedRectangle(cornerRadius: 20.0)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 68.0, height: 56.0)
                    .overlay(content: {
                        Text("999")
                            .font(.title2)
                            .bold()
                    })
            }
            Spacer()
            VStack {
                Text("Round".uppercased())
                    .font(.caption)
                    .bold()
                RoundedRectangle(cornerRadius: 20.0)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 68.0, height: 56.0)
                    .overlay(content: {
                        Text("44")
                            .font(.title2)
                            .bold()
                    })
            }
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

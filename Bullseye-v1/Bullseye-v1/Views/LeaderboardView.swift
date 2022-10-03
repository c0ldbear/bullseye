//
//  LeaderboardView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Leaderboard".uppercased())
                    .font(.title)
                    .fontWeight(.black)
                    .kerning(2.0)
                    .foregroundColor(Color("TextColor"))
                HStack {
                    Spacer()
                    RoundedImageView(systemName: "xmark")
                        .padding(.leading)
                    .padding(.trailing)
                }
            }
            .padding(.leading)
            .padding(.trailing)
//            .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
            
            HStack {
                Spacer()
                Spacer()
                Text("Score".uppercased())
                    .font(.caption)
                    .kerning(1.5)
                    .multilineTextAlignment(.center)
                    .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
                Spacer()
                Text("Date".uppercased())
                    .font(.caption)
                    .kerning(1.5)
                    .multilineTextAlignment(.center)
                    .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
            }
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
            RowView(index: 1, score: 999, date: Date())
        }
    }
}

// HeaderView
// LabelView

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}

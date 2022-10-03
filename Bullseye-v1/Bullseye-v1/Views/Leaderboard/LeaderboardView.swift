//
//  LeaderboardView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                LabelView()
                RowView(index: 1, score: 999, date: Date())
            }
        }
    }
}

private struct HeaderView: View {
    var body: some View {
        ZStack {
            Text("Leaderboard".uppercased())
                .font(.title)
                .fontWeight(.black)
                .kerning(2.0)
                .foregroundColor(Color("TextColor"))
            HStack {
                Spacer()
                RoundedImageView(systemName: "xmark")
                    .padding(.trailing)
            }
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

private struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
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
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
        LeaderboardView()
            .preferredColorScheme(.dark)
    }
}

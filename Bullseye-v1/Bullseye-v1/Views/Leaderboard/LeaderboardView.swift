//
//  LeaderboardView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct LeaderboardView: View {
    @Binding var leaderboardIsShowing: Bool
    @Binding var game: Game
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView(leaderboardIsShowing: $leaderboardIsShowing)
                    .padding(.top)
                LabelView()
                ScrollView {
                    VStack {
                        ForEach(game.leaderboardEntries.indices) { i in
                            let entry = game.leaderboardEntries[i]
                            RowView(index: i+1, score: entry.score, date: entry.date)
                        }
                    }
                }
            }
        }
    }
}

private struct HeaderView: View {
    @Binding var leaderboardIsShowing: Bool
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            HStack {
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    BigBoldText(text: "Leaderboard")
                        .padding(.leading)
                    Spacer()
                } else {
                    BigBoldText(text: "Leaderboard")
                }
            }
            
            HStack {
                Spacer()
                Button(action: {
                    leaderboardIsShowing = false
                }) {
                    RoundedImageView(systemName: "xmark")
                        .padding(.trailing)
                }
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
    static private var yes = Binding.constant(true)
    static private var game = Binding.constant(Game(loadTestData: true))
    
    static var previews: some View {
        LeaderboardView(leaderboardIsShowing: yes, game: game)
        LeaderboardView(leaderboardIsShowing: yes, game: game)
            .preferredColorScheme(.dark)
    }
}

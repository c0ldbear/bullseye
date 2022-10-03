//
//  RowView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-02.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        HStack {
            RoundedTextView()
            Spacer()
            ScoreText()
            Spacer()
            DateText()
        }
        .overlay(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(lineWidth: Constants.General.strokeWidth)
                .foregroundColor(Color("LeaderboardRowColor"))
        )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

struct RoundedTextView: View {
    var body: some View {
        Text("1")
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                RoundedRectangle(cornerRadius: .infinity)
                    .strokeBorder(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("LeaderboardRowColor"))
            )
    }
}

struct ScoreText: View {
    var body: some View {
        Text("100")
            .font(.title3)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .kerning(-2.0)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
    }
}

struct DateText: View {
    var body: some View {
        Text(Date(), style: .time)
            .font(.title3)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .kerning(-2.0)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}

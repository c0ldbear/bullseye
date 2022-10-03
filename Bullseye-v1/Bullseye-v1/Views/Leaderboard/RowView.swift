//
//  RowView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-02.
//

import SwiftUI

struct RowView: View {
    var index: Int
    var score: Int
    var date: Date
    
    var body: some View {
        HStack {
            RoundedTextView(index: index)
            Spacer()
            ScoreText(score: score)
            Spacer()
            DateText(date: date)
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
    var index: Int
    
    var body: some View {
        Text(String(index))
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
    var score: Int
    
    var body: some View {
        Text(String(score))
            .font(.title3)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .kerning(-2.0)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
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
        RowView(index: 1, score: 999, date: Date())
    }
}

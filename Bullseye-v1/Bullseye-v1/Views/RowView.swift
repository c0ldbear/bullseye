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
            RoundedRectangle(cornerRadius: 100.0)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(Color("LeaderboardRowColor"))
        )
        .padding()
    }
}

struct RoundedTextView: View {
    var body: some View {
        Text("1")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                RoundedRectangle(cornerRadius: 100.0)
                    .strokeBorder(lineWidth: 2.0)
                    .foregroundColor(Color("LeaderboardRowColor"))
            )
    }
}

struct ScoreText: View {
    var body: some View {
        Text("100")
    }
}

struct DateText: View {
    var body: some View {
        Text("\(Date().formatted())")
            .padding(.trailing, 50)
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}

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
            Text("100")
            Spacer()
            Text("\(Date().formatted())")
                .padding(.trailing, 50)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 100.0)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(Color("ButtonStrokeColor"))
        )
        .padding()
    }
}

// RoundedTextView
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
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}
// ScoreText
// DateText


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}

//
//  RoundedImageView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-29.
//

import SwiftUI

struct RoundedImageView: View {
    
    var systemName: String
    var isStroke: Bool = false
    
    var body: some View {
        if isStroke {
            RoundedImageViewStroke(systemName: systemName)
        } else {
            RoundedImageViewFilled(systemName: systemName)
        }
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .background(
                Circle()
                    .foregroundColor(Color("ButtonFilledBackgroundColor"))
            )
        // Alternative:
//        ZStack {
//            Circle()
//                .fill(Color("ButtonFilledBackgroundColor"))
//            Image(systemName: systemName)
//                .font(.title)
//                .foregroundColor(Color("ButtonFilledTextColor"))
//        }
//        .frame(width: 56.0, height: 56.0)
    }
}

struct RoundedImageViewStroke: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 100.0)
                    .strokeBorder(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("ButtonStrokeColor"))
            })
    }
}

struct RoundedImageView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            RoundedImageView(systemName: "arrow.counterclockwise", isStroke: true)
            RoundedImageView(systemName: "list.dash")
        }
        VStack(spacing: 50) {
            RoundedImageView(systemName: "arrow.counterclockwise", isStroke: true)
            RoundedImageView(systemName: "list.dash")
        }
        .preferredColorScheme(.dark)
    }
}

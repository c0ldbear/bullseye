//
//  RoundedImageView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-29.
//

import SwiftUI

struct RoundedImageView: View {
    
    var systemName: String
//    rgba(208, 228, 250, 1)
    var isStroke: Bool = false
    
    var body: some View {
        if isStroke {
            RoundedImageViewStroke(systemName: systemName)
        } else {
            ZStack {
                Circle()
                    .fill(Color("TextColor"))
                Image(systemName: systemName)
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            .frame(width: 56.0, height: 56.0)
        }
    }
}

struct RoundedImageViewStroke: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 100.0)
                    .strokeBorder(lineWidth: 2.0)
            })
    }
}

struct RoundedImageView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            RoundedImageView(systemName: "arrow.counterclockwise", isStroke: true)
            RoundedImageView(systemName: "list.dash")
        }
    }
}

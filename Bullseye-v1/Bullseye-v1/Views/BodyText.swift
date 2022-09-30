//
//  BodyText.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct BodyText: View {
    var string: String
    var body: some View {
        Text(string)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(14.0)
    }
}

struct BodyText_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 75) {
            BodyText(string: "Hello, World!")
            BodyText(string: "Your scored 96!\n🎉 🎉 🎉")
        }
    }
}

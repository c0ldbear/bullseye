//
//  ButtonText.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct ButtonText: View {
    var string: String
    
    var body: some View {
        Text(string.capitalized)
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(
                Color.accentColor
            )
            .cornerRadius(12.0)
    }
}

struct ButtonText_Previews: PreviewProvider {
    static var previews: some View {
        ButtonText(string: "Start new round")
            .padding()
    }
}

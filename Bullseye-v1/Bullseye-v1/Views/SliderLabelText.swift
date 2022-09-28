//
//  SliderLabelText.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText_Previews: PreviewProvider {
    static var previews: some View {
        SliderLabelText()
    }
}

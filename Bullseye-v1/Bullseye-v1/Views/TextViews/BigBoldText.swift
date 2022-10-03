//
//  BigBoldText.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct BigBoldText: View {
    var text: String
    
    var body: some View {
            Text(text.uppercased())
                .font(.title)
                .fontWeight(.black)
                .kerning(2.0)
                .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText_Previews: PreviewProvider {
    static var previews: some View {
        BigBoldText(text: "Big bold text")
    }
}

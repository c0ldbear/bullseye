//
//  BigNumberText.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
            .kerning(-1.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText_Previews: PreviewProvider {
    static var previews: some View {
        BigNumberText(text: "999")
    }
}

//
//  Book+Views.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

extension Book {
    struct Image: View {
        var title: String
        
        var body: some View {
            let symbol = SwiftUI.Image(title: title)
            ?? .init(systemName: "book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
              character.isLetter else {
            return nil
        }
        
        let symbolName = "\(character.lowercased()).square"
        self.init(systemName: symbolName)
    }
}


struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "📘")
        }
    }
}

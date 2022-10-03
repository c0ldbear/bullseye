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
        var size: CGFloat?
        
        var body: some View {
            let symbol = SwiftUI.Image(title: title)
            ?? .init(systemName: "book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
              case let symbolName = "\(character.lowercased()).square",
              UIImage(systemName: symbolName) != nil else {
                return nil
        }
        
        self.init(systemName: symbolName)
    }
}

struct TitleAndAuthorStack: View {
    let book: Book
    let titleFont: Font
    let authorFont: Font
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(titleFont)
                Text(book.author)
                    .font(authorFont)
                    .foregroundColor(.secondary)
            }
            .lineLimit(1)
        }
    }
}


struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleAndAuthorStack(book: .init(), titleFont: .title, authorFont: .title2)
            Book.Image(title: Book().title, size: 80)
            Book.Image(title: "", size: 80)
            Book.Image(title: "📘", size: 80)
            Book.Image(title: "日", size: 80)
        }
    }
}

//
//  BookRow.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    
    var body: some View {
        HStack {
            Book.Image(title: book.title)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title2)
                Text(book.author)
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .lineLimit(1)
        }
        .padding(.vertical)
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book())
    }
}

//
//  BookRow.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    let size: CGFloat
    
    var body: some View {
        NavigationLink(destination: BookDetailView(book: book)) {
            HStack {
                Book.Image(title: book.title, size: size)
                TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
            }
            .padding(.vertical)
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book(), size: 80)
    }
}

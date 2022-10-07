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
    @Binding var image: Image?
    
    var body: some View {
        NavigationLink(destination: BookDetailView(book: book, image: $image)) {
            HStack {
                Book.Image(image: image, title: book.title, size: size, cornerRadius: 12)
                TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
            }
            .padding(.vertical)
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book(), size: 80, image: .constant(nil))
    }
}

//
//  BookRow.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct BookRow: View {
    @ObservedObject var book: Book
    let size: CGFloat
    @Binding var image: Image?
    
    var body: some View {
        NavigationLink(destination: BookDetailView(book: book, image: $image)) {
            VStack {
                HStack {
                    Book.Image(image: image, title: book.title, size: size, cornerRadius: 12)
                    VStack(alignment: .leading) {
                        TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3, reviewFont: .subheadline)
                        if !book.microReview.isEmpty {
                            Spacer()
                            Text(book.microReview)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .lineLimit(1)
                }
                .padding(.vertical)
            }
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book(), size: 80, image: .constant(nil))
    }
}

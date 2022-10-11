//
//  BookDetailView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct BookDetailView: View {
    @ObservedObject var book: Book
    @Binding var image: Image?
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Button {
                    book.readMe.toggle()
                } label: {
                    Image(systemName: book.readMe ? "bookmark.fill" : "bookmark")
                        .font(.system(size: 48, weight: .light))
                }

                TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            }
            ReviewAndImageStackView(book: book, image: $image)
        }
        .padding()
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .init(), image: .constant(nil))
    }
}

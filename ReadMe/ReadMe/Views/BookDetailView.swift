//
//  BookDetailView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct BookDetailView: View {
    let book: Book
    @Binding var image: Image?
    @State var showingImagePicker = false
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            VStack {
                Book.Image(image: image, title: book.title, cornerRadius: 16)
                    .scaledToFit()
                Button("Update image...") {
                    showingImagePicker = true
                }
                .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .init(), image: .constant(nil))
    }
}

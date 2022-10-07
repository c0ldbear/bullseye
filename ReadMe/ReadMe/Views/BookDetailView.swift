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
    @State var showDeleteDialog = false
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            VStack {
                Book.Image(image: image, title: book.title, cornerRadius: 16)
                    .scaledToFit()
                HStack(spacing: 50) {
                    if image != nil {
                        Button("Delete image") {
                            showDeleteDialog = true
                        }
                    }
                    Button("Update image...") {
                        showingImagePicker = true
                    }
                }
                .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
        .confirmationDialog("Delete image for \(book.title)?", isPresented: $showDeleteDialog) { // Action closure
            Button("Delete", role: .destructive) { image = nil }
        } message: {
            Text("Delete image for \(book.title)?")
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .init(), image: .constant(nil))
    }
}

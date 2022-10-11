//
//  ReviewAndImageStackView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-11.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct ReviewAndImageStackView: View {
    @ObservedObject var book: Book
    @Binding var image: Image?
    
    @State var showingImagePicker = false
    @State var showDeleteDialog = false
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical)
            TextField("Review...", text: $book.microReview)
            Divider()
                .padding(.vertical)
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
            
            Spacer()
        }
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

struct ReviewAndImageStackView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewAndImageStackView(book: Book(), image: .constant(nil))
            .padding(.horizontal)
    }
}

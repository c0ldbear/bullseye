//
//  SectionView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-11.
//

import SwiftUI

struct SectionView: View {
    let section: Section
    @EnvironmentObject var library: Library
    var title: String {
        switch section {
        case .readMe:
            return "Read Me"
        case .finished:
            return "Finished"
        }
    }
    
    var body: some View {
        if let books = library.sortedBooks[section] {
            SwiftUI.Section {
                ForEach(books) { book in
                    BookRow(book: book, size: 80.0)
                        .swipeActions(edge: .leading) {
                            Button {
                                withAnimation {
                                    book.readMe.toggle()
                                    library.sortBooks()
                                }
                            } label: {
                                book.readMe
                                ? Label("Finished", systemImage: "bookmark.slash") : Label("Read Me!", systemImage: "bookmark")
                            }
                            .tint(.accentColor)
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                // TODO: Delete book
                                guard let index = books.firstIndex(where: {
                                    $0.id == book.id
                                }) else { return }
                                withAnimation {
                                    library.deleteBooks(atOffset: IndexSet(integer: index), section: section)
                                }
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
                .onDelete { indexSet in
                    library.deleteBooks(atOffset: indexSet, section: section)
                }
                .onMove { indexes, newOffset in
                    library.moveBooks(oldOffsets: indexes, newOffset: newOffset, section: section)
                }
                .labelStyle(.iconOnly)
            } header: {
                ZStack {
                    Image("BookTexture")
                        .resizable()
                        .scaledToFit()
                    
                    Text(title)
                        .font(.custom("American Typewriter", size: 24))
                        .foregroundColor(.primary)
                }
                    .listRowInsets(.init())
            }

        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(section: .readMe)
    }
}

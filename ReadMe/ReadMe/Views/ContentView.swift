//
//  ContentView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    @State var showAddNewBook: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Button {
                    showAddNewBook = true
                } label: {
                    Spacer()
                    VStack() {
                        Image(systemName: "book.circle")
                            .font(.system(size: 60))
                        Text("Add new book".capitalized)
                            .font(.title2)
                    }
                    Spacer()
                }
                .buttonStyle(.borderless)
                .padding(.vertical, 8)
                ForEach(library.sortedBooks) { book in
                    BookRow(book: book, size: 80.0, image: $library.images[book])
                }
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

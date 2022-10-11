//
//  NewBookView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-11.
//

import SwiftUI

struct NewBookView: View {
    @ObservedObject var book = Book(title: "", author: "")
    var body: some View {
        VStack {
            TextField("Title", text: $book.title)
            TextField("Author", text: $book.author)
        }
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}

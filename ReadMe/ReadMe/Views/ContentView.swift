//
//  ContentView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(Library().sortedBooks, id: \.title) { book in
            BookRow(book: book)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
                }
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

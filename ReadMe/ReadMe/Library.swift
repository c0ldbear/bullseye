//
//  Library.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//
import SwiftUI

struct Library {
    var sortedBooks: [Book] { booksCache }
    //    var sortedBooks: [Book] { booksCache.sorted() { $0.title.lowercased() < $1.title.lowercased() } }
    
    private var booksCache: [Book] = [
        .init(title: "Ein Neuse Land", author: "Shaun Tau"),
        .init(title: "Bosch", author: "Laurinda Dixon", microReview: "Soo good!"),
        .init(title: "Dare to Lead", author: "Brené Brown"),
        .init(title: "Blasting for Optimum Health Recipe Book", author: "NutriBullet", microReview: "Food is good."),
        .init(title: "Drinking with the Saints", author: "Michael P. Foley"),
        .init(title: "A Guide to Tea", author: "Adagio Teas", microReview: "My teas are now awesome."),
        .init(title: "The Life and Complete Work of Francisco Goya", author: "P. Gassier & J. Wilson"),
        .init(title: "Lady Cottington's Pressed Fairy Book", author: "Lady Cottington"),
        .init(title: "How to Draw Cats", author: "Janet Rancan", microReview: "Could have been better."),
        .init(title: "Drawing People", author: "Barbera Bradley"),
        .init(title: "What to Say When You Talk to Yourself", author: "Shad Helmstetter", microReview: "I'm best.")
    ]
    
    var images: [Book: Image] = [:]
}

//
//  ContentView.swift
//  ReadMe
//
//  Created by Teddy Juhlin-Henricson on 2022-10-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
            Text("Title")
                .font(.title2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  RowView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-10-02.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
            .padding()
    }
}

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
            Text("1")
                .font(.title)
                .foregroundColor(Color("TextColor"))
                .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
                .overlay(
                    RoundedRectangle(cornerRadius: 100.0)
                        .strokeBorder(lineWidth: 2.0)
                        .foregroundColor(Color("ButtonStrokeColor"))
                )
            
            Spacer()
            Text("100")
            Spacer()
            Text("\(Date().formatted())")
                .padding(.trailing, 50)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 100.0)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(Color("ButtonStrokeColor"))
        )
        .padding()
    }
}



struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}

//
//  TestShapesView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-30.
//

import SwiftUI

struct TestShapesView: View {
    @State var isWide = false
    var body: some View {
        let size: CGFloat = isWide ? 200.0 : 100.0
        VStack {
            if !isWide {
                Circle()
                    .strokeBorder(Color.cyan, lineWidth: 25.0)
                    .frame(width: 200, height: 100)
                    .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.cyan)
                .frame(width: size, height: 100)
            Capsule()
                .fill(Color.cyan)
                .frame(width: size, height: 100)
            Ellipse()
                .fill(Color.cyan)
                .frame(width: size, height: 100)
            Button(action: {
                withAnimation {
                    isWide.toggle()
                }
            }) {
                Text("Animate!")
                    .padding(15)
                    .background(
                        Color.accentColor
                    )
                    .foregroundColor(.white)
                    .cornerRadius(100)
            }
            .padding(20.0)
        }
        .padding()
        .background(
            Color.blue
        )
    }
}

struct TestShapesView_Previews: PreviewProvider {
    static var previews: some View {
        TestShapesView()
    }
}

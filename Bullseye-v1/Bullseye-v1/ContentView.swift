//
//  ContentView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var knockKnockIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .font(.headline)
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .font(.headline)
            }
            Button(action: {
                print("button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Hello, there!"), message: Text("This is my first pop-up!") , dismissButton: .default(Text("Awesome!")))
            })
            
            Button(action: {
                self.knockKnockIsVisible = true
            }) {
                Text("Knock, knock")
            }
            .alert(isPresented: $knockKnockIsVisible, content: {
                return Alert(title: Text("Who's there?"), message: Text("I.O."), dismissButton: .default(Text("I. O. Who?")))
            }) // "Me. When are you paying back?"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

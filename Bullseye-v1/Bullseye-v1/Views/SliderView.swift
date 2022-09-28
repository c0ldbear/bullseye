//
//  SliderView.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("1")
                .font(.headline)
                .foregroundColor(Color("TextColor"))
            Slider(value: $sliderValue, in: 1.0...100.0)
            Text("100")
                .font(.headline)
                .foregroundColor(Color("TextColor"))
        }
        .padding()
    }
}

//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderView(sliderValue: )
//    }
//}

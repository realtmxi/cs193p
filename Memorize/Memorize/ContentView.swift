//
//  ContentView.swift
//  Memorize
//
//  Created by 田沐昕（实习） on 2024/7/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["😀", "😂 ", "🙃", "😘", "😘"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) {index in
                CardView(content: emojis[index])
            }
            
//            CardView(content: emojis[0], isFaceUp: true)
//            CardView(content: emojis[1])
//            CardView(content: emojis[2])
        }
//        VStack(content: {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        })       .foregroundColor(.orange)
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
            .onTapGesture {
                print("tapped")
                isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}

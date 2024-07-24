//
//  ContentView.swift
//  Memorize
//
//  Created by 田沐昕（实习） on 2024/7/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView()
            CardView()
        }
//        VStack(content: {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        })
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("test").font(.largeTitle)
        })
    }
}

#Preview {
    ContentView()
}

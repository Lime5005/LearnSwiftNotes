//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Liping Mechling on 24/12/2020.
//

import SwiftUI

//Custom modifier:
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

//Wrap the Title modifier to an extension:
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

//Create a new struct and use it in the old one:
struct Watermark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.gray)
                .padding(20)
                .background(Color.yellow)
        }
    }
}

//Wrap up so it apply the modifier function directly:
extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        Color.blue
            .frame(width: 200, height: 200)
            .watermarked(with: "Copy right reserved")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

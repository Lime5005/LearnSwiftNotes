//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Liping Mechling on 24/12/2020.
//

import SwiftUI

struct prominentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func styleTitle() -> some View {
        self.modifier(prominentTitle())
    }
}


struct ContentView: View {
    var body: some View {
        Text("This is a prominent title")
            .styleTitle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

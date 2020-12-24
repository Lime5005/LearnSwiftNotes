//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Liping Mechling on 24/12/2020.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            CapsuleText(text: "First")
                .foregroundColor(.green)
            CapsuleText(text: "Second")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

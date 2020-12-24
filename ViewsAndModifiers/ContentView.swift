//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Liping Mechling on 24/12/2020.
//

import SwiftUI

struct ContentView: View {
    //creat a view as a property: a computed property, not one that refers to another
    var moto1: some View { Text("OK").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)}
    var moto2 = Text("This is my project")
    var body: some View {
        VStack {
            moto1
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            moto2
                .foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

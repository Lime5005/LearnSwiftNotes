//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Liping Mechling on 24/12/2020.
//

import SwiftUI

//Generics: any kind of view content that conforms the View protocol
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content //this is a closure that returns a Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows ) { row in
                HStack {
                    ForEach(0 ..< columns ) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping
            (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}


struct ContentView: View {
    var body: some View {
        //r will repeat as much time as c needed: 3 columns, so row will repeat r0, r1 3 times as the columns grows
        GridStack(rows: 2, columns: 3) { row, col in
            Image(systemName: "\(row + col).circle")
            Text("r\(row) c\(col)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

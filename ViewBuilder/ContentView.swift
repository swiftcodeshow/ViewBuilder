//
//  ContentView.swift
//  ViewBuilder
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomView {
            Text("Hello World!")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

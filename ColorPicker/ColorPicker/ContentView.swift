//
//  ContentView.swift
//  ColorPicker
//
//  Created by Vinicius Rossado on 03.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var red: Double = 1.0
    @State private var green: Double = 0.0
    @State private var blue: Double = 0.0

    var body: some View {
        VStack {
           Text("Color Picker")
                .font(.title)
                .fontWeight(.light)
            Image(systemName: "dog.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(Color(red: red, green: green, blue: blue))
            
            ColorSliderView(colorValue: $red, color: .red)
            ColorSliderView(colorValue: $green, color: .green)
            ColorSliderView(colorValue: $blue, color: .blue)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

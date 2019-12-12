//
//  ContentView.swift
//  MakeColors
//
//  Created by Sunmoon on 12/12/19.
//  Copyright © 2019 Sunmooon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    var body: some View {
        VStack{
            VStack{
                Rectangle()
                    .foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess))
                    .frame(width: 100, height: 100, alignment: .center)
                Text("Color R:\(Int(rGuess * 255.0)) G:\(Int(gGuess * 255.0)) B:\(Int(bGuess * 255.0))")
            }
            VStack{
                ColorSlider(value: $rGuess, textColor: .red)
                ColorSlider(value: $gGuess, textColor: .green)
                ColorSlider(value: $bGuess, textColor: .blue)
            }
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0, gGuess: 0, bGuess: 0)
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack{
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }.padding()
    }
}

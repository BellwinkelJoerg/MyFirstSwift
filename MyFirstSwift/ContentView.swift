//
//  ContentView.swift
//  MyFirstSwift
//
//  Created by Jörg Bellwinkel on 13.04.20.
//  Copyright © 2020 Jörg Bellwinkel. All rights reserved.
//


import SwiftUI

struct ContentView: View {

    let colors: [Color] = [.red, .green, .blue]
//    let value1: Int = 0
//    let value2: Int = 0
    @State private var Value1 = ""
    @State private var Value2 = ""
    
    
    
    var body: some View {
        VStack {

            Text("Hello, World!")
            //Text("Hello, World!").frame(minWidth:300, maxWidth: 600, minHeight: 400, maxHeight: 400)
                    //.frame(maxWidth: .infinity, maxHeight: .infinity)

            Form{
                Section {
                    TextField("Eingabe Value1: ", text: $Value1)
                }

                Section {
                    Text("$\(Value1)")
                }
            }

            Form{
                Section {
                    TextField("Eingabe Value2: ", text: $Value2)
                }

                Section {
                    Text("$\(Value2)")
                }
            }

            
            
            
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }

        }.frame(minWidth:300, maxWidth: 600, minHeight: 200, maxHeight: 400)
    }

        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}


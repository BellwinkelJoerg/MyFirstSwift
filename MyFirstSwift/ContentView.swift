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
//    let Solved: Int = 0
    let Total: Int = 0
//    let value1: Int = 0
//    let value2: Int = 0
    @State private var Value1 = ""
    @State private var Value2 = ""
//    @State private int Solved


    
    var Result: Int{
        let myVal1 = Int(Value1) ?? 0
        let myVal2 = Int(Value2) ?? 0
        let Total = myVal1 + myVal2
        return Total
    }
    
    var body: some View {
        VStack {

            Text("Hello, World!")
            //Text("Hello, World!").frame(minWidth:300, maxWidth: 600, minHeight: 400, maxHeight: 400)
                    //.frame(maxWidth: .infinity, maxHeight: .infinity)

            Form{
                Section {
                    TextField("Eingabe Wert 1: ", text: $Value1)
                }

                Section {
                    Text("$\(Value1)")
                }
            }

            Form{
                Section {
                    TextField("Eingabe Wert 2: ", text: $Value2)
                }

                Section {
                    Text("$\(Value2)")
                }
            }

            
//            Form{
//                Section {
                    Text("Ergebnis: $\(Total)")
//                }
//            }
            
            
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }

        }.frame(minWidth:300, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
    }

        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}


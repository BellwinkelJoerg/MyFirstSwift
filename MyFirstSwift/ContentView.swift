//
//  ContentView.swift
//  MyFirstSwift
//
//  Created by Jörg Bellwinkel on 13.04.20.
//  Copyright © 2020 Jörg Bellwinkel. All rights reserved.
//
// New Commtent: try this...

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
            .frame(maxWidth: 600, maxHeight: 400)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

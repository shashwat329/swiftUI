//
//  framebootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 20/06/24.
//

import SwiftUI

struct framebootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100,alignment: .center)
            .background(Color.green)
            .frame(width: 300,height: 300 ,alignment: .bottomLeading)
            .background(Color.yellow)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ ,alignment: .trailing)
            .background(Color.blue)
            .frame(maxHeight: .infinity,alignment: .topLeading )
            .background(Color.purple)
    }
}

#Preview {
    framebootcamp()
}
 

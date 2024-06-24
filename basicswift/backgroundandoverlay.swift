//
//  backgroundandoverlay.swift
//  basicswift
//
//  Created by shashwat singh on 20/06/24.
//

import SwiftUI

struct backgroundandoverlay: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue ,Color.red ]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                
            )
            .background(
                Color(.green)
                    .frame(width: 120,height: 120)
                    .cornerRadius(60)
            )
            .background(
                Color(.yellow )
                    .frame(width: 140,height: 140)
                    .cornerRadius(70)
                
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .frame(width: 160,height: 160)
            )
    }
}

#Preview {
    backgroundandoverlay()
}

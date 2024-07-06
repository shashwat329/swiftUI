//
//  gridbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 04/07/24.
//

import SwiftUI

struct gridbootcamp: View {
    let colums: [GridItem]=[
        GridItem(.fixed(120),spacing: nil,alignment: nil),
        GridItem(.fixed(120),spacing: nil,alignment: nil),
        GridItem(.fixed(120),spacing: nil,alignment: nil),

    ]
    var body: some View {
        ScrollView{
            LazyVStack{
                HStack{
                    Rectangle()
                    .frame(width: .infinity,height: 280)
                    .foregroundColor(.gray)
                    .overlay(
                        Circle()
                            .frame(height: 150),
                        alignment: .topTrailing
                    )
                    .padding()
                    
                }
               
                LazyVGrid(columns: colums,
                    content: {
                    ForEach(0..<18) {index in
                        Rectangle()
                            .frame(height: 150)
                    }
                })
            }
        }
      
    }
}

#Preview {
    gridbootcamp()
}

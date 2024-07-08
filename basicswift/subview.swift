//
//  subview.swift
//  basicswift
//
//  Created by shashwat singh on 08/07/24.
//

import SwiftUI

struct subview: View {
    var body: some View {
        ZStack{
            //background
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //
          Contentlayer
        }
    }
}
    var  Contentlayer: some View {
        HStack{
            BoxContent(title: "apple",count: 1,color: .red)
            BoxContent(title: "guava",count: 10,color: .green)
            BoxContent(title: "banana",count: 20,color: .yellow)
        }
    }
struct BoxContent: View{
    let title: String
    let count: Int
    let color: Color
    var body: some View{
            VStack {
                Text("\(count)")
                    .font(.title)
                    .underline()
                Text("\(title)")
                    .font(.title)
                    
            }
            .padding()
            .background(color)
        }
}

#Preview {
    subview()
}

//
//  safearea.swift
//  basicswift
//
//  Created by shashwat singh on 06/07/24.
//

import SwiftUI

struct safearea: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("title here: ")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .frame(height: 200)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            }
            
        }
        .background(Color.yellow)
    }
}

#Preview {
    safearea()
}

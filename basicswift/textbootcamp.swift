//
//  textbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 13/05/24.
//

import SwiftUI

struct textbootcamp: View {
    var body: some View {
        Text("hello,shashwat!!".capitalized)
            .bold()
//            .underline(true,color: Color.yellow)
            .italic()
            .font(.largeTitle)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        Text("lets write some extra line so we can check how multilinetextaligment works")
            .multilineTextAlignment(.center)
//            .foregroundColor(.gray)
            .italic()
        ZStack{
            Rectangle()
                .frame(width: 200,height: 100)
                .cornerRadius(50)
                .foregroundColor(.gray)
            Circle()
                .frame(width: 80,alignment: .leading)
                
        }
        Spacer()
        Circle()
            .trim(from: 0.2, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .stroke(Color.green,lineWidth: 12)
            .frame(width: 150)
            
    }
}

#Preview {
    textbootcamp()
}
  

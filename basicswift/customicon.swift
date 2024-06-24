//
//  customicon.swift
//  basicswift
//
//  Created by shashwat singh on 20/06/24.
//

import SwiftUI

struct customicon: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.purple]),
                        startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                        endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .shadow(color: .purple, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.blue]),
                                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                            )
                            .frame(width: 35,height: 35)
                            .shadow(color: .purple, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .overlay(
                                Text("7")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/),
                        alignment: .bottomTrailing
                    )

            )
            
    }
}

#Preview {
    customicon()
}

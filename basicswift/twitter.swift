//
//  twitter.swift
//  basicswift
//
//  Created by shashwat singh on 26/06/24.
//

import SwiftUI

struct twitter: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Circle()
                    .stroke()
                    .frame(height: 40)
                    .overlay(
                        Image(
                            systemName: "person")
                            .font(.system(size: 30)
                            )
                    )
                VStack(alignment: .leading){
                    Text("shashwat singh")
                    .font(.title2)
                    Text("shashewatsingh")
                }
                Spacer()
                Image(systemName: "bird")
                    .font(.title2)
            }
//            .border(Color.yellow)
            .padding(.top)
            HStack{
                Text("this is the formal twitter and currently known as X")
            }
            .padding(.vertical,20)
            HStack{
                Text("10:07")
                Text("25 Apr,2022")
            }
//            border(Color.green)
            .padding(.vertical,2)
            HStack{
                Text("1 reply")
                Text("3 likes")
            }
        }
        .padding()
        .background(
                Color.white
                    .cornerRadius(20)
                    .shadow(radius: 10,x: 0,y: 10)
        )
        .padding(.all,20)
    }
}

#Preview {
    twitter()
}

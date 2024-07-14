//
//  jumpingball.swift
//  basicswift
//
//  Created by shashwat singh on 13/07/24.
//

import SwiftUI

struct jumpingball: View {
    @State var isjumping : Bool = false
    var body: some View {
        ZStack{
            //background
            //content
            VStack{
                Button("click"){
                    withAnimation(
                        Animation
                            .default
                            .repeatCount(7,autoreverses: true)
                        ){
                                isjumping.toggle()
                            }
                }
                Spacer()
                Circle()
                    .fill(Color.orange)
                    .frame(width: 50)
                    .offset(x:+3,y: isjumping ? 340: 0)
                Spacer()
                Rectangle()
                    .fill()
                    .frame(maxWidth: .infinity,maxHeight: 10)
            }
        }
    }
}

#Preview {
    jumpingball()
}

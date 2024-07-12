//
//  animationbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 12/07/24.
//

import SwiftUI

struct animationbootcamp: View {
    @State var isanimated: Bool = false
    var body: some View {
     
        ZStack{
            //background
            
            //content
            VStack{
                Button("button"){
                    withAnimation(
                        Animation
                            .default.repeatForever(autoreverses: true)
                    ){
                        isanimated.toggle()
                    }
                }
                Spacer()
                RoundedRectangle(cornerRadius: isanimated ? 200: 25)
                    .fill(isanimated ? Color.red : Color.green)
                    .frame(width: 200,height: 200)
                    .rotationEffect(Angle(degrees: isanimated ? 360: 0))
                    .offset(y:isanimated ? 250: 0)
                Spacer()
                
            }
        }
    }
}
#Preview {
    animationbootcamp()
}

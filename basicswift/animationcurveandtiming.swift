//
//  animationcurveandtiming.swift
//  basicswift
//
//  Created by shashwat singh on 13/07/24.
//

import SwiftUI

struct animationcurveandtiming: View {
    @State var isanimate: Bool = false
    var body: some View {
        VStack{
            Button("button"){
                withAnimation {
                    isanimate.toggle()
                }
            }
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .fill(Color.blue)
//                .frame(width: isanimate ? 300: 50,height: 100)
//                .animation(.linear(duration: 20))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .fill(Color.blue)
//                .frame(width: isanimate ? 300: 50,height: 100)
//                .animation(.easeIn(duration: 20))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .fill(Color.blue)
//                .frame(width: isanimate ? 300: 50,height: 100)
//                .animation(.easeInOut(duration: 20))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .fill(Color.blue)
//                .frame(width: isanimate ? 300: 50,height: 100)
//                .animation(.easeOut(duration: 20))
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: isanimate ? 300: 50,height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1
                ),value: isanimate
                )
                
        }
    }
}

#Preview {
    animationcurveandtiming()
}

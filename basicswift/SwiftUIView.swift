//
//  SwiftUIView.swift
//  basicswift
//
//  Created by shashwat singh on 17/07/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State var animate: Bool = false
    @State var bgcolor:  Color = Color.blue
    var body: some View {
       
        ZStack{
            //background
            bgcolor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            Button {
                animate.toggle()
                if animate{
                    bgcolor = Color.green
                }
                
                
            } label: {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: 100,height: 50)
                    .overlay{
                        Text("button")
                    }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}

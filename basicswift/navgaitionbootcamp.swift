//
//  navgaitionbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 21/07/24.
//

import SwiftUI

struct navgaitionbootcamp: View {
    @State var darkmode: Bool = false
    var body: some View {
        ZStack(){
            //background
            Color(darkmode ? .black : .white)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            VStack(){
               
                    Button(action: {
                        darkmode.toggle()
                    },
                           label: {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke()
                            .frame(width: 60,height: 30)
                            .overlay(
                                Circle(),
                                alignment: darkmode ? .trailing : .leading
                            )
                            .animation(.easeInOut, value: darkmode)
                    })
                    .frame(maxWidth: .infinity,alignment: .trailing)
//                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                Spacer()
                VStack{
                   Text("hello shashwat")
                        .foregroundColor(darkmode ? .white : . black)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .underline()
                }
                Spacer()
            }
            .padding()
            
            
        }
    }
}

#Preview {
    navgaitionbootcamp()
}

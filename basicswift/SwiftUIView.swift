//
//  SwiftUIView.swift
//  basicswift
//
//  Created by shashwat singh on 17/07/24.
//

import SwiftUI

struct animationpratice: View {
    @State var showsecondpage : Bool = false
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                ScrollView(.horizontal,showsIndicators: false){
                    HStack {
                                ForEach(0..<3) { int in
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(Color.gray)
                                        .frame(width: 350,height: 250)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                }
                    }
                }
                HStack {
                    ForEach(0..<3) {int in
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 20,height: 20)
                    }
                }
                Spacer()
                Button(
                    action: {
                        showsecondpage.toggle()
                            },
                       label: {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200,height: 60)
                            .cornerRadius(20)
                            .overlay{
                                Text("join now".capitalized)
                                    .foregroundColor(.white)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            }

                        })
            }
            .sheet(isPresented: $showsecondpage) {
                      sheetView()
                  }
                   
        }
    }
}

#Preview {
    animationpratice()
}

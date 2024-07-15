//
//  sheetandsheetcover.swift
//  basicswift
//
//  Created by shashwat singh on 14/07/24.
//

import SwiftUI
struct sheetView: View {
    @State var changeView : Bool = false
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Button(action: {
                    changeView.toggle()
                }, label: {
                    Text("click me")
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                })
//                .sheet(isPresented: $changeView, content: {
//                    nextpageView()
//                                    })
                .fullScreenCover(isPresented: $changeView, content: {
                    nextpageView()
                                    })
            }
        }
    }
}

struct nextpageView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }
                       , label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding()
                })
                
            }
        }
    }
}

#Preview {
sheetView()
//    nextpageView()
}

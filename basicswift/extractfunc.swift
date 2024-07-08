//
//  extractfunc.swift
//  basicswift
//
//  Created by shashwat singh on 08/07/24.
//

import SwiftUI

struct extractfunc: View {
    @State var backgroundColor = Color.pink
    var body: some View {
        
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            contentView
         
        }
    }
    var contentView : some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
                .padding()
            Button(action: {
             changebackgroundColor()
            }, label: {
                Text("Press Me")
                    .foregroundColor(.white)
                    .padding()
                    
                    .background(Color.black)
                    .cornerRadius(10)
                    
            })
        }
    }
    func changebackgroundColor(){
        if(backgroundColor==Color.pink){
            backgroundColor = Color.blue
        }
        else{
            backgroundColor = Color.pink
        }
    }
}

#Preview {
    extractfunc()
}

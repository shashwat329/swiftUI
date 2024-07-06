//
//  buttonbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 06/07/24.
//

import SwiftUI

struct buttonbootcamp: View {
    @State var title = "this is custom title".capitalized
    var body: some View {
        VStack{
            Text(title)
                .padding()
            Button(action: {
                self.title = "button1 is pressed!";
            }, label: {
                Text("button1")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,10)
                    .background(Color.blue
                        .cornerRadius(10)
                    )
//                    .
            })
            Button(action: {
                self.title = "you liked this image".capitalized
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width:75)
                    .overlay{
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                }
                    .shadow(radius: 20)
                
            })
            .padding()
            Button(action: {
                self.title = "finished the task"
            }, label: {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(lineWidth: 3.0)
                    .frame(width: 100,height: 50)
                    .overlay{
                        Text("finish".capitalized)
                    }
            })
        }
    }
}

#Preview {
    buttonbootcamp()
}

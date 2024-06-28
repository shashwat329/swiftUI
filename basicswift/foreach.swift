//
//  foreach.swift
//  basicswift
//
//  Created by shashwat singh on 28/06/24.
//

import SwiftUI

struct foreach: View {
    //    let name :[String] = ["shashwat","rahul","piyush","sona"]
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<100) {index in
                        ScrollView(.horizontal,showsIndicators: false,content: {
                            LazyHStack{
                                ForEach(0..<20){ index in
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(Color.white)
                                        .frame(width: 250,height: 150)
                                        .shadow(radius: 20)
                                        .padding()
                                }
                            }
                        })
                        }
                    
                    }

                }
            }
         
        }


#Preview {
    foreach()
}

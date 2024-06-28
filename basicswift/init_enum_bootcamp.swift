//
//  init_enum_bootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 27/06/24.
//

import SwiftUI

struct init_enum_bootcamp: View {
    let backgroundColor: Color;
    let count: Int;
    let item: String
    init(count: Int,fruit: Fruits){
        self.count = count
        if fruit == .apple {
            self.item = "Apple"
            self.backgroundColor = .red;
        }
        else{
            self.item = "Orange"
            self.backgroundColor = .orange;
        }
    }
    enum Fruits {
        case apple
        case orange
    }
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            Text("\(item)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        init_enum_bootcamp(count: 29,fruit: .apple)
        init_enum_bootcamp(count: 129,fruit: .orange )
    }
}

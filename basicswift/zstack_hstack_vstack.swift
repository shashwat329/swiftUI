//
//  zstack_hstack_vstack.swift
//  basicswift
//
//  Created by shashwat singh on 24/06/24.
//

import SwiftUI

struct zstack_hstack_vstack: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.blue)
                .frame(width: 400,height: 200)
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                Image(systemName: "link")
                    .font(.system(size: 32))
                Image(systemName: "book")
                    .font(.system(size: 32))
                Image(systemName: "plus.rectangle.fill")
                    .font(.system(size: 32))
                Image(systemName: "megaphone")
                    .font(.system(size: 32))
                Image(systemName: "person")
                    .font(.system(size: 32))
            })
        }
        Spacer()
      
    }
}

#Preview {
    zstack_hstack_vstack()
}

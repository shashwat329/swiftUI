//
//  paddingbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 26/06/24.
//

import SwiftUI

struct paddingbootcamp: View {
    var body: some View {
        VStack(alignment: .leading)
        {
          Text("hello world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical,10)
          Text("ihsdkchksckasdc ashdlahsdcikashdc ihaisdchiashd shdfahsd hsdifahs iahsdfi sdfiua sdgfias ashgdifug hasdifua haiufhas haisfhu ahfilua ahfulai s")
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(radius: 10,x: 0,y: 10)
        )
        .padding(.horizontal,10)
    }
}

#Preview {
    paddingbootcamp()
}

//
//  color.swift
//  basicswift
//
//  Created by shashwat singh on 19/06/24.
//

import SwiftUI

struct color: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(
//                Color(#colorLiteral(red: 0.91, green: 0.3, blue: 0.24, alpha: 1.0))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")

            )
            .frame(width: 250,height: 150)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 15, x: -20, y: -20)
    }
}

#Preview {
    color()
}

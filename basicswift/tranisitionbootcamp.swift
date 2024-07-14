//
//  tranisitionbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 13/07/24.
//

import SwiftUI

struct tranisitionbootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("button") {
                    withAnimation {
                        showView.toggle()
                    }
                }
                Spacer()
               
            }
            if showView{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .transition(.move(edge: .bottom) )
                    .animation(.easeInOut,value: showView)
            }
                
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    tranisitionbootcamp()
}

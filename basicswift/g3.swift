//
//  g3.swift
//  basicswift
//
//  Created by shashwat singh on 10/07/24.
//

import SwiftUI

struct g3: View {
    var body: some View {
        let backgroundColor = Color(red: 0.07, green: 0.07, blue: 0.07)
        let lightgray = Color(red: 0.61, green: 0.61, blue: 0.61)
       @State var name: String = "kumar shashwat"
       @State var upiid: String = "xyxajhaskc@ybl"
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            VStack{
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.blue)
                    .font(.system(size: 100))
                Spacer()
                HStack(spacing: -2){
                    Image(systemName: "indianrupeesign")
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("100.00")
                        .foregroundColor(.white)
                        .font(.title)
                }
               
                Text("Paid to \(name)")
                    .foregroundColor(.white)
                    .font(.title2)
                Text("UPI ID: \(upiid)")
                    .foregroundColor(lightgray)
                    .font(.title3)
                Spacer()
                Text(currentdate)
                    .foregroundColor(.white)
                let tranUPI = generateRandomNumber()
                Text("UPI tranaction ID: \(tranUPI)")
                    .font(.callout)
                    .foregroundColor(lightgray)
                Spacer()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke()
                            .frame(width: 170,height: 50)
                        Text("share screenshot")
                    }
                })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 100,height: 50)
                            Text("Done")
                                .foregroundColor(.black)
                        }
                        })
                    
                }
               
            }
            
        }
    }
    func generateRandomNumber() ->String{
        let number = UInt64.random(in: 1_000_000_000...9_999_999_999)
       return String(number)
    }
    var currentdate: String{
        let date =  Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    g3()
}

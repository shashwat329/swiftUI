//
//  listbootcamp.swift
//  basicswift
//
//  Created by shashwat singh on 26/07/24.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fruits: [String] = ["apple", "banana", "mango", "guava"]
    @State private var veggies: [String] = ["potato", "tomato", "green veg", "romes"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: deleteFruit)
                    .onMove(perform: { indices , newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: deleteVeggie)
                    .onMove(perform: moveVeggie)
                }
            }
          
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addbuttonView
            )
        }
        .accentColor(.blue)
    }
    var addbuttonView: some View{
        Button("add", action: {
            add()
        })
    }
    func deleteFruit(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    func moveFruit(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add(){
        fruits.append("sgasgw")
    }
    func deleteVeggie(at offsets: IndexSet) {
        veggies.remove(atOffsets: offsets)
    }
    
    func moveVeggie(from source: IndexSet, to destination: Int) {
        veggies.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListBootcamp()
}

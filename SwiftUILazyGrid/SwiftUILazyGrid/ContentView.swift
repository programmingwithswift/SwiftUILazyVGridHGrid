//
//  ContentView.swift
//  SwiftUILazyGrid
//
//  Created by ProgrammingWithSwift on 2020/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var vGridLayout = [
        GridItem(.flexible())
    ]
    
    var hGridLayout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: vGridLayout) {
                ForEach(0..<100) { value in
                    Rectangle()
                        .foregroundColor(Color.green)
                        .frame(height: 50)
                        .overlay(
                            Text("\(value)").foregroundColor(.white)
                        )
                }
            }.padding(.all, 10)
        }
        
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: hGridLayout) {
//                ForEach(0..<100) { value in
//                    Rectangle()
//                        .foregroundColor(Color.green)
//                        .frame(width: 50)
//                        .overlay(
//                            Text("\(value)").foregroundColor(.white)
//                        )
//                }
//            }.padding(.all, 10)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
